#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct sttag { int a; int b; };
union  untag { int a; int b; };
enum   entag { emem0, emem1  };
 
int fun(void);
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char a = 1;
 
    (a);
    if (a == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a = 1;
 
    (a);
    if (a == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int a = 1l;
 
    (a);
    if (a == 1l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int a = 1;
 
    (a);
    if (a == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char a = 1;
 
    (a);
    if (a == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int a = 1;
 
    (a);
    if (a == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int a = 1l;
 
    (a);
    if (a == 1l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int a = 1;
 
    (a);
    if (a == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char a = 1u;
 
    (a);
    if (a == 1u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int a = 1u;
 
    (a);
    if (a == 1u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int a = 1ul;
 
    (a);
    if (a == 1ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int a = 1u;
 
    (a);
    if (a == 1u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static int vec[2] = { 1,2 },a;
 
    a = (vec)[0];
    if (a == 1)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int val = 1,*ptr = &val,a;
 
    a = *(ptr);
    if (a == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    static struct sttag st = { 1,2 }; int a;
 
    a = (st).a;
    if (a == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    static union untag un = { 1 }; int a;
 
    a = (un).a;
    if (a = 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    enum entag en1 = 0; int a;
 
    a = (en1);
    if (a == emem0)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    int a;
 
    a = (fun)();
    if (a == 1)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int fun(void)
{
  return (1);
}
