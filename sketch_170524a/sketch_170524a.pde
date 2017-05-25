int rad = 2; // ACTION REQUIRED: INPUT THE RADIUS OF THE SPHERE
int points = 0;                                   //  Initializes points found
int calculations = abs((2*rad)*(2*rad)*(2*rad));  //  Sets number of calculations to be done
boolean done = false;                             //  Initializes completion boolean

void setup()
{
  println("Sphere Radius Calculated: " + rad);    //  Prints the inputted sphere's radius
  println("Resulting Points:");                   //  Dialog for text output operation
}

void draw()
{
  if (done == false)                              //  Completes only once
  {
    for (int x = -1*rad; x <= rad; x++)           //  Iterates over x values from - to + rad
    {
      for (int y = -1*rad; y <= rad; y++)         //  Iterates over y values from - to + rad
      {
        for (int z = -1*rad; z <= rad; z++)       //  Iterates over z values from - to + rad
        {
          if (((x*x)+(y*y)+(z*z)) == rad*rad)     //  Using idea of Pythagorean for 3D
          {
            println("(" + x + ", " + y + ", " + z + ")");  // Print point
            points ++;                            //  Increase number for points found
            
          }
        }
      }
    }
    done = true;                                  //  Mark operation as completed
    println("Calculations Done: " + calculations);//  Print number of calculations
    println("Points Found: " + points);           //  Print number of points found
  }
}