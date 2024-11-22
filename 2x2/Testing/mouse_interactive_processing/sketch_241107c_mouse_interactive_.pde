PShape cube1;
PShape cube2;
PShape cube3;
PShape cube4;
PShape cube5;
PShape cube6;
PShape cube7;
PShape cube8;
PImage txtr;
float angle;
float posX = 0;
float posY = 0;

void setup(){
  size(1000,1000, P3D);
  cube1 = loadShape("alpha1.obj");
  cube2 = loadShape("alpha2.obj");
  cube3 = loadShape("alpha3.obj");
  cube4 = loadShape("alpha4.obj");
  cube5 = loadShape("beta1.obj");
  cube6 = loadShape("beta2.obj");
  cube7 = loadShape("beta3.obj");
  cube8 = loadShape("beta4.obj");

}

void draw(){
  background(255, 255, 255);
  scale(30);
    // Set up camera


  // Set up the camera view


  // Center all transformations around the middle of the screen
  translate(width / 55, height / 55);

  // Draw each cube with minimal translations
  
  // The pieces that do rotate in X axis 
  pushMatrix();
  rotateX(posY);         // Rotate cube1
  shape(cube1);
  popMatrix();

  pushMatrix();
  rotateX(posY);          // Rotate cube2
  shape(cube2);
  popMatrix();
   
   
  pushMatrix();
  rotateX(posY);        // Rotate cube5 
  shape(cube5);
  popMatrix();

  pushMatrix();
  rotateX(posY);        // Rotate cube6 
  shape(cube6);
  popMatrix();

  // The mini pieces that do not rotate along the X axis
  
  pushMatrix();
  shape(cube3);
  popMatrix();

  pushMatrix();
  shape(cube4);
  popMatrix();


   
  pushMatrix();
  shape(cube7);
  popMatrix();
  
  pushMatrix();
  shape(cube8);
  popMatrix();

}
void mouseDragged() {
  // Use a scaling factor to reduce sensitivity
  float sensitivity = 0.01; // You can change this factor to adjust sensitivity

  posX = (mouseX - width / 2) * sensitivity;
  posY = ( height / 2- mouseY)* sensitivity;
}
