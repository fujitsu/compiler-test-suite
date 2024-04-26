#include <stdio.h>

double sub1()
{
  return((double)-1.0);
}

double sub2()
{
  return((double)-1.0);
}
int main()
{
  double d1, d2, dd;
  int    compare;

  d1 = sub1();
  d2 = sub2();
  dd = 2.0;

  if (d1 < d2) {
    compare = 1;
  }
  else if (d1 > d2) {
    compare = -1;
  }
  else if (d1 == d2) {
    compare = 0;
  }
  else {
    compare = -1;
  }

  if (compare < 0)
    goto FOO;

  dd = dd + d1 + d2;

 FOO:

  dd = dd + d1 + d2;

  printf("%lf\n",dd);
}
