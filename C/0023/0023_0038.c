#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  
  a = 0x8000000000000100 >> 2;

#if defined(big_endian)
  if (   *((int *)&a)==0x20000000
      && *((((int *)&a))+1)==0x40 ) {
#else
  if (   *((int *)&a)==0x40
      && *((((int *)&a))+1)==0x20000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
