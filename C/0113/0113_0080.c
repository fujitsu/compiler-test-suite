#include <stdio.h>
#include <math.h>

int main(void) 
{
  int a,b;
  {
    float x = 1.5f;
    a = (int)pow(pow(pow(x,2),4),6);
  }
  {
    double x = 1.5;
    b = (int)pow(pow(pow(x,2),4),6);
  }
  if (a == b) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}

  
