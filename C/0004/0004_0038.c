#include <stdio.h>

int sub(int a)
{
  return a*a;
}
int main()
{
  double a;

  if (sub(2)) {
    a=1.0;
    goto FOO;
  }
  a = 2.0;

 FOO:
  if (a>0.0)
    a=a+1.0;

  printf("%lf\n",a);
}
