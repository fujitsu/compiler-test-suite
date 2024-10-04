#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0xffffffffffffffffULL * 0xffffffffffffffffULL;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if (   *((unsigned int *)&a)==0x1
      && *((((unsigned int *)&a))+1)==0x0 ) {  
#elif defined(big_endian)
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0x1 ) {  
#else
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
