
#include <stdio.h>
static
double sub1()
{
  return((double)-1.0);
}

static
double sub2()
{
  return((double)-1.0);
}

static
void array_func(a)
     int a[20];
{
  int i;
  for (i=0;i<20;i++){
    a[i]=i;
  }
}

int lto_sub_6()
{
  double d1, d2, dd;
  int    compare;
  int    a[20],t;

  d1 = sub1();
  d2 = sub2();
  dd = 2.0;
  t  = d2;
  array_func(a);

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

  if (compare < 0) {
    t = t + a[0];
    goto XX;
  }

  dd = dd + d1 + d2;

 XX:

  dd = dd + d1 + d2;

  printf("%lf %d\n",dd,t);
}
