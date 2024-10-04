#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  
  a = 3LL << 2;

#if defined(big_endian)
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0xc ) {
#else
  if (   *((int *)&a)==0xc
      && *((((int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
