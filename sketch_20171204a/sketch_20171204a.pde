//
//  sketch_20171204a.pde - moire test
//
// license:
//     Copyright (c) 2017 yoggy <yoggy0@gmail.com>
//     Released under the MIT license
//     http://opensource.org/licenses/mit-license.php;
//
PGraphics pg;

void setup() {
  size(1024, 1024);
  noSmooth();
  pg = createGraphics(1024, 1024);
}

void draw() {
  drawText();
  drawMoire();

  save("sketch_20171204a.png");

  noLoop();
}

void drawText() {
  pg.beginDraw();
  pg.noSmooth();
  pg.background(#000000);
  pg.fill(#ffffff);
  pg.textSize(300);
  pg.text("test", 100, 300);
  pg.text("test", 100, 800);
  pg.endDraw();
  //image(pg, 0, 0);
}

void drawMoire()
{
  
  background(#000000);
  stroke(#ffffff);
  strokeWeight(1);
  noFill();

  for (int y = 0; y < height; y += 16) {
    for (int x = 0; x < width; x += 16) {
      color c = pg.get(x, y);
      if (c != #000000) {
        line(x, y, x + 16, y + 8);
      }
      else {
        line(x, y, x + 16, y + 10);
      }
    }
  }
}