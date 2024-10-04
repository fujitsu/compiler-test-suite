#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x00000000f0000000LL * 0x0000000000000002LL;

#if defined(big_endian)
  if (   *((int *)&a)==0x1
      && *((((int *)&a))+1)==0xe0000000 ) {
#else
  if (   *((int *)&a)==0xe0000000
      && *((((int *)&a))+1)==0x1 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
