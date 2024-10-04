#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0x7fffffffffffffffLL * 0xf000000000000000ULL;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if (   *((int *)&a)!=0x0
      || *((((int *)&a))+1)!=0x10000000 ) {
#elif defined(big_endian)
  if (   *((int *)&a)!=0x10000000
      || *((((int *)&a))+1)!=0x0 ) {
#else
  if (   *((int *)&a)!=0x0
      || *((((int *)&a))+1)!=0x0 ) {
#endif
    printf("NG : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 0xffffffffffffffffLL * 0xffffffffffffffffULL;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if (   *((int *)&b)!=0x1
      || *((((int *)&b))+1)!=0x0 ) {
#elif defined(big_endian)
  if (   *((int *)&b)!=0x0
      || *((((int *)&b))+1)!=0x1 ) {
#else
  if (   *((int *)&b)!=0x0
      || *((((int *)&b))+1)!=0x0 ) {
#endif
    printf("NG : %x %x\n", b, *(((unsigned int *)&b)+1));
    err = 1;
  }

  if (err == 0) {
    printf("OK\n");
    exit(0);
  } else
    exit(1);
}
