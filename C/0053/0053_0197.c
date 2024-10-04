#include<stdio.h>
typedef int a;

void f1(register volatile const a);
void f2(register volatile a);
void f3(register a);
void f4(volatile const a);
void f5(volatile a);
void f6(a);
int main()
{
  f1(1);
  f2(1);
  f3(1);
  f4(1);
  f5(1);
  f6(1);
}

void f1(b)
register volatile const a b;
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f2(b)
register volatile a b;
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f3(b)
register a b;
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f4(b)
volatile const a b;
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f5(b)
volatile a b;
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f6(b)
a b;
{
  if (b == 1)
      printf("***** \n");
    else
      printf("***** \n");
}
