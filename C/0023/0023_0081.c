#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 8ULL - 3ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0x5 ) {
#else
  if (   *((unsigned int *)&a)==0x5
      && *((((unsigned int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
