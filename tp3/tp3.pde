// Mia Manghi
// David Bedoian - comision 3
// https://youtu.be/bPEhjnBhAxE


PImage miImagen;

int columnas = 16;
int filas = 16;
int tamañoCelda = 25;            
int inicioColumna = 3;
int inicioFila = 4;
int columnasZonaCentral = 10;
int filasZonaCentral = 8;

boolean usarColoresAleatorios = false;

void setup() {
  size(800, 400);
  miImagen = loadImage("OP ART.jpg");
  noLoop();
}

void draw() {
  background(255);

  image(miImagen, 0, 0, 400, 400);

  for (int fila = 0; fila < filas; fila++) {
    for (int columna = 0; columna < columnas; columna++) {
      int x = 400 + columna * tamañoCelda;
      int y = fila * tamañoCelda;

      color c = calcularColor(fila, columna);
      dibujarCelda(x, y, tamañoCelda, c);
    }
  }

  for (int fila = 0; fila < filasZonaCentral; fila++) {
    for (int columna = 0; columna < columnasZonaCentral; columna++) {
      int x = 400 + (inicioColumna + columna) * tamañoCelda;
      int y = (inicioFila + fila) * tamañoCelda;

      fill(0);
      rect(x, y, tamañoCelda, tamañoCelda);

      fill(255);
      rect(x + tamañoCelda / 3, y, tamañoCelda / 3, tamañoCelda);
    }
  }
}

void dibujarCelda(int x, int y, int tamaño, color c) {
  fill(c);
  rect(x, y, tamaño, tamaño);
}

color calcularColor(int fila, int columna) {
  if (usarColoresAleatorios) {
    return color(random(255), random(255), random(255));
  } else {
    if (fila % 2 == 0) {
      if (columna % 2 == 0) {
        return color(0);
      } else {
        return color(255);
      }
    } else {
      if (columna % 2 == 0) {
        return color(255);
      } else {
        return color(0);
      }
    }
  }
}

void keyPressed() {
  if (key == 'c' || key == 'C') {
    usarColoresAleatorios = true;
    redraw();  
  } else if (key == 'r' || key == 'R') {
    usarColoresAleatorios = false;
    redraw();
  }
}
