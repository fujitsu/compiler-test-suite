#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0x0000000f00000000ULL - 0x00000000ffffffffULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0xe
      && *((((unsigned int *)&a))+1)==0x1 ) {
#else
  if (   *((unsigned int *)&a)==0x1
      && *((((unsigned int *)&a))+1)==0xe ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
