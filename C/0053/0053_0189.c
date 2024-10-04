#include<stdio.h>
typedef int a;

void f1(register volatile const a,
        register const volatile a);
void f2(register volatile a);
void f3(register a);
void f4(volatile const a);
void f5(volatile a);
void f6(a);
int main()
{
  f1(1,2);
  f2(1);
  f3(1);
  f4(1);
  f5(1);
  f6(1);
}

void f1(register volatile const a b,
        register const volatile a c)
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (c == 2)
      printf("***** \n");
    else
      printf("***** \n");
}

void f2(register volatile a b)
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f3(register a b)
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f4(volatile const a b)
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f5(volatile a b)
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f6(a b)
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}
