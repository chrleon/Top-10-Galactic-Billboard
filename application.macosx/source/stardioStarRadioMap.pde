Table table;
PFont openSansLight24;
PFont openSansLight14;
PFont openSansLight8;
Maxim maxim;

AudioPlayer pMoon;
AudioPlayer pThirdKind;
AudioPlayer p1964;
AudioPlayer p1968;
AudioPlayer p1972;
AudioPlayer p1978;
AudioPlayer p1982;
AudioPlayer p1987;
AudioPlayer p1992;
AudioPlayer p1997;
AudioPlayer p2003;
AudioPlayer p2008;
AudioPlayer p2012;

String message = "";
String hit = "";

boolean moon = false;
boolean thirdKind = false;

void setup(){
// set size
size(1024, 768);
colorMode(HSB,360,100,100,1.0);
background(240,100,10);
noStroke();

maxim = new Maxim(this);


pMoon = maxim.loadFile("moon.wav");
pThirdKind = maxim.loadFile("thirdkind.wav");
p1964 = maxim.loadFile("1964-beachboys.wav");
p1968 = maxim.loadFile("1968-beatles.wav");
p1972 = maxim.loadFile("1972-killing.wav");
p1978 = maxim.loadFile("1978-beegees.wav");
p1982 = maxim.loadFile("1982-thriller.wav");
p1987 = maxim.loadFile("1987-bangles.wav");
p1992 = maxim.loadFile("1992-whitney.wav");
p1997 = maxim.loadFile("1997-eltonjohn.wav");
p2003 = maxim.loadFile("2003-50-cent-in-da-club.wav");
p2008 = maxim.loadFile("2008-flo-rida-low.wav");
p2012 = maxim.loadFile("2012-gotye-kimbrya.wav");


// fonts
fill(0,0,100);
openSansLight24 = loadFont("OpenSans-Light-24.vlw");
openSansLight14 = loadFont("OpenSans-Light-14.vlw");
openSansLight8 = loadFont("OpenSans-Light-8.vlw");


// data
table = loadTable("starsWithin50LightYears.csv","header");



}
  
void draw(){
  drawStars();


}  

  


