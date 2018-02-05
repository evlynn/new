
// these are the tabs. They are only used switching screens, nothing else will be done to the different screens 
// so a function makes more sense to use than a class in this case. 

boolean start;
boolean game;
int f = 0;
int g = 0; 
int j = 0;
int m = 1; 
PImage titlePulsar; 
PImage blender;
PImage fidgit; 
PImage fan;
PImage sonic; 
PImage map; 
PImage ppPulsar; 
PImage pNot;
PImage guy;
int question = 1; 
int nope = 0; 
int score = 0; 


void setup() {

  pixelDensity(2);
  size(1024,768);
  rectMode(CENTER);
  //I noticed this slight gradient while my friend was writing his essay on microsoft word 
  // I like the way that it looks so i decided to implement it in my project
  
  titlePulsar = loadImage("titlePulsar.jpg");
  titlePulsar.resize(0,450);
  blender = loadImage("blender.png"); 
  blender.resize(0,250); 
  fidgit = loadImage("fidgit.png");
  fidgit.resize(0,150);
  fan = loadImage("fan.png");
  fan.resize(0,150);
  sonic = loadImage("sonic.png");
  sonic.resize(0,150);
  map = loadImage("map.jpg");
  map.resize(0,500);
  ppPulsar = loadImage("ppPulsar.png");
  ppPulsar.resize(0,300);
  pNot = loadImage("pNot.png"); 
  pNot.resize(0,300);
  guy = loadImage("guy.jpg"); 
  guy.resize(0,50);
  
  for (int i = 0; i < 21; i++) {
    fill(100-(3*i));
    stroke(100-(3*i));
    rect(width/2, (height/20)*i, width, height/20);
  }
  stroke(0);
  fill(110, 150, 250);
  textSize(50);
  text("Pulsar Pluck", 150, 150); 
  textSize(15);
  text("Welcome to a pulsar mission. First you need to complete some training.", 150, 200);
  text("Next you will be able to hover around to find pulsars", 150, 220);
  text("Click start to review some skills", 150, 240);
  text("Click game once you have recieve the unlocked message", 150, 280);
  imageMode(CENTER); 
  image(titlePulsar,700,520); 

}

void draw() {

  //the buttons  
  rectMode(CENTER);
  stroke(0);

  // these if statements must go on the top so that the colors are loading after the background does when the program loops around
  if (start == true) {
    startScreen();
  } else if (game == true) {
    gameScreen();
  }

  // I used nested if statements to make hover highlighting of the tabs possible 
  if (mouseX > 700 && mouseX < 790 && mouseY > 0 && mouseY < 20) {
    fill(100);
    rect(750, 5, 100, 30, 7);
    fill(200, 200, 210);
    rect(850, 5, 100, 30, 7); 
    if (mousePressed == true) {
      f = 0; 
      start = true;
      game = false;
    }
  } else if (mouseX > 800 && mouseX < 890 && mouseY > 0 && mouseY < 20) {
    fill(100);    
    rect(850, 5, 100, 30, 7);
    fill(200, 200, 210);
    rect(750, 5, 100, 30, 7);  
    if (mousePressed == true) {
      f = 0;
      start = false;
      game = true;
    }
  } else {
    fill(200, 200, 210);
    rect(750, 5, 100, 30, 7);   
    rect(850, 5, 100, 30, 7);       
  }

  //the text must always stay below the rects 
  textSize(15);
  fill(0);
  text("Start", 750 - 40, 15);
  text("Game", 850 - 40, 15);

}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

int wrong(int nope){
  fill(250, 10, 20);
  textSize(20);
  if(nope == 0){
    text("Nope", mouseX,mouseY);
        nope = 1; 
      }
      else if(nope == 1){
        text("N000000!", mouseX,mouseY);
        nope = 2;
      }
      else if(nope == 2){
        text("Try agian", mouseX,mouseY);
        nope = 3;
      }
      else if(nope == 3){
        text("Are you serious!", mouseX,mouseY);
        nope = 4;
      }
      else if(nope == 4){
        text("Still No", mouseX,mouseY);
        nope = 0;
      }
      mousePressed = false; 
      return nope; 
    }


