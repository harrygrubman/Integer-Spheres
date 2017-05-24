int var = 1000; // tester
int points = 0;
boolean done = false;

void setup()
{
  println("Circle Radius Calculated: " + var);
  println("Resulting Points:");
}

void draw()
{
  if (done == false)
  {
    for (int x = -1*var; x <= var; x++)
    {
      for (int y = -1*var; y <= var; y++)
      {
        for (int z = -1*var; z <= var; z++)
        {
          if (((x*x)+(y*y)+(z*z)) == var*var)
          {
            println("(" + x + ", " + y + ", " + z + ")");
            points ++;
            
          }
        }
      }
    }
    done = true;
    println("Points Found: " + points);
  }
}