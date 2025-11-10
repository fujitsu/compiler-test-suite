
#include <stdio.h>
static
int sub1()
{
  return(1);
}

static
int sub2()
{
  return(1);
}

int lto_sub_15()
{
  int    d1, d2, dd;
  int    compare;

  d1 = sub1();
  d2 = sub2();
  dd = 2;

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
    goto XX;

  dd = dd + d1 + d2;

 XX:

  dd = dd + d1 + d2;

  printf("%d\n",dd);
}
