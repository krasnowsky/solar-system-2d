import java.util.*;

class Planet {
  float radius;
  float distance;
  float angle;
  int red;
  int green;
  int blue;
  float orbitSpeed;
  Planet[] planets = new Planet[4];
  int planetsAdded = 0;
  
  Planet(float r, float d, int _r, int _g, int _b, float o) {
    radius = r;
    distance = d;
    angle = random(TWO_PI);
    red = _r;
    green = _g;
    blue = _b;
    orbitSpeed = o;
  }

  void addPlanet(Planet planet) {
    planets[planetsAdded] = planet;
    planetsAdded += 1;
  }
  
  void orbit() {
    angle += orbitSpeed;
    if (planets != null) {
      for(int i = 0; i < planetsAdded; i++) {
        planets[i].orbit(); 
      }
    }
  }

  void show() {
    pushMatrix();

    rotate(angle);
    translate(distance, 0);
    
    fill(red, green, blue);
    ellipse(0, 0, radius*2, radius*2);

    if (planets != null) {
      for(int i = 0; i < planetsAdded; i++) {
        noStroke();
        planets[i].show();
      }
    }

    popMatrix();
  }
}
