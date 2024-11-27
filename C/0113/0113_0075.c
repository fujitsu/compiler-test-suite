#include <stdio.h>

static int sub(double);
static int ini_r(double);

static int sub(double f) 
{
  double r = ini_r(0.);
  
  if (f == 1.0)
    r = r + f;
  else if (f == 2.0)
    r = r - f;
  else if (f == 3.0)
    r = r * f;
  else if (f == 4.0)
    r = r / f;
  return r;
}

static int ini_r(double r) {
  return r*r;
}
int main() 
{
  if (0.==sub(3.))
    printf("ok\n");
  else
    printf("ng\n");
}
