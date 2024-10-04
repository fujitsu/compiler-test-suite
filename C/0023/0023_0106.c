#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0x0000ffff00000000LL - 0x0000000800000000ULL;

#if defined(big_endian)
  if (   *((int *)&a)!=0xfff7
      || *((((int *)&a))+1)!=0x0 ) {
#else
  if (   *((int *)&a)!=0x0
      || *((((int *)&a))+1)!=0xfff7 ) {
#endif
    printf("NG\n");
    err = 1;
  }

  b = 0x0000ffff00000000LL - 0x0000000800000000ULL;

#if defined(big_endian)
  if (   *((int *)&b)!=0xfff7
      || *((((int *)&b))+1)!=0x0 ) {
#else
  if (   *((int *)&b)!=0x0
      || *((((int *)&b))+1)!=0xfff7 ) {
#endif
    printf("NG\n");
    err = 1;
  }

  if (err == 0) {
    printf("OK\n");
    exit(0);
  }else
    exit(1);
}
