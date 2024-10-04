#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 5ULL * 3ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0xf ) {
#else
  if (   *((unsigned int *)&a)==0xf
      && *((((unsigned int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
