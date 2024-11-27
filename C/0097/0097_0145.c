#include<stdio.h>
static void sub()
{
  int i;
  for (i=0; i < 10; ++i) {
    if (i > 5) {
      int a,b,c;
      a = 1;
      b = 2;
      c = 0;
      c = c + a * b;
    }
  }
  return;
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
