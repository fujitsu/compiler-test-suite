#include <stdio.h>

int foo(int i, int j) {
  return (i + j);
}
int main()
{
  int x;
  x = foo(10, 25);
  if (x == 35) {
    printf("OK\n");
  } else {
    printf("NG\t%d\n", x);
  }
}
