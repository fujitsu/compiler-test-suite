#include<stdio.h>
static void sub2(int *c, int i)
{
  *c = *c * i;
}
static void sub(int a, int b, int *c) 
{
  int i;
  for (i=0; i < 10; ++i) {
    if (i > 5) {
      sub2(c, 1);
      *c = *c + a * b;
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
