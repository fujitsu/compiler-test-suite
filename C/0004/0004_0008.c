#include <stdio.h>

long long sub1()
{
  return((long long)3.0);
}

long long sub2()
{
  return((long long)-1.0);
}
int main()
{
  long long d1, d2, dd;
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

  printf("%x%x\n",(int )(dd>>32),(int )dd);
}
