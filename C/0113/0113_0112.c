#include <stdio.h>
#include <math.h>

typedef struct 
{
  float    r;
  float    i;
} fcomplex;


float cabs(fcomplex *p, fcomplex *q)
{
  double a, b, c, d;
  a = p->r;
  b = p->i;
  c = q->r;
  d = q->i;
  return (float)sqrt(a * c + b * d);
}

int main() 
{
  fcomplex c, d;
  c.r = 1.2;
  c.i = 3.4;
  d.r = 5.6;
  d.i = 7.8;
  printf("%f\n", cabs(&c, &d));
}
