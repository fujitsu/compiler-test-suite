#include<stdio.h>
static void sub(int a, int b, int *c) 
{
  if (*c > 5) {
    *c = *c + a * b;
  }
  return;
}

int main()
{
  int a,b,c;
  a = 1;
  b = 2;
  c = 6;
  sub(a,b,&c);
  if (c == 8) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return 1;
  }
}
