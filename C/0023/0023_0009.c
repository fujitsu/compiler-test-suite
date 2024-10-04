#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0x7fffffffffffffffLL + 0xffffLL;

#if defined(big_endian)
  if (   *((int *)&a)==0x80000000
      && *((((int *)&a))+1)==0xfffe ) {
#else
  if (   *((int *)&a)==0xfffe
      && *((((int *)&a))+1)==0x80000000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
