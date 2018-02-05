int red = 0; 
int blue = 0;
int green = 0;
int rainbow = 0;
int eraser = 0; 


void setup() {
size(900,600);
background(0);
}


void draw() {
  
  if (rainbow == 1){
  specialRainbowDraw();
 ClearBTN();
 specialRainbowDrawBTN();
 eraserBTN();
 blueBTN();
 greenBTN();
 redBTN();
 }
 
 if(red == 1){
 redMODE();
  ClearBTN();
 specialRainbowDrawBTN();
 eraserBTN();
 blueBTN();
 greenBTN();
 redBTN();
}

 if(blue == 1){
   blueMODE();
    ClearBTN();
 specialRainbowDrawBTN();
 eraserBTN();
 blueBTN();
 greenBTN();
 redBTN();
 }
 
 if(green == 1){
   greenMODE();
    ClearBTN();
 specialRainbowDrawBTN();
 eraserBTN();
 blueBTN();
 greenBTN();
 redBTN();
 }
 
 if(eraser == 1){
 eraserMODE(); 
  ClearBTN();
 specialRainbowDrawBTN();
 eraserBTN();
 blueBTN();
 greenBTN();
 redBTN();
 }
 
 else{
  ClearBTN();
 specialRainbowDrawBTN();
 eraserBTN();
 blueBTN();
 greenBTN();
 redBTN();
 }
}

// Button unlocks the special rainbow draw mode! 
void specialRainbowDrawBTN(){
  fill(255,25,255);
  stroke(255,255,255); 
  rectMode(CORNERS);
  rect(825,175,875,225,7);
  specialRainbowDrawBTNdecor();
  if(mousePressed){
    if((mouseX > 825 && mouseX < 875) && (mouseY > 175 && mouseY < 225)){
          // changes the background of the button pressed to black for a pressed efect 
     //   buttonPressed = true; 
        fill(0);
        rectMode(CORNERS);
        rect(825,175,875,225,7);
        rainbow = 1;
        red = 0;
        blue = 0;
        green = 0;
        eraser = 0; 
        }
      }
    }
  


void specialRainbowDrawBTNdecor(){
  stroke(0); 
  fill(255,0,0,(255));
  ellipse(850,175,(15),(15));
  fill(200,100,0,(255));
  ellipse(850,175+10,(15),(15));
  fill(200,200,0,(255));
  ellipse(850,175+20,(15),(15));
  fill(0,200,0,(255));
  ellipse(850,175+30,(15),(15));
  fill(0,0,200,(255));
  ellipse(850,175+40,(15),(15));
  fill(100,0,100,(255));
  ellipse(850,175+50,(15),(15));
}


void specialRainbowDraw(){
stroke(0); 
 // top Left 
if (mousePressed){
  // this is so that 
  //top left is all ellipses
  if ((mouseX > 0 && mouseX < 800) && (mouseY > 0 && mouseY < 600) ) { 
  // here the colors make a rainbow!
  fill(255,0,0,random(255));
  ellipse(mouseX,mouseY,random(15),random(15));
  fill(200,100,0,random(255));
  ellipse(mouseX,mouseY+10,random(15),random(15));
  fill(200,200,0,random(255));
  ellipse(mouseX,mouseY+20,random(15),random(15));
  fill(0,200,0,random(255));
  ellipse(mouseX,mouseY+30,random(15),random(15));
  fill(0,0,200,random(255));
  ellipse(mouseX,mouseY+40,random(15),random(15));
  fill(100,0,100,random(255));
  ellipse(mouseX,mouseY+50,random(15),random(15));
  }
}
}
  
  
void blueBTN(){
  fill(20,20,255);
  stroke(255,255,255); 
  rectMode(CORNERS);
  rect(825,250,875,300,7);
  blueBTNdecor();
  if(mousePressed){
    if((mouseX > 825 && mouseX < 875) && (mouseY > 250 && mouseY < 300)){
      //  buttonPressed = true; 
        fill(0);
        rectMode(CORNERS);
        rect(825,250,875,300,7);
        rainbow = 0;
        red = 0;
        blue = 1;
        green = 0;
        eraser = 0; 
      }
    }
}
  
 void blueBTNdecor(){
  rectMode(CENTER); 
  stroke(0); 
  fill(25,25,255);
  rect(850,250,(10),(10));
  fill(25,25,200,(255));
  rect(850,250+10,(10),(10));
  fill(25,25,150,(255));
  rect(850,250+20,(10),(10));
  fill(25,25,100,(255));
  rect(850,250+30,(10),(10));
  fill(25,25,50,(255));
  rect(850,250+40,(10),(10));
  fill(25,25,25,(255));
  rect(850,250+50,(10),(10));
}


void blueMODE(){
  rectMode(CENTER);
  if (mousePressed){
  //Top Right is rectangles 
  if ((mouseX > 0 && mouseX < 800) && (mouseY > 0 && mouseY < 600) ){ 
 // here the colors are blue and fade to grey
  fill(25,25,255,random(255));
  rect(mouseX,mouseY,random(10),random(10));
  fill(25,25,200,random(255));
  rect(mouseX,mouseY+10,random(10),random(10));
  fill(25,25,150,random(255));
  rect(mouseX,mouseY+20,random(10),random(10));
  fill(25,25,100,random(255));
  rect(mouseX,mouseY+30,random(10),random(10));
  fill(25,25,50,random(255));
  rect(mouseX,mouseY+40,random(10),random(10));
  fill(25,25,25,random(255));
  rect(mouseX,mouseY+50,random(10),random(10));
  }
}
}


