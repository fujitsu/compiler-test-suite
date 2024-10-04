#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0xffffffffffffffffULL - 0ULL;

  if (   *((unsigned int *)&a)==0xffffffff
      && *((((unsigned int *)&a))+1)==0xffffffff ) {
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
