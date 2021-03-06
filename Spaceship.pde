class Spaceship extends Floater  
{   
   public Spaceship () {
     myCenterX = 250; 
     myCenterY = 250;
     myXspeed = 0;
     myYspeed = 0;
     myColor = 255;
     myPointDirection = 0;
     corners = 4;
     xCorners = new int [corners];
     yCorners = new int [corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] =  0;
     xCorners[2] = -8;
     yCorners[2] =  8;
     xCorners[3] = -2;
     yCorners[3] =  0;
   }
   
   public void hyperspace(){
     myXspeed = 0;
     myYspeed = 0;
     myCenterX = (int)(Math.random()*450);
     myCenterY = (int)(Math.random()*450);
     myPointDirection = (int)(Math.random()*360);
   }
   
  public float getX(){
    return (float)(myCenterX);
  }
  
  public float getY(){
    return (float)(myCenterY);
  }
  
  public double getXspeed(){
  return myXspeed;
  }
  
  public double getYspeed(){
  return myYspeed;
  }
  
  public double getPointDirection(){
  return myPointDirection;
  }
}
