#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 8399934590ULL % 4294967295ULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0xf4acd47f ) {
#else
  if (   *((unsigned int *)&a)==0xf4acd47f
      && *((((unsigned int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
