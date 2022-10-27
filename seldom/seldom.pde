import wblut.core.*;
import wblut.geom.*;
import wblut.hemesh.*;
import wblut.math.*;
import wblut.nurbs.*;
import wblut.processing.*;

import controlP5.*;

import java.util.Locale;
import com.thomasdiewald.pixelflow.java.DwPixelFlow;
import com.thomasdiewald.pixelflow.java.antialiasing.FXAA.FXAA;
import com.thomasdiewald.pixelflow.java.antialiasing.GBAA.GBAA;
import com.thomasdiewald.pixelflow.java.antialiasing.SMAA.SMAA;
import com.thomasdiewald.pixelflow.java.geometry.DwCube;
import com.thomasdiewald.pixelflow.java.geometry.DwMeshUtils;
import com.thomasdiewald.pixelflow.java.imageprocessing.filter.DwFilter;
import com.thomasdiewald.pixelflow.java.render.skylight.DwSceneDisplay;
import com.thomasdiewald.pixelflow.java.utils.DwMagnifier;
import com.thomasdiewald.pixelflow.java.utils.DwUtils;

import peasy.*;
import queasycam.*;
import java.awt.AWTException;
import java.awt.*;
import java.awt.event.*;
import java.lang.Object;
import java.awt.GraphicsDevice;
import java.util.Locale;
import processing.core.PApplet;
import processing.core.PConstants;
import processing.core.PFont;
import processing.core.PShape;
import processing.opengl.PGraphics3D;

// canvas stuff
boolean START_FULLSCREEN = true;

int viewport_w = 1280;
int viewport_h = 720;
int viewport_x = 230;
int viewport_y = 0;

// library context
DwPixelFlow context;

// AntiAliasing
FXAA fxaa;
SMAA smaa;
GBAA gbaa;

// AntiAliasing render targets
PGraphics3D pg_render_noaa;
PGraphics3D pg_render_msaa;
PGraphics3D pg_render_smaa;
PGraphics3D pg_render_fxaa;
PGraphics3D pg_render_gbaa;

// toggling active AntiAliasing Mode
AA_MODE aa_mode = AA_MODE.NoAA;
SMAA_MODE smaa_mode = SMAA_MODE.FINAL;

// AA mode, selected with keys '1' - '4'
enum AA_MODE{  NoAA, MSAA, SMAA, FXAA, GBAA }
  
// SMAA mode, selected with keys 'q', 'w', 'e'
enum SMAA_MODE{ EGDES, BLEND, FINAL }

// canvas things
float gamma = 2.2f;
float BACKGROUND_COLOR = 32;

private boolean stageStart;
defoText defo;
lobby l;
gallery galleryOne;
gallery galleryTwo;
gallery galleryThree;
gallery galleryFour;
gallery galleryFive;
gallery gallerySix;
PeasyCam cam;
QueasyCam qCam;
HUD hud;
heightMapObject t0;
TriaFlow polyThree;
TriaFlow polyFour;
TriaFlow polyFive;
TriaFlow polySix;
TriaFlow polySeven;
SpiralLOW spiral;
WH wormHole;
boolean keyHeld;
PFont robotoThin;
float viewX = 0;
float viewY = 0;
float viewZ = 0;
boolean created;



public void settings() {
  if(START_FULLSCREEN){
    viewport_w = displayWidth;
    viewport_h = displayHeight;
    viewport_x = 0;
    viewport_y = 0;
    fullScreen(P3D);
  } else {
    size(viewport_w, viewport_h, P3D);
  }
  smooth(0);
}




void setup() {
  
  // camera
  cam = new PeasyCam(this, viewX, viewY, viewZ, 100);
  cam.setActive(false);
  
  // fade on startup (re-enable when hud is stable)
  //stageStart = true;
  
  // declaring objects (those disabled are not yet implemented and/or unstable)
  l = new lobby();
  hud = new HUD();
  galleryOne = new gallery(1);
  galleryTwo = new gallery(2);
  galleryThree = new gallery(3);
  galleryFour = new gallery(4);
  galleryFive = new gallery(5);
  gallerySix = new gallery(6);
  t0 =  new heightMapObject();
  polyThree = new TriaFlow(3);
  polyFour = new TriaFlow(4);
  polyFive = new TriaFlow(5);
  polySix = new TriaFlow(6);
  //polySeven = new TriaFlow(7);
  spiral = new SpiralLOW();
  //wormHole = new WH(40);
  //robotoThin = createFont("Roboto-Thin.ttf", 32);
  //defo = new defoText();
  qCam = new QueasyCam(this);
  qCam.position.x = viewX;
  qCam.position.y = viewY;
  qCam.position.z = viewZ;
  qCam.pan-= PI / 2;
  qCam.sensitivity = 0.5;
  //qCam.speed = 0;  //enable for release build?
  perspective(PI/3, (float)width / height, 0.01f, 3000f); //last variable is view distance (increase if things get out of frame)
  //hint(DISABLE_OPENGL_ERRORS);  //enable for release build
  //hint(ENABLE_STROKE_PERSPECTIVE);
  
  // library context
  context = new DwPixelFlow(this);
  context.print();
  context.printGL();
  
  // callback for scene display (GBAA)
  DwSceneDisplay scene_display = new DwSceneDisplay() {
    @Override
    public void display(PGraphics3D canvas) {
      displayScene(canvas);
    }
  };
  
  // AA post-processing modes
  fxaa = new FXAA(context);
  smaa = new SMAA(context);
  gbaa = new GBAA(context, scene_display);
  
  frameRate(1000);
}

