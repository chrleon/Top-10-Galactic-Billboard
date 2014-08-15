
void drawStars() {
  background(240,100,10);
  color textColor = color(65, 17, 100);
  int starTouchArea = 10;
  
  fill(textColor);
  textFont(openSansLight24);
  textAlign(CENTER);
  text("Top 10 Galactic Billboard",width/2, height - height/9);
  
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
    float redshift = map(distance,0,50,0,60);
    println(redshift);
    //println(i + ": " + starsx[i] + " " + starsy[i]);
    fill(65, 17, 100, 0.05);
    
    ellipse(starx, stary,25*magnitude,25*magnitude);
    textAlign(LEFT);
    
    fill(60-redshift, 17+redshift*1.5, 100+hue);
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

        if ( // distance lower than 47 lightyears, play another tune
            distance > (50-5) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.play(); 
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Address on the Space Effort/JFK, 1962"; 
        }

  
          if ( // distance lower than 47 lightyears, play another tune
            distance < (50-5) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1964.play();
              
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to I Get Around/BeachBoys, 1964"; 
        }

        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-10) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1968.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Hey Jude/Beatles, 1968"; 
        }

        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-15) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1972.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Killing Me Softly/Roberta Flach, 1972"; 
        }

        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-20) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1978.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Stayin Alive/Bee Gees, 1978"; 
        }


        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-25) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1982.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Thriller/Michael Jackson, 1982"; 
        }
          
        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-30) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1987.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Walk Like an Egyptian/Bangles, 1987"; 
        }
          
        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-35) ) {
              p1964.stop(); 
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p1992.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to I Will Always Love You/Whitney Houston, 1992"; 
        }
          
        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-40) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to Candle in the Wind/Elton John, 1997"; 
              p1997.play();
        }

        if ( // distance lower than 47 lightyears, play another tune
            distance < (50-45) ) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p2003.play();
              message = name + " ( Distance from the Sun: " + distance + " lightyears)";
              hit = "Now listening to In Da Club/50 Cent, 2003"; 
        }

        if ( // distance lower than 47 lightyears, play another tune
            distance < 50-48)  {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p2008.play();
               message = name + " ( Distance from the Sun: " + distance + " lightyears)"; 
               hit = "Now listening to Low/Flo Rida, 2008"; 
       }
        if ( // distance lower than 47 lightyears, play another tune
            distance < 50-48) {
              p1964.stop();
              p1968.stop();
              p1972.stop();
              p1978.stop();
              p1982.stop();
              p1987.stop();
              p1992.stop();
              p1997.stop();
              p2003.stop();
              p2008.stop();
              p2012.stop();
              pMoon.stop();
              p2012.play();
               message = name + " ( Distance from the Sun: " + distance + " lightyears)"; 
               hit = "Now listening to Somebody I Used to Know(Gotye-Kimbra, 2012"; 
       }

          
          fill(textColor);
          //text(name + " (" + dist + ")", starx + 30, stary);
          textFont(openSansLight24);
          textAlign(CENTER);
          text(message, width/2, height/3);

          textFont(openSansLight14);
          textAlign(CENTER);
          text(hit, width/2, height/3+35);

          //text(name + " ( Distance from the Sun: " + distance + " lightyears)", width/2, height/3);
              fill(textColor,0.3);
              ellipse(starx, stary, 25, 25);      
          
    }
  }
}
