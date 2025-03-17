#include <stdio.h>

long long foo(long long i, long long j) {
  return (i + j);
}
int main()
{
  long long x;
  x = foo(-1000000LL, -2000000LL);
  if (x == -3000000LL) {
    printf("OK\n");
  } else {
    printf("NG\t%lld\n", x);
  }
}
