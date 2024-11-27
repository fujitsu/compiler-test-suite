#include <stdio.h>
int main() {
  printf("ok\n");
}

unsigned long long int subll( long double d )
{
  return 1.0;
}

unsigned long int subl( long double d )
{
  return 1.0;
}

int sub1()
{
  double d = subll(1.0);
  d =subl(d);
  d =subll(1.0);
  d =subll(d);
}