void greenBTN(){
  fill(20,255,20);
  stroke(255,255,255); 
  rectMode(CORNERS);
  rect(825,325,875,375,7);
  greenBTNdecor();
  if(mousePressed){
    if((mouseX > 825 && mouseX < 875) && (mouseY > 325 && mouseY < 375)){
     //   buttonPressed = true; 
        fill(0);
        rectMode(CORNERS);
        rect(825,325,875,375,7);
        rainbow = 0;
        red = 0;
        blue = 0;
        green = 1;
        eraser = 0; 
      }
    }
}

void greenBTNdecor(){
  stroke(0); 
  rectMode(CENTER);
  fill(25,255,25,(255));
  rect(850,325,(20),(20));
  fill(25,200,25,(255));
  rect(850,325+10,(20),(20));
  fill(25,150,25,(255));
  rect(850,325+20,(20),(20));
  fill(25,100,25,(255));
  rect(850,325+30,(20),(20));
  fill(25,50,25,(255));
  rect(850,325+40,(20),(20));
  fill(25,25,25,(255));
  rect(850,325+50,(20),(20));
}


void greenMODE(){
  rectMode(CENTER);
  if (mousePressed){
  //bottom left is larger rectangles 
  if ((mouseX > 0 && mouseX < 800) && (mouseY > 0 && mouseY < 600) ){ 
  // here the colors are green and fade to grey 
  fill(25,255,25,random(255));
  rect(mouseX,mouseY,random(20),random(20));
  fill(25,200,25,random(255));
  rect(mouseX,mouseY+10,random(20),random(20));
  fill(25,150,25,random(255));
  rect(mouseX,mouseY+20,random(20),random(20));
  fill(25,100,25,random(255));
  rect(mouseX,mouseY+30,random(20),random(20));
  fill(25,50,25,random(255));
  rect(mouseX,mouseY+40,random(20),random(20));
  fill(25,25,25,random(255));
  rect(mouseX,mouseY+50,random(20),random(20));
  }
  }
}
  
void redBTN(){
  fill(255,20,20);
  stroke(255,255,255); 
  rectMode(CORNERS);
  rect(825,400,875,450,7);
  redBTNdecor();
  if(mousePressed){
    if((mouseX > 825 && mouseX < 875) && (mouseY > 400 && mouseY < 450)){
       // buttonPressed = true; 
        fill(0);
        rectMode(CORNERS);
        rect(825,400,875,450,7);
        rainbow = 0;
        red = 1;
        blue = 0;
        green = 0;
        eraser = 0; 
      }
    }
}

void redBTNdecor(){ 
  stroke(0); 
  fill(255,25,25,(255));
  ellipse(850,400,(10),(10));
  fill(200,25,25,(255));
  ellipse(850,400+10,(10),(10));
  fill(150,25,25,(255));
  ellipse(850,400+20,(10),(10));
  fill(100,25,25,(255));
  ellipse(850,400+30,(10),(10));
  fill(50,25,25,(255));
  ellipse(850,400+40,(10),(10));
  fill(25,25,25,(255));
  ellipse(850,400+50,(10),(10));

}
  
void redMODE(){
  if (mousePressed){
  //bottom right is smaller ellipses 
  if ((mouseX > 0 && mouseX < 800) && (mouseY > 0 && mouseY < 600) ){ 
  // here the colors are red and fade to grey
  fill(255,25,25,random(255));
  ellipse(mouseX,mouseY,random(10),random(10));
  fill(200,25,25,random(255));
  ellipse(mouseX,mouseY+10,random(10),random(10));
  fill(150,25,25,random(255));
  ellipse(mouseX,mouseY+20,random(10),random(10));
  fill(100,25,25,random(255));
  ellipse(mouseX,mouseY+30,random(10),random(10));
  fill(50,25,25,random(255));
  ellipse(mouseX,mouseY+40,random(10),random(10));
  fill(25,25,25,random(255));
  ellipse(mouseX,mouseY+50,random(10),random(10));
  }
}
}


// clears the screen when any key is pressed 
/*void keyPressed() {
   background(0);  
}

*/
// button clears the screen 
void ClearBTN() {
  rectMode(CORNERS);
  stroke(255,255,255,255); 
  fill(30,30,250);
  rect(825,25,875,75,7);
  if(mousePressed){
    if((mouseX > 825 && mouseX < 875) && (mouseY > 25 && mouseY < 75)) {
  //  buttonPressed = true; 
    rectMode(CORNERS);
    fill(0); 
    rect(825,25,875,75,7);
    stroke(0); 
    rect(0,0,810,600);
    // the rectangle is 810 by 600 to cover for the size of the ellipses
  }
  }
}


void eraserBTN(){
  fill(255,255,255);
  stroke(255,255,255); 
  rectMode(CORNERS);
  rect(825,100,875,150,7);
  eraserdecor();
  if(mousePressed){
    if((mouseX > 825 && mouseX < 875) && (mouseY > 100 && mouseY < 150)){
     // buttonPressed = true; 
      fill(0);
      rect(825,100,875,150,7);
       rainbow = 0;
        red = 0;
        blue = 0;
        green = 0;
        eraser = 1; 
      }
    }
  }

void eraserdecor(){
  fill(0);
  stroke(0);
  ellipse(850,100,10,10);
  ellipse(850,110,10,10);
  ellipse(850,120,10,10);
  ellipse(850,130,10,10);
  ellipse(850,140,10,10);
  
}


void eraserMODE(){
if (mousePressed){
  //
  if ((mouseX > 0 && mouseX < 800) && (mouseY > 0 && mouseY < 600) ) { 
  // keeps the erasing on the drawing pad 
  fill(0);
  stroke(0);
  ellipse(mouseX, mouseY, 10, 10);
}
}
}
// Button turns the Fade on and off 

void fade(){
  //transparent background that fades 
stroke(0,0,0,5);
fill(0,0,0,2);
rect(0,0,800,600);
}