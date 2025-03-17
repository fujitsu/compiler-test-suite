#include <stdio.h>

long foo(long i, long j) {
  return (i + j);
}
int main()
{
  long x;
  x = foo(-10000L, -20000L);
  if (x == -30000L) {
    printf("OK\n");
  } else {
    printf("NG\t%ld\n", x);
  }
}
