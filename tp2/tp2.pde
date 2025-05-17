//  Manghi Mia
//  Comisión 3 - David Bedoian

PImage foto1;
PImage foto2;
PImage foto3;
float posY = 480;
float posYtexto2 = 480;
int posX;
PFont miFuente;
float opacidad1;
int contadorInicio =0;
float opacidad2;
String estado = "pantalla1";
float tamTexto = 10;
float opacidadTexto3 = 0;


void setup() {
  size(640, 480);
  foto1 = loadImage("tokio1.jpg");
  foto2 = loadImage("tokio2.jpg");
  foto3 = loadImage("tokio3.jpg");
  posY = 400;
  posYtexto2 = 480;
  posX = 320;
  miFuente = loadFont("BookAntiqua-Bold-48.vlw");
  textFont(miFuente);
}

void draw() {
if (estado == "pantalla1") {
  if (frameCount - contadorInicio <= 22 * 11) {
    image(foto1, 0, 0, 640, 480);

      // Título foto1
   opacidad1 = map(posY, 200, 150, 280, 0);
   fill(0, 0, 0, opacidad1);
   textSize(30);
   text("El Mori Building Digital Art\nes el primer museo de arte digital del\nmundo, y se encuentra en Tokio, Japón.", 60, posY);
   
   if (posY > 100) {
     posY -= 1;
   }
   

} else {
estado = "pantalla2";
posY = 100;
}
}

else if (estado == "pantalla2") {
  if (frameCount <= 30 * 15) {
  image(foto2, 0, 0, 640, 480);
  noStroke();
  fill(5,100,170);
  rect(35,140, 580, 220);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(tamTexto);
  text("El proyecto fue diseñado y creado por\nTeamLab, un grupo creativo internacional formado por\nvarios especialistas incluidos artistas, programadores,\ningenieros, animadores, matemáticos y arquitectos.", width / 2, height / 2);

if (tamTexto < 22) {
tamTexto += 0.4;
}
} else {
  estado = "pantalla3";
    }
  }
else if (estado == "pantalla3") {
  image(foto3, 0, 0, 640, 480);

  if (opacidadTexto3 < 255) {
    opacidadTexto3 += 3;
  }
  
  fill(255, opacidadTexto3);
  textSize(28);
  textAlign(CENTER, CENTER);
  text("Se encuentra en un espacio de 10 000 metros\ncuadrados que nos permite descubrir cinco\nmundos diferentes. En su interior encontramos\nunas 60 obras de arte digital.", width/2, height/2);
  
    fill(5,100,170, opacidadTexto3);
rect(250, 400, 140, 40);
fill(0, opacidadTexto3);
textSize(20);
textAlign(CENTER, CENTER);
text("Reiniciar", 320, 420);
}

}
void mousePressed() {
 //if (estado == "pantalla3") {
if (mouseX > 250 && mouseX < 390 && mouseY > 400 && mouseY < 440){
   if (estado == "pantalla3") {
     contadorInicio= frameCount;
 estado = "pantalla1";
 posY = 400;
 posYtexto2 = 480;
 opacidad1 = 255;
opacidad2 = 255;
 tamTexto = 10;
 opacidadTexto3 = 0;
}
}
  }
