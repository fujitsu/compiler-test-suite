#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a = -1;

  if (   *((int *)&a)==0xffffffff
      && *((((int *)&a))+1)==0xffffffff ) {
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}
