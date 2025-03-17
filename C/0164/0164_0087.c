
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  _Complex double c32;
  _Complex double c32b;
  _Complex double c32c;
  _Complex double c32d;
} ;

struct st xxx()
{
  struct st  qq;
  qq.c32 = 2.0+4.0I;
  qq.c32b = -8.0+5.3I;
  qq.c32c = 100.0-10.0I;
  qq.c32d = 0.6-77.77I;
  return qq;
}
void  sub(struct st pp) {
      printf("%f %f \n",creal(pp.c32),cimag(pp.c32));
      printf("%f %f \n",creal(pp.c32b),cimag(pp.c32b));
      printf("%f %f \n",creal(pp.c32c),cimag(pp.c32c));
      printf("%f %f \n",creal(pp.c32d),cimag(pp.c32d));
}

int main()
{
      struct st  q;
  q = xxx();
        sub(q);
  return 0;
}



