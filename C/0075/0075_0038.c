#include <stdio.h>
int f() {
  int c = 0;
  while (c==0) {
    c--;
  }
  return c;
}

int main()
{
  printf("%d\n",f());
}
