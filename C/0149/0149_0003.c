#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
      printf("***** CATEGORY - 01 ***** O K *****\n");
    else
      printf("***** CATEGORY - 01 ***** N G *****\n");
 
  if (a.a01 == 1)
      printf("***** CATEGORY - 02 ***** O K *****\n");
    else
      printf("***** CATEGORY - 02 ***** N G *****\n");
 
  if (a.a02 == 2)
      printf("***** CATEGORY - 03 ***** O K *****\n");
    else
      printf("***** CATEGORY - 03 ***** N G *****\n");
 
  if (a.a03 == 3)
      printf("***** CATEGORY - 04 ***** O K *****\n");
    else
      printf("***** CATEGORY - 04 ***** N G *****\n");
 
  if (a.a04 == 4)
      printf("***** CATEGORY - 05 ***** O K *****\n");
    else
      printf("***** CATEGORY - 05 ***** N G *****\n");
 
  if (a.a05 == 5)
      printf("***** CATEGORY - 06 ***** O K *****\n");
    else
      printf("***** CATEGORY - 06 ***** N G *****\n");
 
  if (a.a06 == 6)
      printf("***** CATEGORY - 07 ***** O K *****\n");
    else
      printf("***** CATEGORY - 07 ***** N G *****\n");
 
  if (a.a07 == 7)
      printf("***** CATEGORY - 08 ***** O K *****\n");
    else
      printf("***** CATEGORY - 08 ***** N G *****\n");
 
  if (a.a08 == 8)
      printf("***** CATEGORY - 09 ***** O K *****\n");
    else
      printf("***** CATEGORY - 09 ***** N G *****\n");
 
  if (a.a09 == 9)
      printf("***** CATEGORY - 10 ***** O K *****\n");
    else
      printf("***** CATEGORY - 10 ***** N G *****\n");
 
  if (a.a10 == 10)
      printf("***** CATEGORY - 11 ***** O K *****\n");
    else
      printf("***** CATEGORY - 11 ***** N G *****\n");
 
  if (a.a11 == 11)
      printf("***** CATEGORY - 12 ***** O K *****\n");
    else
      printf("***** CATEGORY - 12 ***** N G *****\n");
 
  if (a.a12.ss0 == 12)
      printf("***** CATEGORY - 13 ***** O K *****\n");
    else
      printf("***** CATEGORY - 13 ***** N G *****\n");
 
  if (a.a13.ss1 == 13)
      printf("***** CATEGORY - 14 ***** O K *****\n");
    else
      printf("***** CATEGORY - 14 ***** N G *****\n");
 
  if (a.a14.ss2 == 14)
      printf("***** CATEGORY - 15 ***** O K *****\n");
    else
      printf("***** CATEGORY - 15 ***** N G *****\n");
 
  if (a.a15 == 15)
      printf("***** CATEGORY - 16 ***** O K *****\n");
    else
      printf("***** CATEGORY - 16 ***** N G *****\n");
 
  if (a.a16 == 16)
      printf("***** CATEGORY - 17 ***** O K *****\n");
    else
      printf("***** CATEGORY - 17 ***** N G *****\n");
 
  if (a.a17 == 17)
      printf("***** CATEGORY - 18 ***** O K *****\n");
    else
      printf("***** CATEGORY - 18 ***** N G *****\n");
exit (0);
}
