#include <stdio.h>

unsigned long foo(unsigned long i, unsigned long j) {
  return (i + j);
}
int main()
{
  unsigned long x;
  x = foo(100000000, 200000000);
  if (x == 300000000) {
    printf("OK\n");
  } else {
    printf("NG\t%lx\n", x);
  }
}
