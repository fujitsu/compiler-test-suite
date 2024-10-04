#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0x00000000f0000000LL * 0x000000000000000fULL;

#if defined(big_endian)
  if (   *((int *)&a)!=0xe
      || *((((int *)&a))+1)!=0x10000000 ) {
#else
  if (   *((int *)&a)!=0x10000000
      || *((((int *)&a))+1)!=0xe ) {
#endif
    printf("NG : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 0x0000000000ffffffLL * 0x000000000fffffffULL;

#if defined(big_endian)
  if (   *((int *)&b)!=0xfffff
      || *((((int *)&b))+1)!=0xef000001 ) {
#else
  if (   *((int *)&b)!=0xef000001
      || *((((int *)&b))+1)!=0xfffff ) {
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
