// federico eguren
// tp0 com1 
PImage paisaje; 
paisaje = loadImage ("paisaje.jpg"); 
size(800, 400);
background (229,124,37); 
image(paisaje,0,0,400,400);
strokeWeight (5);
line(520,320,520,170);
noStroke();
fill (100,90,81);
triangle(400,200,800,400,400,400);
fill(191,116,54);
noStroke();
circle(520,150,100);