void startScreen() { 
  // f is for background redrawing 
  if (f == 0) {
    f = 1;
    g = 0; 
    for (int i = 0; i < 21; i++) {
      fill(100-(3*i));
      stroke(100-(3*i));
      rect(width/2, (height/20)*i, width, height/20);
    }
    //rects for the tab colors 
    fill(100, 130, 250);
    rect(750, 5, 100, 30, 7);
    fill(200, 200, 210);
    rect(850, 5, 100, 30, 7);
  }
  
  ///after startup
  if (mousePressed == true){
    print("     X = ");
    print(mouseX);
    print("     Y = ");
    print(mouseY);
  }
  
  if(question == 1){
    if (g == 0) {
      g = 1;
      fill(110, 150, 250);
      textSize(30);
      text("Welcome to your training! Use the mouse to click objests.", 100,100); 
      textSize(20);
      text("First Question, How fast does a neutron star spin?", 100,140);
      image(blender, 280, 300); 
      image(fidgit, 280, 550); 
      image(fan, 550, 300);
      image(sonic, 550, 500);
    } 
    if (mouseX > 200 && mouseX < 400 && mouseY > 250 && mouseY < 400){
      if (mousePressed == true){
        question = 2;
        f = 0; 
        g = 0;
      }
    }
    else if(mousePressed == true){
      nope = wrong(nope); 
    }
  }

  else if(question == 2) {
    if (g == 0){
      g = 1; 
      fill(110, 150, 250);
      textSize(30);
      text("Nice Job!", 100,100); 
      textSize(20);
      text("Second Question, Which category is the pulsar in?", 100,140);
      image(map,500,450); 
    }
    if (mouseX > 850 && mouseX < 970 && mouseY > 450 && mouseY < 550 && mousePressed == true){
      question = 3;
      f = 0; 
      g = 0;
    }
    else if(mousePressed == true){
      nope = wrong(nope); 
    }
  }
  
  else if(question == 3) {
    if (g == 0){
      g = 1; 
      fill(110, 150, 250); 
      textSize(30);
      text("Alright!", 100,100); 
      textSize(20);
      text("Question 3, Which pulse profile represents a pulsar?", 100,140);
      image(ppPulsar,600,500);
      image(pNot, 200, 500); 
    }
     if (mouseX > 424 && mouseX < 780 && mouseY > 350 && mouseY < 647 && mousePressed == true){
      question = 4;
      f = 0; 
      g = 0;
    }
    else if(mousePressed == true){
      nope = wrong(nope); 
    }
    }

  
  
  
  else{
    fill(0); 
    textSize(30);
    text("Congrats", 100,100); 
    textSize(20);
    text("You have finished the training!", 100,140);
  }
}
  
void gameScreen() { 
  // f is for background redrawing   

    //rects for the tab colors 
    fill(100, 130, 250);
    rect(750, 5, 100, 30, 7);
    fill(200, 200, 210);
    rect(850, 5, 100, 30, 7);
  
      titlePulsar.resize(0,50);
      blender.resize(0,50); 
      fidgit.resize(0,50);
      fan.resize(0,50);
      sonic.resize(0,50);
      map.resize(0,50);
      ppPulsar.resize(0,30);
      pNot.resize(0,30);
   if (question == 4){
      if (f == 0){
        f = 1;
         for (int j = 0; j < 21; j++) {
         fill(100-(3*j));
         stroke(100-(3*j));
         rect(width/2, (height/20)*j, width, height/20);
        }
      }
      fill(110, 150, 250);
      textSize(30);
      text("Game Time", 100,100); 
      textSize(20);
      text("Collect the right images from the training", 100,140);
      f = 0; 
      j+=1;
      text("SCORE = ",300, 300); 
      rect(500, 300, score, 70); 
     image(guy, mouseX, 740);
     image(blender, 200*m, 3*j);
     image(fan,400 * m, 4*j);
     print(" J = "); 
     print(j); 
     print (" score = ");
     print(score); 
     if (mouseX > 150 * m && mouseX < 250 * m && 3 * j >= 760 ){
       score += 100;
       j = 0; 
       m += 1; 
       if (m > 5){
         m = 1; 
       }
     }
     if ( score == 1000){
       for (int j = 0; j < 21; j++) {
         fill(100-(3*j));
         stroke(100-(3*j));
         rect(width/2, (height/20)*j, width, height/20);
       }
       textSize(50); 
       text ("Congrats You Win!!", 300, 400); 
     }
   }
  else{
    fill(110, 150, 250);
    textSize(30);
    text("You need to finish the training first.", 100,100); 
    textSize(20);
    String questionText = str(question); 
    text("You are only on question", 100,140);
    text(questionText,355,140);
  }
  
} 
  


  
 

/*class Toggle {
  float xpos;
  float ypos;
  float xslide = xpos + 150;
  //  string type = "Default"; 

  Toggle(float xpos_, float ypos_) {
    xpos = xpos_;
    ypos = ypos_;
  }
*/
/*  void start() {
    fill(0);
    stroke(0);
    rect(xpos, ypos, 250, 5);
    //left rect
    rect(xpos - 125, ypos, 5, 30);
    //right rect
    rect(xpos + 125, ypos, 5, 30);
    // the slider rect
    fill(200, 30, 30);
    stroke(255, 30, 30);
    rect(xslide, ypos, 30, 30);
  } 
*/

/*
class Button {
  int xpos;
  int ypos;
  int imagex = 0;
  boolean active = false; 
  Button(int xpos_, int ypos_, int imagex_) {
    xpos = xpos_;
    yos = ypos_;
    imagex = imagex_;
  }
*/