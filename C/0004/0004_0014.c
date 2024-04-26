#include <stdio.h>

double sub1()
{
  return((double)-1.0);
}

double sub2()
{
  return((double)-3.0);
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
  int    compare=0;
  int    a[20],t;

  d1 = sub1();
  d2 = sub2();
  dd = 2.0;
  t  = d2;
  array(a);

  if (d1 < d2) {
    compare = 1;
    goto YY;
  }
 YY:
  if (compare < 0) {
    t = t + a[0];
    goto FOO;
  }

  dd = dd + d1 + d2;

 FOO:

  dd = dd + d1 + d2;

  printf("%lf %d\n",dd,t);
}
