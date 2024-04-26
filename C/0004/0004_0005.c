#include <stdio.h>

double sub1()
{
  return((double)-1.0);
}

double sub2()
{
  return((double)-1.0);
}

void array(int a[20])
{
  int i;
  for (i=0;i<20;i++){
    a[i]=i;
  }
}
int main()
{
  double d1, d2, dd;
  int    compare;
  int    a[20],t;

  d1 = sub1();
  d2 = sub2();
  dd = 2.0;
  t  = d2;
  array(a);

  while (1) {
    if (d1 < d2) {
      compare = -4;
    }
    else if (d1 > d2) {
      compare = 2;
    }
    else if (d1 == d2) {
      compare = 0;
    }
    else {
      compare = -1;
      goto YY;
    }

    if (compare == 0) {
      t = t + a[0];
      goto FOO;
    }
  }

 YY:
  dd = dd + d1 + d2;

 FOO:

  dd = dd + d1 + d2;

  printf("%lf %d\n",dd,t);
}
