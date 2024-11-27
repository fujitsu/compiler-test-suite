#include <stdio.h>

int x;

void sub0() { x += 2; }
void sub1() { x *= 2; }
void sub2() { x /= 2; }

void func(int a)
{
  switch (a) {
  case 0:  sub0(); break;
  case 1:
  case 2:
  case 3:  sub1(); break;
  default: sub2(); break;
  }
  printf("%d\n", x);
}
int main() 
{
  x =-1; func(x);
  x = 0; func(x);
  x = 1; func(x);
  x = 2; func(x);
  x = 3; func(x);
  x = 4; func(x);
}
