// Federico Eguren 
// tp 1 comision 1 
int segundos; 
PImage bariloche1;
PImage bariloche2;
PImage bariloche3;
PFont letra;
int g=600;
int l =-100;
float ts=1;
void setup (){
size (640,480);
textAlign (CENTER);
letra=loadFont("letra.vlw");
bariloche1=loadImage ("descarga.jpg"); 
bariloche2=loadImage("bariloche2.jpg");
bariloche3=loadImage("bariloche3.jpg");
textSize (20); 
textFont (letra);

}
void draw (){
  background (0);
  println (segundos);
  if(frameCount%60==0){
    segundos++;
  }
  if(segundos<=8){
    image(bariloche1,0,0,width,height);
    text("Bariloche es una ciudad \n en la región de la Patagonia argentina. \n Limita con Nahuel Huapi, \n un gran lago glacial rodeado \n de montañas de los Andes", g, height/2);
    if (g> 100){
      g--;
    }
  }
  
else if (segundos > 8 && segundos <= 15){
    image (bariloche2, 0,0, width,height);
    fill (255); 
    text ("Bariloche es conocida por su arquitectura al estilo alpino de Suiza y su chocolate, \n que se vende en tiendas de la calle Mitre, \n la avenida principal.", l, height/2);
    if (l < 400){
      l ++;
    }
  
  } else {
  image (bariloche3,0,0, width, height);
  fill (255);
  textSize (ts);
  text ("El clima de Bariloche es de alta montaña,\n  con lluvias abundantes, temperaturas frescas y \n una escasa amplitud anual. \n Sin embargo en verano pueden alcanzarse los 33ºC y en \n invierno hasta -15ºC" , width/2,height/2);
  if (ts <= 20){
  ts = ts+0.1 ;
  }
  
  } 
  if (segundos >= 22) {
  fill (0);
  rectMode(CENTER);
  rect (320, 240, 200, 50);
  textSize (20);
  fill (255);
  text ("REINICIAR", 320, 240);  
} 
}
void mousePressed (){
  
  if (mouseX > 120 && mouseY < 320 + 200 && mouseY > 240 && mouseY < 240 + 50) {
    
    textSize (20);
    ts = 1;
    g = 600;
    l =-100;
    segundos= 0;
  } 
  
}
