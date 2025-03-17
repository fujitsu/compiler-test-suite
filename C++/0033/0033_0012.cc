#include <stdio.h>

int work = 0;

void func(int a, int b=10);
void func(int a=5, int b)
{
  if (a==5 && b==10)
    work=1;
  else
    printf("ng a=%d b=%d\n", a, b);
}
int main()
{
#pragma omp parallel
  func();

  if( work )
    printf("ok\n");
  else
    printf("ng\n");
}
