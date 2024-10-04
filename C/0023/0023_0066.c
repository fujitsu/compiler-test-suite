#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a, b;

  a = 0x7fffffffffffffffULL / 2ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x3fffffff
      && *((((unsigned int *)&a))+1)==0xffffffff ) {
#else
  if (   *((unsigned int *)&a)==0xffffffff
      && *((((unsigned int *)&a))+1)==0x3fffffff ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
