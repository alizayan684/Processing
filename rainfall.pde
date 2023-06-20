color[] colors = new color[8];
int currentColor;
int timer;
ArrayList<Drop> drops;

void setup() {
  size(1500, 700);
  // creating 1500 raindrops
  drops = new ArrayList<Drop>();
  for (int i = 0; i <1500; i++) {
    drops.add(new Drop());
  }
  colors[0] = color(255, 0, 0);
  colors[1] = color(255, 165, 0);
  colors[2] = color(255, 255, 0);
  colors[3] = color(0, 255, 0);
  colors[4] = color(0, 255, 255);
  colors[5] = color(0, 0, 255); //<>//
  colors[6] = color(255, 0, 255);
  colors[7] = color(255, 255, 255);
  timer = millis();
}

void draw() {
  background(0, 0, 0);
  // updating and displaying drops
  if (millis() - timer > 1700) {
    timer = millis();
    currentColor = (currentColor + 1) % colors.length;
  }
  for (Drop drop : drops) {
    drop.update();
    drop.display();
  }
}
