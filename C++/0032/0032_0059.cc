#include <stdio.h>

void func5(int a, int b);
void func5(int a=1, int b=2)
{
  if (a==1 && b==2)
    printf("ok\n");
  else
    printf("ng\n");
}

void func4(int a=1, int b=2);
void func4(int a, int b)
{
  if (a==1 && b==2)
    func5();
  else
    printf("ng func4\n");
}

void func3(int a, int b=2);
void func3(int a=1, int b)
{
  if (a==1 && b==2)
    func4();
  else
    printf("ng func3\n");
}

void func2(int a=1);
void func2(int a)
{
  if (a==1)
    func3();
  else
    printf("ng func2\n");
}

void func(int a);
void func(int a=1)
{
  if (a==1)
    func2();
  else
    printf("ng\n");
}
int main()
{
  func();
}

