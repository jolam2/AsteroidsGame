Spaceship bob = new Spaceship();
Star [] sky = new Star [200];

ArrayList <Asteroid> makeRain;
ArrayList <Bullet> shots = new ArrayList <Bullet>();

public void setup() 
{
  makeRain = new ArrayList<Asteroid>();
  size(500,500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star ();
  }
}
public void draw() 
{
  background(0);
  while (makeRain.size() < 10){
    makeRain.add(new Asteroid());
  }
  for(int i = 0; i< sky.length; i++){
  sky[i].show();
  }
  for (int j = 0; j < makeRain.size(); j++){
    makeRain.get(j).show();
    makeRain.get(j).move();
    float d = (dist(bob.getX(), bob.getY(), makeRain.get(j).getX(), makeRain.get(j).getY()));
    if(d < 15){
      makeRain.remove(j);
    }
  }
  bob.show();
  bob.move();
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    float bye = (dist(shots.get(i).getX(), shots.get(i).getY(), bob.getX(), bob.getY()));
    if(bye > 150){
      shots.remove(i);
    }
  }
  for(int i = 0; i < shots.size(); i++){
    for (int j = 0; j < makeRain.size(); j++){
      float crash = (dist(shots.get(i).getX(), shots.get(i).getY(), makeRain.get(j).getX(), makeRain.get(j).getY()));
    if (crash < 10){
    shots.remove(i); 
    makeRain.remove(j);
    break;
      }
    }
  }
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
    }else{
      if (key == 'b'){
        shots.add(new Bullet(bob));
      }
    }
  }
}
