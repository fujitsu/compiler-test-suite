#include <stdio.h>

void func5(int a, int b, int c);
void func5(int a=1, int b=2, int c=3)
{
  if (a==1 && b==2 && c==3)
    printf("ok\n");
  else
    printf("ng\n");
}

void func4(int a=1, int b=2, int c=3);
void func4(int a, int b, int c)
{
  if (a==1 && b==2 && c==3)
    func5();
  else
    printf("ng func4\n");
}

void func3(int a, int b, int c=3);
void func3(int a=1, int b=2, int c)
{
  if (a==1 && b==2 && c==3)
    func4();
  else
    printf("ng func3\n");
}

void func2(int a, int b=2, int c=3);
void func2(int a=1, int b, int c)
{
  if (a==1 && b==2 && c==3)
    func3();
  else
    printf("ng func3\n");
}
int main()
{
  func3();
}

