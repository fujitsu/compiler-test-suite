#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a, b;

  a = 0x7fffffffffffffffLL / 2LL;

#if defined(big_endian)
  if (   *((int *)&a)==0x3fffffff
      && *((((int *)&a))+1)==0xffffffff ) {
#else
  if (   *((int *)&a)==0xffffffff
      && *((((int *)&a))+1)==0x3fffffff ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
