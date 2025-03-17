#include <stdio.h>
void func2(void*& r)
{
  printf("ok\n");
}
void func2(void*const& r)
{
  
  
  printf("ng\n");
}
int main()
{
  int a=10;
  int* p=&a;
  func2(p);
}
