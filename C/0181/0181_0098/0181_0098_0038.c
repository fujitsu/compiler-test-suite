
#include <stdio.h>
static int sub(a)
     int a;
{
  return a*a;
}

int lto_sub_39()
{
  double a;

  if (sub(2)) {
    a=1.0;
    goto XX;
  }
  a = 2.0;

 XX:
  if (a>0.0)
    a=a+1.0;

  printf("%lf\n",a);
}
