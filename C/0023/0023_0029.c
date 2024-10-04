#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x00000000f0000000ULL * 0x0000000000000001ULL;

#if defined(big_endian)
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0xf0000000 ) {
#else
  if (   *((int *)&a)==0xf0000000
      && *((((int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
