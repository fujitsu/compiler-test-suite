#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x8000000000000001LL & 0x8000000000000000LL;

#if defined(big_endian)
  if (   *((int *)&a)==0x80000000
      && *((((int *)&a))+1)==0x0 ) {
#else
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0x80000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
