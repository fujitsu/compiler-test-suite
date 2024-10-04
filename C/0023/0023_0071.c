#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0x7ffffffffULL % 0x7fffffffffffffffULL;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x7
      && *((((unsigned int *)&a))+1)==0xffffffff ) {
#else
  if (   *((unsigned int *)&a)==0xffffffff
      && *((((unsigned int *)&a))+1)==0x7 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
