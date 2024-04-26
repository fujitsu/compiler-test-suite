#include <stdio.h>

long long sub1()
{
  return((long long)-1.0);
}

long long sub2()
{
  return((long long)2.0);
}
int main()
{
  long long d1, d2, dd;
  int    compare;
  int    a[1], t;

  d1 = sub1();
  d2 = sub2();
  dd = 2.0;
  t  = d2;
  a[0] = d1;

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
    compare = 2;
  }

  if (compare < 0) {
    t = t + a[0];
    goto FOO;
  }

  dd = dd + d1 + d2;

 FOO:

  dd = dd + d1 + d2;

  printf("%x%x %d\n",(int )(dd>>32),(int )dd,t);
}
