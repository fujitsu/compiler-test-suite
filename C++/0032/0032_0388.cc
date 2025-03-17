#include <stdio.h>
#if LONG64 || defined(__aarch64__) || defined(_LP64)
typedef int LONG;
#else
typedef long LONG;
#endif

LONG f(LONG p)
{
  LONG i;
  i = p >> 31;
  i = i >> 1;
  return i;
}
int main()
{
  LONG i;

  i = f(0x80000000);

  if (i==0xffffffff)
    printf("ok\n");
  else
    printf("ng\n");
}
