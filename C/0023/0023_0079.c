#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 8ULL * 0x0800000000000000ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x40000000
      && *((((unsigned int *)&a))+1)==0x0 ) {
#else
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0x40000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
