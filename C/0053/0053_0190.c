#include<stdio.h>
union tag
{
  signed long int a;
  unsigned long int b;
} ;

typedef int type;
int main()
{
  volatile       unsigned long int a01;
  volatile       unsigned int a02;
  volatile       int a03;
  volatile        int a04;
  volatile unsigned long int a05;
  volatile unsigned int a06;
  volatile int a07;
  volatile  int a08;
  unsigned long int a09;
  unsigned int a10;
  volatile       union tag a11={1};
  volatile union tag a12;
  union tag a13;
  volatile       type a14;
  volatile type a15;
  type a16;

  char b = 100;
  unsigned int c;


  a01 = (volatile const unsigned long int) b;
  if (a01 == 100ul)
      printf("***** \n");
    else
      printf("***** \n");

  a02 = (volatile       unsigned int) b;
  if (a02 == 100u)
      printf("***** \n");
    else
      printf("***** \n");

  a03 = (volatile       int) b;
  if (a03 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a04 = (volatile       int ) b;
  if (a04 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a05 = (volatile unsigned long int) b;
  if (a05 == 100ul)
      printf("***** \n");
    else
      printf("***** \n");

  a06 = (volatile unsigned int) b;
  if (a06 == 100u)
      printf("***** \n");
    else
      printf("***** \n");

  a07 = (volatile int) b;
  if (a07 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a08 = (volatile int ) b;
  if (a08 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a09 = (unsigned long int) b;
  if (a09 == 100ul)
      printf("***** \n");
    else
      printf("***** \n");

  a10 = (unsigned int) b;
  if (a10 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a11.a = (signed long int )b;
  if (a11.b == 100u)
      printf("***** \n");
    else
      printf("***** \n");

  a12.a = (signed long int )b;
  if (a12.b == 100u)
      printf("***** \n");
    else
      printf("***** \n");

  a13.a = (signed long int )b;
  if (a13.b == 100u)
      printf("***** \n");
    else
      printf("***** \n");

  a14 = (volatile       type) b;
  if (a14 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a15 = (volatile type) b;
  if (a15 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  a16 = (type) b;
  if (a16 == 100)
      printf("***** \n");
    else
      printf("***** \n");

  c = sizeof(type);
  if (c == sizeof(int))
      printf("***** \n");
    else
      printf("***** \n");
}
