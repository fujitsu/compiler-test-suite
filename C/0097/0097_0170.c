#include<stdio.h>
static void sub2(int *c, int i)
{
  *c = *c * i;
}
static void sub(int a, int b, int *c) 
{
  int i, j;
  for (j=0; j < 10; ++j) {
    sub2(c, 1);
    for (i=0; i < 10; ++i) {
      if (i > 5 && j == 3) {
        *c = *c + a * b;
      }
    }
  }
  return;
}

int main()
{
  int a,b,c;
  a = 1;
  b = 2;
  c = 0;
  sub(a,b,&c);
  if (c == 8) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return 1;
  }
}