// dynamically resize render-targets
  public boolean resizeScreen(){

    boolean[] RESIZED = {false};
    
    pg_render_noaa = DwUtils.changeTextureSize(this, pg_render_noaa, width, height, 0, RESIZED);
    pg_render_msaa = DwUtils.changeTextureSize(this, pg_render_msaa, width, height, 8, RESIZED);
    pg_render_fxaa = DwUtils.changeTextureSize(this, pg_render_fxaa, width, height, 0, RESIZED);
    pg_render_smaa = DwUtils.changeTextureSize(this, pg_render_smaa, width, height, 0, RESIZED);
    pg_render_gbaa = DwUtils.changeTextureSize(this, pg_render_gbaa, width, height, 0, RESIZED);
    
    if(RESIZED[0]){
      // nothing here
    }
    //cam.feed();
    perspective(60 * DEG_TO_RAD, width/(float)height, 2, 6000);

    return RESIZED[0];
  }




void draw() {
  
  resizeScreen();
  
  if (aa_mode == AA_MODE.MSAA){
    displaySceneWrap(pg_render_msaa);
    // RGB gamma correction
    DwFilter.get(context).gamma.apply(pg_render_msaa, pg_render_msaa, gamma);
  }
  
  if (aa_mode == AA_MODE.NoAA || aa_mode == AA_MODE.SMAA || aa_mode == AA_MODE.FXAA){
    displaySceneWrap(pg_render_noaa);
    // RGB gamma correction
    DwFilter.get(context).gamma.apply(pg_render_noaa, pg_render_noaa, gamma);
  }
  
  if (aa_mode == AA_MODE.SMAA) smaa.apply(pg_render_noaa, pg_render_smaa);
  if (aa_mode == AA_MODE.FXAA) fxaa.apply(pg_render_noaa, pg_render_fxaa);
  
  // only for debugging
  if (aa_mode == AA_MODE.SMAA){
    if (smaa_mode == SMAA_MODE.EGDES) DwFilter.get(context).copy.apply(smaa.tex_edges, pg_render_smaa);
    if (smaa_mode == SMAA_MODE.BLEND) DwFilter.get(context).copy.apply(smaa.tex_blend, pg_render_smaa);
  }
  
  if (aa_mode == AA_MODE.GBAA){
    displaySceneWrap(pg_render_noaa);
    // RGB gamma correction
    DwFilter.get(context).gamma.apply(pg_render_noaa, pg_render_noaa, gamma);
    gbaa.apply(pg_render_noaa, pg_render_gbaa);
  }
  
  
  PGraphics3D display = pg_render_noaa;
  
  switch (aa_mode){
    case NoAA: display = pg_render_noaa; break;
    case MSAA: display = pg_render_msaa; break;
    case SMAA: display = pg_render_smaa; break;
    case FXAA: display = pg_render_fxaa; break;
    case GBAA: display = pg_render_gbaa; break;
  }
  
  DwUtils.beginScreen2D(g);
  {
    // display Anti Aliased result
    blendMode(REPLACE);
    clear();
    image(display, 0, 0);
    blendMode(BLEND);
  }
  DwUtils.endScreen2D(g);

  //println(millis() + "\t" + hud.fadeStart + "\t" + hud.fadeIntensity);
  String txt_fps = String.format(getClass().getName()+ " [fps %6.2f]", frameRate);
  surface.setTitle(txt_fps);
}

public void displaySceneWrap(PGraphics3D canvas){
  canvas.beginDraw();
  DwUtils.copyMatrices((PGraphics3D) this.g, canvas);
  float BACKGROUND_COLOR_GAMMA = (float) (Math.pow(BACKGROUND_COLOR/255.0, gamma) * 255.0);

  // background
  canvas.blendMode(PConstants.BLEND);
  canvas.background(BACKGROUND_COLOR_GAMMA);
  displayScene(canvas);
  canvas.endDraw();
}
  
 
  
// render something
public void displayScene(PGraphics3D canvas){
  canvas.directionalLight(255, 255, 255, 2000,6000,4000);
  canvas.directionalLight(255, 255, 255, -2000,-6000,-4000);
  canvas.ambientLight(64, 64, 64);
  
  noCursor();
  //baseLighting();
  
  l.wallsCreate(canvas);
  l.buttonsCreate(canvas);
  pushMatrix();
  l.display();
  popMatrix();
  coordCompass();
  GDisplay();
  //pushMatrix();
  //translate(-1000, 100, -1600);
  //t0.display();
  //popMatrix();
  hud.display();
}

public void keyReleased(){
  if(key == '1') aa_mode = AA_MODE.NoAA;
  if(key == '2') aa_mode = AA_MODE.MSAA;
  if(key == '3') aa_mode = AA_MODE.SMAA;
  if(key == '4') aa_mode = AA_MODE.FXAA;
  if(key == '5') aa_mode = AA_MODE.GBAA;
  
  if(key == '6') smaa_mode = SMAA_MODE.EGDES;
  if(key == '7') smaa_mode = SMAA_MODE.BLEND;
  if(key == '8') smaa_mode = SMAA_MODE.FINAL;
  }
  
