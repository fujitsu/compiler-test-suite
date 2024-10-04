#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = (long long int)10.9E-00F;

#if defined(big_endian)
  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0xa ) {
#else
  if (   *((unsigned int *)&a)==0xa
      && *((((unsigned int *)&a))+1)==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((int *)&a)+1));
  printf("NG\n");
  exit(1);
}
