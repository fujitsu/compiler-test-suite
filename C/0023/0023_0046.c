#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x0000000f00000000LL - 0x00000000ffffffffLL;

#if defined(big_endian)
  if (   *((int *)&a)==0xe
      && *((((int *)&a))+1)==0x1 ) {
#else
  if (   *((int *)&a)==0x1
      && *((((int *)&a))+1)==0xe ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
