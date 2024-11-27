
#include <stdio.h>

void bar()
{
  volatile int auto a = 100;
  printf("%d\n", a);
}

void line()
{
  volatile int auto b = 200;
  printf("%d\n", b);
}

void foo(signed int *p)
{
  if (*p == 0) {
    bar();
  } else {
    line();
  }
}

int main() {
  signed int p[10] = {0,1,2,3,4,5,6,7,8,9};
  foo(p);
  return 0;
}
