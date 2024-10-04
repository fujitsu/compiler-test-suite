#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  
  a = 0x0000000f00000000LL >> 2;

#if defined(big_endian)
  if (   *((int *)&a)==0x3
      && *((((int *)&a))+1)==0xc0000000 ) {
#else
  if (   *((int *)&a)==0xc0000000
      && *((((int *)&a))+1)==0x3 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
