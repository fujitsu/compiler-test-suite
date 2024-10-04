#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0xffffffffffffffffLL + 0x8000000000000000ULL;

#if defined(big_endian)
  if (   *((int *)&a)!=0x7fffffff
      || *((((int *)&a))+1)!=0xffffffff ) {
#else
  if (   *((int *)&a)!=0xffffffff
      || *((((int *)&a))+1)!=0x7fffffff ) {
#endif
    printf("NG : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 0xffffffffffffffffLL + 0x8000000000000000ULL;

#if defined(big_endian)
  if (   *((int *)&b)!=0x7fffffff
      || *((((int *)&b))+1)!=0xffffffff ) {
#else
  if (   *((int *)&b)!=0xffffffff
      || *((((int *)&b))+1)!=0x7fffffff ) {
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
