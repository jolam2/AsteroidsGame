Spaceship bob = new Spaceship();
Star [] sky = new Star [200];
public void setup() 
{
  size(500,500);
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

