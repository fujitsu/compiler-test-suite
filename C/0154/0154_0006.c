#include <stdio.h>

unsigned long long foo(unsigned long long i, unsigned long long j) {
  return (i + j);
}
int main()
{
  unsigned long long x;
  x = foo(100000000LL, 200000000LL);
  if (x == 300000000LL) {
    printf("OK\n");
  } else {
    printf("NG\t%ld\n", x);
  }
}
