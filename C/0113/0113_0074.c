#include <stdio.h>

static int sub(float);
static int ini_r(float);

static int sub(float f) 
{
  float r = ini_r(0.);
  
  if (f == 2. || f == 4.) {
    r += f;
  }
  return r;
}

static int ini_r(float r) {
  return r*r;
}
int main() 
{
  if (2.==sub(2.))
    printf("ok\n");
  else
    printf("ng\n");
}
