#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  
  a = 0x8000000f00000000LL >> 2;

#if defined(big_endian)
  if (   *((int *)&a)==0x20000003
      && *((((unsigned int *)&a))+1)==0xc0000000 ) {
#else
  if (   *((unsigned int *)&a)==0xc0000000
      && *((((int *)&a))+1)==0x20000003 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
