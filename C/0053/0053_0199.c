#include<stdio.h>
typedef int type;

struct tag
{
  volatile const unsigned long int a01;
  volatile const unsigned int a02;
  volatile const int a03;
  volatile const  int a04;
  volatile unsigned long int a05;
  volatile unsigned int a06;
  volatile int a07;
  volatile  int a08;
  unsigned long int a09;
  unsigned int a10,a00:1;
  int a11;
  volatile const struct { int ss0; } a12;
  volatile struct { int ss1; } a13;
  struct { int ss2; } a14;
  volatile const type a15;
  volatile type a16;
  type a17;
} a = { 1, 2, 3, 4,
          5, 6, 7, 8,
          9, 10, 1, 11,
          { 12 }, { 13 }, { 14 },
          15, 16, 17 } ;
int main()
{
  if (a.a00 == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a01 == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a02 == 2)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a03 == 3)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a04 == 4)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a05 == 5)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a06 == 6)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a07 == 7)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a08 == 8)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a09 == 9)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a10 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a11 == 11)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a12.ss0 == 12)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a13.ss1 == 13)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a14.ss2 == 14)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a15 == 15)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a16 == 16)
      printf("***** \n");
    else
      printf("***** \n");

  if (a.a17 == 17)
      printf("***** \n");
    else
      printf("***** \n");
}
