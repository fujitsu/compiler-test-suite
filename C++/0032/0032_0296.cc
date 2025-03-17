#include <stdio.h>
void func2(void*const& r)
{
  if (*(int*)r == 10)
    printf("ok\n");
  else
    printf("ng\n");
}
int main()
{
  int a=10;
  int* p=&a;
  func2(p);
}
