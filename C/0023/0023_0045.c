#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 8LL - 3LL;

#if defined(big_endian)
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0x5 ) {
#else
  if (   *((int *)&a)==0x5
      && *((((int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
