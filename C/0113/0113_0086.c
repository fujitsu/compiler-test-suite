#include <stdio.h>


#include <math.h>
int main()
{
  float f, a;

  a = (float)0.0;
  f = (float)sin(0.0);

  if (f == a)
    printf("OK\n");
  else
    printf("NG\n");
}
