#include<stdio.h>
#include<complex.h>
static void sub(double _Complex  a, double _Complex  b, double _Complex  *c) 
{
  int i;
  for (i=0; i < 10; ++i) {
    if (i > 5) {
      *c = *c + a * b;
    }
  }
  return;
}

int main()
{
  double _Complex  a,b,c;
  a = 1;
  b = 2;
  c = 0;
  sub(a,b,&c);
  if (c == (double _Complex )8) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG=%x\n", c);
    return 1;
  }
}
