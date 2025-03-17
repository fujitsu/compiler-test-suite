#include <stdio.h>
void func(int a, int b=10);
void func(int a=5, int b)
{
  if (a==5 && b==10)
    printf("ok\n");
  else
    printf("ng a=%d b=%d\n", a, b);
}
int main()
{
  func();
}
