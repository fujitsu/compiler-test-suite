#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char a = 1,b = 2;
 
    a,b;
    if (a == 1 && b == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a = 1,b = 2;
 
    a,b;
    if (a == 1 && b == 2)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int a = 1l,b = 2l;
 
    a,b;
    if (a == 1l && b == 2l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int a = 1,b = 2;
 
    a,b;
    if (a == 1 && b == 2)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char a = 1,b = 2;
 
    a,b;
    if (a == 1 && b == 2)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int a = 1,b = 2;
 
    a,b;
    if (a == 1 && b == 2)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int a = 1l,b = 2l;
 
    a,b;
    if (a == 1l && b == 2l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int a = 1,b = 2;
 
    a,b;
    if (a == 1 && b == 2)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char a = 1u,b = 2u;
 
    a,b;
    if (a == 1u && b == 2u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int a = 1u,b = 2u;
 
    a,b;
    if (a == 1u && b == 2u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int a = 1ul,b = 2ul;
 
    a,b;
    if (a == 1ul && b == 2ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int a = 1u,b = 2u;
 
    a,b;
    if (a == 1u && b == 2u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static int a[2] = { 1,2 },b[2] = { 3,4 };
 
    a,b;
    if (a[0] == 1 && b[1] == 4)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int val = 1,*a = &val,*b = &val;
 
    a,b;
    if (*a == 1 && *b == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    static struct { int a; } st1 = { 1 },st2 = { 2 };
 
    (st1,st2).a;
    if (st1.a == 1 && st2.a == 2)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    static union { int a; int b; } un1 = { 1 },un2 = { 2 };
 
    (un1,un2).a;
    if (un1.b == 1 && un2.b == 2)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    enum { emem0,emem1 } en1 = 0,en2 = 1,c;
 
    c = (en1,en2);
    if (c == emem1)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    int func1(),func2(),a;
 
    a = (func1,func2)();
    if (a == 2)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  {
    void fn1(),fn2(); int a = 0;
 
    fn1(&a),fn2(&a);
    if (a == 2)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int func1()
{
  return 1;
}
 
int func2()
{
  return 2;
}
 
void fn1(int *a)
{
  *a += 1;
}
 
void fn2(int *a)
{
  *a += 1;
}
