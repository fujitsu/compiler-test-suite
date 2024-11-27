#include<stdio.h>
static int sub()
{
  int i;
  for (i=0; i < 10; ++i) {
    if (i > 5) {
      int a = 2;
      int b = 4;
      return a * b;
    }
  }
  return 0;
}

int main()
{
  int c;
  c = 8;
  sub();
  if (c == 8) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return 1;
  }
}
