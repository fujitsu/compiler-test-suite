#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  
  a = 0x0fffffffffffffffLL << 2;

#if defined(big_endian)
  if (   *((int *)&a)==0x3fffffff
      && *((((int *)&a))+1)==0xfffffffc ) {
#else
  if (   *((int *)&a)==0xfffffffc
      && *((((int *)&a))+1)==0x3fffffff ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
