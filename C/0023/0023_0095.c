#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;
  unsigned long long int b;
  int err = 0;

  a = 0x8000000000000000ULL / -1LL;

  if (   *((int *)&a)!=0x0
      || *((((unsigned int *)&a))+1)!=0x0 ) {
    printf("NG : %x %x\n", a, *(((unsigned int *)&a)+1));
    err = 1;
  }

  b = 0x8000000000000000ULL / -1LL;

  if (   *((unsigned int *)&b)!=0x0
      || *((((unsigned int *)&b))+1)!=0x0 ) {
    printf("NG : %x %x\n", b, *(((unsigned int *)&b)+1));
    err = 1;
  }

  if (err == 0) {
    printf("OK\n");
    exit(0);
  } else
    exit(1);
}