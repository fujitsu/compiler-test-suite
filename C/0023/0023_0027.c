#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x0000000f00000000LL % 0x7fffffffffffffffLL;

#if defined(big_endian)
  if (   *((int *)&a)==0xf
      && *((((int *)&a))+1)==0x0 ) {
#else
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0xf ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
