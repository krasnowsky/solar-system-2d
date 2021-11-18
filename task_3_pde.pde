Planet sun;

Planet mercury;
Planet mercuryMoon;

Planet earth;
Planet earthMoon1;
Planet earthMoon2;

Planet mars;
Planet marsMoon;

Planet saturn;
Planet saturnMoon1;
Planet saturnMoon2;
Planet saturnMoon3;

void setup() {
    //fullScreen();

    size(1280, 800);

    sun = new Planet(35, 0, 254, 172, 0, 0);

    mercury = new Planet(10, 70, 157, 157, 157, 0.035);
    mercuryMoon = new Planet(5, 20, 255, 20, 20, 0.05);

    earth = new Planet(20, 145, 10, 0, 203, 0.015);
    earthMoon1 = new Planet(4, 30, 157, 157, 157, 0.03);
    earthMoon2 = new Planet(6, 45, 180, 180, 180, 0.02);

    mars = new Planet(15, 220, 195, 0, 5, 0.01);
    marsMoon = new Planet(5, 30, 255, 180, 255, 0.025);

    saturn = new Planet(45, 365, 32, 54, 120, 0.005);
    saturnMoon1 = new Planet(9, 60, 200, 200, 200, 0.035);
    saturnMoon2 = new Planet(8, 80, 100, 100, 100, 0.025);
    saturnMoon3 = new Planet(7, 100, 0, 0, 255, 0.015);

    sun.addPlanet(mercury);
    sun.addPlanet(earth);
    sun.addPlanet(mars);
    sun.addPlanet(saturn);


    mercury.addPlanet(mercuryMoon);

    earth.addPlanet(earthMoon1);
    earth.addPlanet(earthMoon2);

    mars.addPlanet(marsMoon);

    saturn.addPlanet(saturnMoon1);
    saturn.addPlanet(saturnMoon2);
    saturn.addPlanet(saturnMoon3);
}

void draw() {
    background(1, 0, 32);
    translate(width/2, height/2);
    sun.show();
    sun.orbit();
}
