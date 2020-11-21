class Star //note that this class does NOT extend Floater
{
  private int myX, myY, colors;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    colors = color((int)(Math.random()*200), (int)(Math.random()*150), (int)(Math.random()*150));
  }
  
  public void show()
  {   
    noStroke();
    fill(colors);
    rect(myX, myY,4,4); 
  }
}
