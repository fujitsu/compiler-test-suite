#include <stdlib.h>
#include <stdio.h>
int main()
{
  long long int  a;

  a = 0xf000000000000000 >> 0xf;

#if defined(big_endian)
  if (   *((int *)&a)==0x1e000
      && *((((int *)&a))+1)==0x0 ) {
#else
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0x1e000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
