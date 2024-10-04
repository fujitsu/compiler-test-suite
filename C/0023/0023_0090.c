#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0x7fffffffffffffffLL + 0xffffffffffffffffULL;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if (   *((int *)&a)!=0xfffffffe
      || *((((int *)&a))+1)!=0x7fffffff ) {
#elif defined(big_endian)
  if (   *((int *)&a)!=0x7fffffff
      || *((((int *)&a))+1)!=0xfffffffe ) {
#else
  if (   *((int *)&a)==0xfffffffe
      || *((((int *)&a))+1)==0x7fffffff ) {
#endif
    printf("NG1 : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 0x7fffffffffffffffLL + 0xffffffffffffffffULL;

#if defined(big_endian)
  if (   *((int *)&b)!=0x7fffffff
      || *((((int *)&b))+1)!=0xfffffffe ) {
#else
  if (   *((int *)&b)!=0xfffffffe
      || *((((int *)&b))+1)!=0x7fffffff ) {
#endif
    printf("NG2 : %x %x\n", b, *(((unsigned int *)&b)+1));
    err = 1;
    }

  if (err == 0) {
    printf("OK\n");
    exit(0);
  } else
    exit(1);
}
