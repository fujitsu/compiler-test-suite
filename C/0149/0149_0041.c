#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct grtag { int a; int b; };
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    int val = 1,*p = &val,**a,**b;
 
    a = &p;
    if (**a == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
    b = a;
    if (**b == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    static struct tag { int a; } st = { 1 };
    struct tag *p = &st,**a,**b;
 
    a = &p;
    if ((**a).a == 1)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
    b = a;
    if ((**b).a == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    static int vec[2] = { 1,2 },(*a)[2],(*b)[2];
 
    a = &vec;
    if ((*a)[0] == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
    b = a;
    if ((*b)[1] == 2)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    static struct tag { int a; } vec[2] = { 1,2 };
    struct tag (*a)[2],(*b)[2];
 
    a = &vec;
    if (((*a)[1]).a == 2)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
    b = a;
    if (((*b)[0]).a == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    int func1(),(*a)(),(*b)(),(*c)();
 
    a = &func1;
    if ((*a)() == 1)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
    b = a;
    if ((*b)() == 1)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
    c = func1;
    if ((*c)() == 1)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    struct grtag func2(),(*a)(),(*b)(),(*c)();
 
    a = &func2;
    if (((*a)()).a == 1)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
    b = a;
    if (((*b)()).b == 2)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
    c = func2;
    if (((*c)()).a == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    int val = 1,*a,*b;
 
    a = &val;
    if (*a == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
    b = a;
    if (*b == 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    static struct { int a; } st = { 1 },*a,*b;
 
    a = &st;
    if (a->a == 1)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
    b = a;
    if (b->a == 1)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int func1()
{
  return 1;
}
 
struct grtag func2()
{
  static struct grtag st = { 1,2 };
 
  return st;
}
