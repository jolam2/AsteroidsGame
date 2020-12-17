class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10,10);
  }
  
  public float GetX(){
  return (float)(myCenterX);
  }
  
  public float GetY(){
  return (float)(myCenterY);
  }
  public double GetPointDirection(){
  return myPointDirection;
  }
  
  public double GetXspeed(){
  return myXspeed;
  }
  public double GetYspeed(){
  return myYspeed;
  }
 }
