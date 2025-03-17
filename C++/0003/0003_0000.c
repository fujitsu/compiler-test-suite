#include <stdio.h>

int i;

int foo()
{
  int j;
  int ret = 100;
  i = 10;
  j = i;
  printf("j = %d\n", j);

  return ret;
}

int main() {
  int ret;
  ret = foo();
  printf("ret = %d\n", ret);
  return 0;
}


