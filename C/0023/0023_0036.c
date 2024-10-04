#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  
  a = 12LL | (12LL >> 2);

#if defined(big_endian)
  if (   *((int *)&a)==0x0
      && *((((int *)&a))+1)==0xf ) {
#else
  if (   *((int *)&a)==0xf
      && *((((int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
