class Drop {
  float x, y, z, speed, len, slope;
  color col;
  Drop() {
    x = random(width);
    y = random(-100, -10);
    z = random(0, 20);
    speed = map(z, 0, 20, 5, 12);
    len = map(z, 0, 20, 5, 15);
    slope = random(0, 1);
    col = colors[currentColor];
  }

  void update() {
    y += speed;
    x += slope;
    
    // reset when the drop reaches the bottom or screan bounds
    if (y > height) {
      y = random(-100, -10);
      x = random(width);
      col = colors[currentColor];
    }

  }

  void display() {
    stroke(col);
    float thickness = map(z, 0, 20, 1, 3); //<>//
    strokeWeight(thickness);
    line(x, y, x, y + len);
  }
}
