//
//  sketch_20171201a.pde - moire test
//
// license:
//     Copyright (c) 2017 yoggy <yoggy0@gmail.com>
//     Released under the MIT license
//     http://opensource.org/licenses/mit-license.php;
//
size(1024, 1024);
noSmooth();

background(#000000);

stroke(#ffffff);
strokeWeight(2);
noFill();

for (int r = 1; r < width*2; r += 20) {
  ellipse(width/2, height/2, r, r);
}

save("sketch_20171201a.png");