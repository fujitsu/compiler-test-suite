#include <stdio.h>
#include <math.h>

typedef struct 
{
  float    r;
  float    i;
} fcomplex;


float cabs(fcomplex *p)
{
  double a, b;
  a = p->r; b = p->i;
  return (float)sqrt(a * a + b * b);
}

int main() 
{
  fcomplex c;
  c.r = 1.2;
  c.i = 3.4;
  printf("%f\n", cabs(&c));
}
