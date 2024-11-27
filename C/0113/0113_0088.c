#include <stdio.h>


#include <math.h>
int main()
{
  float f=(float)sin(0.0);
  double d;

  if ((d = f) == 0.0)
    printf("OK\n");
  else
    printf("NG\n");
}

