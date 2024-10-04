#include<stdio.h>
void f3(unsigned long int);
void f2(unsigned int);
void f1(int);
int main()
{
  f3(1ul);
  f2(1u);
  f1(1);
}

void f3(a)
unsigned long int a;
{
  if (a == 1ul)
      printf("***** \n");
    else
      printf("***** \n");
}

void f2(a)
unsigned int a;
{
  if (a == 1u)
      printf("***** \n");
    else
      printf("***** \n");
}

void f1(a)
int a;
{
  if (a == 1)
      printf("***** \n");
    else
      printf("***** \n");
}
