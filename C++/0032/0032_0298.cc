#include <stdio.h>
void func2(void*& r)
{
  printf("ng\n");
}
void func2(void*const& r)
{
  printf("ok\n");
}
int main()
{
  int a=10;
  int*const p=&a;
  func2(p);
}
