#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x4000000000000000LL;

#if defined(big_endian)
  if (   *((int *)&a)==0x40000000
      && *((((int *)&a))+1)==0x0 ) {
#else
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0x40000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
