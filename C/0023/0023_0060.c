#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a, b, c;

  b = 0x0800000000000000ULL;
  c = 8ULL;
  a = b * c;

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

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
