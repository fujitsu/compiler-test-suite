#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0x00000000f0000000ULL * 0x0000000000000002ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x1
      && *((((unsigned int *)&a))+1)==0xe0000000 ) {
#else
  if (   *((unsigned int *)&a)==0xe0000000
      && *((((unsigned int *)&a))+1)==0x1 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
