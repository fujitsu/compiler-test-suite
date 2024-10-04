#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x4000000000000000LL - 0x0000000fffffffffLL;

#if defined(big_endian)
  if (   *((int *)&a)==0x3ffffff0
      && *((((int *)&a))+1)==0x1 ) {
#else
  if (   *((int *)&a)==0x1
      && *((((int *)&a))+1)==0x3ffffff0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
