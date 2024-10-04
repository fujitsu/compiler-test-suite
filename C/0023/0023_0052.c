#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0xf000000000000000ULL + 0x8000000000000000ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x70000000
      && *((((unsigned int *)&a))+1)==0x0 ) {
#else
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0x70000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
