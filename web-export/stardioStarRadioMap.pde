Table table;
PFont openSansLight24;
PFont openSansLight8;
Maxim maxim;

AudioPlayer pMoon;
AudioPlayer pThirdKind;
AudioPlayer pNoise;

boolean moon = false;
boolean thirdKind = false;

void setup(){
// set size
size(1024, 768, P2D);
colorMode(HSB,360,100,100,1.0);
background(240,100,10);
noStroke();

maxim = new Maxim(this);


pMoon = maxim.loadFile("moon.wav");
pThirdKind = maxim.loadFile("thirdkind.wav");
pNoise = maxim.loadFile("");
// fonts
fill(0,0,100);
openSansLight24 = loadFont("OpenSans-Light-24.vlw");
openSansLight8 = loadFont("OpenSans-Light-8.vlw");


// data
table = loadTable("starsWithin50LightYears.csv","header");



}
  
void draw(){
  drawStars();
  if (moon) {
    pMoon.play();
    pThirdKind.stop();
    pNoise.stop();
  }
  
  if(thirdKind) {
    pMoon.stop();
    pThirdKind.play();
    pNoise.stop();    
  }


}  

  




//void setup() {
//  size(400, 400, P2D);
//  colorMode(HSB, 360, 100, 100, 1);
//  noStroke();
//  background(215, 71, 25);
//  smooth(8);
//}


void drawStars() {
  background(240,100,10);
  color textColor = color(65, 17, 100);
  int starTouchArea = 10;
  
  fill(textColor);
  textFont(openSansLight24);
  textAlign(CENTER);
  text("Galactic Map",width/2, height - height/9);
  
// load the csv file with magnitude, size and position

// map the galactic coordinates to screen coords

// draw all the stars


  for (TableRow row : table.rows()){
    String name = row.getString("name"); 
    float distance = row.getFloat("distlightyears");
    float magnitude = map(row.getFloat("magnitude"),0.31, 7.07,.31,2.5);
    float starx = map(row.getFloat("x"),0,358.3,10,width-10);
    float stary = map(row.getFloat("y"),-73.4,85.4,10,width-10);
    
    int hue = (int) random(-80, 0);
    //println(i + ": " + starsx[i] + " " + starsy[i]);
    fill(65, 17, 100, 0.05);
    
    ellipse(starx, stary,25*magnitude,25*magnitude);
    textAlign(LEFT);
    
    fill(65+(hue), 17, 100+hue);
    //ellipse(starx, stary,10/magnitude,10/magnitude);
    ellipse(starx, stary,4*magnitude,4*magnitude);
    if(distance == 0) {
      textFont(openSansLight8);
      textAlign(CENTER);
      fill(65, 17, 100); // draw starname
      text(name,starx+30,stary);
    }
    
    if (mouseX > starx - starTouchArea && 
        mouseX < starx + starTouchArea &&
        mouseY >= stary - starTouchArea && 
        mouseY <= stary + starTouchArea) {
          if(distance > 47) {
            pMoon.play();
            pThirdKind.stop();
            
          } else if ( // distance lower than 47 lightyears, play another tune
            distance < 47 ) {
              pThirdKind.play();
              pMoon.stop();
            }

          
          fill(textColor);
          //text(name + " (" + dist + ")", starx + 30, stary);
          textFont(openSansLight24);
          textAlign(CENTER);
          text(name + " ( Distance from the Sun: " + distance + " lightyears)", width/2, height/3);
              fill(textColor,0.3);
              ellipse(starx, stary, 25, 25);      
          
    }
  }
}



