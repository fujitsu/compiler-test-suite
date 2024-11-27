#include <stdio.h>


#include <math.h>
int main()
{
  float f;

  f = (float)sin(0.0);

  if (f == 0.0)
    printf("OK\n");
  else
    printf("NG\n");
}
