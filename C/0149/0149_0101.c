#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char a = 1,b = 2,c = 3,d;
 
    d = a ? b : c;
    if (d == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a = 1,b = 2,c = 3,d;
 
    d = a ? b : c;
    if (d == 2)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int a = 1l,b = 2l,c = 3l,d;
 
    d = a ? b : c;
    if (d == 2l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int a = 1,b = 2,c = 3,d;
 
    d = a ? b : c;
    if (d == 2)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char a = 1,b = 2,c = 3,d;
 
    d = a ? b : c;
    if (d == 2)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int a = 1,b = 2,c = 3,d;
 
    d = a ? b : c;
    if (d == 2)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int a = 1l,b = 2l,c = 3l,d;
 
    d = a ? b : c;
    if (d == 2l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int a = 1,b = 2,c = 3,d;
 
    d = a ? b : c;
    if (d == 2)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char a = 1u,b = 2u,c = 3u,d;
 
    d = a ? b : c;
    if (d == 2u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int a = 1u,b = 2u,c = 3u,d;
 
    d = a ? b : c;
    if (d == 2u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int a = 1ul,b = 2ul,c = 3ul,d;
 
    d = a ? b : c;
    if (d == 2ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int a = 1u,b = 2u,c = 3u,d;
 
    d = a ? b : c;
    if (d == 2u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static int a[2] = { 1,2 },b[2] = { 3,4 };
    static int c[2] = { 5,6 },d;
 
    d = ( a ? b : c )[1];
    if (d == 4)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int val1 = 1,val2 = 2,*a = &val1,*b = &val1,*c = &val2,*d;
 
    d = a ? b : c;
    if (*d == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    enum { a,b } en = 1;
    struct { int a; } st1 = { 1 },st2 = { 2 },c;
 
    c = en ? st1 : st2;
    if (c.a == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    enum { a,b } en = 1;
    union { int a; int b; } un1 = { 1 },un2 = { 2 },c;
 
    c = a ? un1 : un2;
    if (c.b == 2)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    enum { a,b } en = 1;
    enum { emem0,emem1 } en1 = 0,en2 = 1,c;
 
    c = en ? en1 : en2;
    if (c == emem0)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    enum { a,b } en = 1;
    int f1(),f2(),c;
 
    c = ( en ? f1 : f2 )();
    if (c == 1)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  {
    enum { a,b } en = 1;
    void f3(),f4(); int c = 0;
 
    en ? f3(&c) : f4(&c);
    if (c == 1)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int f1()
{
  return 1;
}
 
int f2()
{
  return 2;
}
 
void f3(c) int *c;
{
  *c = 1;
}
 
void f4(c) int *c;
{
  *c = 2;
}
