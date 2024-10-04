#include<stdio.h>
void f3(volatile unsigned long int);
void f2(volatile unsigned int);
void f1(volatile int);
void f0(volatile int );
int main()
{
  f3(1ul);
  f2(1u);
  f1(1);
  f0(1);
}

void f3(a)
volatile unsigned long int a;
{
  if (a == 1ul)
      printf("***** \n");
    else
      printf("***** \n");
}

void f2(a)
volatile unsigned int a;
{
  if (a == 1u)
      printf("***** \n");
    else
      printf("***** \n");
}

void f1(a)
volatile int a;
{
  if (a == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f0(a)
volatile  int a;
{
  if (a == 1)
      printf("***** \n");
    else
      printf("***** \n");
}
