#include <stdlib.h>
#include <stdio.h>
int main()
{
  long long int a;
  unsigned long long int b;
  long long int c;
  int err = 0;

  a = 3LL * 5ULL;

#if defined(big_endian)
  if (   *((int *)&a)!=0x0
      || *((((int *)&a))+1)!=0xf ) {
#else
  if (   *((int *)&a)!=0xf
      || *((((int *)&a))+1)!=0x0 ) {
#endif
    printf("NG1 : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 3LL * 5ULL;

#if defined(big_endian)
  if (   *((int *)&b)!=0x0
      || *((((int *)&b))+1)!=0xf ) {
#else
  if (   *((int *)&b)!=0xf
      || *((((int *)&b))+1)!=0x0 ) {
#endif
    printf("NG2 : %x %x\n", b, *(((unsigned int *)&b)+1));
    err = 1;
  }

  c = -3LL * 5ULL;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if (   *((int *)&c)!=0xfffffff1
      || *((((int *)&c))+1)!=0xffffffff ) {
#elif defined(big_endian)
  if (   *((int *)&c)!=0xffffffff
      || *((((int *)&c))+1)!=0xfffffff1 ) {
#else
  if (   *((int *)&c)!=0x0
      || *((((int *)&c))+1)!=0x0 ) {
#endif
    printf("NG3 : %x %x\n", c, *(((unsigned int *)&c)+1));
    err = 1;
  }

  if (err == 0) {
    printf("OK\n");
    exit(0);
  } else
    exit(1);
}
