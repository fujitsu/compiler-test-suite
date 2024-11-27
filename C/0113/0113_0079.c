#include <stdio.h>
#include <math.h>

int main(void) 
{
  volatile float x;
  float y;
  x = 1.5f;
  y = pow(x,4);
  for (;x<10.0f;x=x+1.0f) {
    y = pow(x,4);
  }
  if ((int)y == 8145) {
    printf("ok\n");
  } else {
    printf("ng %f\n", y);
  }
  return 0;
}
