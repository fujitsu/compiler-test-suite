/*******************************************************
 * The return value of the function is restrict.
 * _Complex
 *******************************************************/
#include <stdio.h>
#include <complex.h>

double _Complex * restrict foo(double _Complex *a) {
  double _Complex *p = a + 1;
  return p;
}

int main(void)
{
  double _Complex a[3], *p, *q;
  a[0] = (1.0 + 0.0i);
  a[1] = (2.0 + 1.0i);
  a[2] = (3.0 + 2.0i);
  p = foo(a);
  q = foo(a);
  printf(" (%lf,%lf), (%lf,%lf)\n",
	 creal(*p),cimag(*p),creal(*q),cimag(*q));
  return 0;
}
