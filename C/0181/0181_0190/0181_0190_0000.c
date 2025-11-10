#include <stdio.h>

double foo(void);

int main()
{
  double ret = foo();
  printf("%3.5f\n", ret);
  return 0;
}
