#include<stdio.h>
void f3(register unsigned long int);
void f2(register unsigned int);
void f1(register int);
void f0(register int );
int main()
{
  f3(1ul);
  f2(1u);
  f1(1);
  f0(1);
}

void f3(a)
register unsigned long int a;
{
  if (a == 1ul)
      printf("***** \n");
    else
      printf("***** \n");
}

void f2(a)
register unsigned int a;
{
  if (a == 1u)
      printf("***** \n");
    else
      printf("***** \n");
}

void f1(a)
register int a;
{
  if (a == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

void f0(a)
register  int a;
{
  if (a == 1)
      printf("***** \n");
    else
      printf("***** \n");
}
