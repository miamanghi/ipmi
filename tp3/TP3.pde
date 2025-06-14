PImage miFoto;

int cols = 16;
int rows = 16;
int cellSize = 25;

int gridStartCol = 3;
int gridStartRow = 4;
int gridCols = 10;
int gridRows = 8;

void setup() {
  size(800, 400);              
  miFoto = loadImage("OP ART.jpg"); 
  noLoop();
}

void draw() {
  background(255);

  image(miFoto, 0, 0, 400, 400);

  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      int px = 400 + x * cellSize; 
      int py = y * cellSize;

      if (y % 2 == 0) {
        fill(x % 2 == 0 ? 0 : 255);
      } else {
        fill(x % 2 == 0 ? 255 : 0);
      }

      rect(px, py, cellSize, cellSize);
    }
  }

  for (int y = 0; y < gridRows; y++) {
    for (int x = 0; x < gridCols; x++) {
      int px = 400 + (gridStartCol + x) * cellSize;
      int py = (gridStartRow + y) * cellSize;

      fill(0);
      rect(px, py, cellSize, cellSize);

      fill(255);
      rect(px + cellSize / 3, py, cellSize / 3, cellSize);
    }
  }
}
