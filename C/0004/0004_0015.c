#include <stdio.h>

int sub1()
{
  return(1);
}

int sub2()
{
  return(1);
}
int main()
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
    goto FOO;

  dd = dd + d1 + d2;

 FOO:

  dd = dd + d1 + d2;

  printf("%d\n",dd);
}
