#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 4LL - 10ULL;

#if defined(big_endian)
  if (   *((int *)&a)!=0xffffffff
      || *((((int *)&a))+1)!=0xfffffffa ) {
#else
  if (   *((int *)&a)!=0xfffffffa
      || *((((int *)&a))+1)!=0xffffffff ) {
#endif
    printf("NG : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 4LL - 10ULL;

#if defined(big_endian)
  if (   *((int *)&b)!=0xffffffff
      || *((((int *)&b))+1)!=0xfffffffa ) {
#else
  if (   *((int *)&b)!=0xfffffffa
      || *((((int *)&b))+1)!=0xffffffff ) {
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
