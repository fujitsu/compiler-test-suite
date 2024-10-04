#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0xffffffff00000000ULL % 0xfeLL;

#if defined(big_endian)
  if (   *((int *)&a)!=0x0
      || *((((unsigned int *)&a))+1)!=0xf0 ) {
#else
  if (   *((unsigned int *)&a)!=0xf0
      || *((((int *)&a))+1)!=0x0 ) {
#endif
    printf("NG : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 0xffffffff00000000LL % 0xfeULL;

#if defined(big_endian)
  if (   *((unsigned int *)&b)!=0x0
      || *((((unsigned int *)&b))+1)!=0xf0 ) {
#else
  if (   *((unsigned int *)&b)!=0xf0
      || *((((unsigned int *)&b))+1)!=0x0 ) {
#endif
    printf("NG : %x %x\n", b, *(((unsigned int *)&b)+1));
    err = 1;
  }

  if (err == 0) {
    printf("OK\n");
    exit(0);
  }else
    exit(1);
}
