#include <stdio.h>

int foo(a)
     int a;
{
  static char *cond[] = {"OK", "NG"}; 
  printf("     %s\n", cond[a]);
}

int bar(a)
     int a;
{
  int b,c;
  if (!(c<!b)) return a;
}

void gan(x)
int x;
{
  int a, b;

  a = 0xffffffff &&  x;
  bar(a);
  b = 0xffffffff && !x;
  foo(b);
}
int main()
{
  printf("**********  TEST START **********\n");
  gan(1);
  printf("**********  TEST  END  **********\n");
}
