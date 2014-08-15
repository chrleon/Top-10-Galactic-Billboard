
int[] starsx = {200, 300, 100, 333, 222, 50, 33};
int[] starsy = {33, 50, 222, 333, 100, 300, 200};


void setup(){
  size(400, 400, P2D);
  colorMode(HSB, 360, 100, 100,1);
  noStroke();
  background(215, 71, 25);
  smooth(8);
}


void drawsuns(){
  for (int i = 0; i < starsx.length; i++) {
    int hue = (int) random(-50,0);
  println(i + ": " + starsx[i] + " " + starsy[i]);
  fill(65+(hue/2), 17, 100+hue);
  ellipse(starsx[i], starsy[i],4,4);
  
  //ellipse(mouseX, mouseY, 60, 60);
  
      
  }
  
  
}

void draw(){
  drawsuns();
}

