#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = (unsigned long long int)10.9E-00F;

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

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
