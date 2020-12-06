Spaceship bob = new Spaceship();
Star [] sky = new Star [200];

ArrayList <Asteroid> makeRain;

public void setup() 
{
  makeRain = new ArrayList<Asteroid>();
  size(500,500);
  for (int j = 0; j < 8; j++){
    makeRain.add(new Asteroid());
  }
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star ();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i< sky.length; i++){
  sky[i].show();
  }
  for (int j = 0; j < makeRain.size(); j++){
    makeRain.get(j).show();
    makeRain.get(j).move();
    float d = (dist(bob.getX(), bob.getY(), makeRain.get(j).getX(), makeRain.get(j).getY()));
    if(d < 10){
      makeRain.remove(j);
    }
  }
  bob.show();
  bob.move();
}

public void keyPressed(){
  if (key == CODED){
    if(keyCode == UP){
      bob.accelerate(0.5);
    }else{
      if(keyCode == DOWN){
        bob.accelerate(-0.5);
      }else{
        if(keyCode == RIGHT){
          bob.turn(10);
        }else{
          if(keyCode == LEFT){
            bob.turn(-10);
          }
        }
      }
    }
  }else{
    if (key == 'h'){
      bob.hyperspace();
    }
  }
}
