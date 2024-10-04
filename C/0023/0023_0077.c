#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0x7000000000000000ULL * 0x0000000000000002ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0xe0000000
      && *((((unsigned int *)&a))+1)==0x0 ) {
#else
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0xe0000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
