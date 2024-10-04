#include <stdlib.h>
#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 4294967295ULL % 5ULL;

  if (   *((unsigned int *)&a)==0x0
      && *((((unsigned int *)&a))+1)==0x0 ) {
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
