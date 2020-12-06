class Asteroid extends Floater
{
  public double rotSpeed;
  public Asteroid(){
    rotSpeed = 3;
    myCenterX = (int)(Math.random()*450);
    myCenterY = (int)(Math.random()*450);
    myXspeed = 2;
    myYspeed = 2;
    myColor = 150;
    myPointDirection = 0;
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public float getX(){
    return (float)(myCenterX);
  }
  
  public float getY(){
    return (float)(myCenterY);
  }
  
}
