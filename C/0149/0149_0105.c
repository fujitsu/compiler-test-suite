#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char a = 1,b;
 
    b = (char) a;
    if (b == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a = 1,b;
 
    b = (int) a;
    if (b == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int a = 1,b;
 
    b = (long int) a;
    if (b == 1)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int a = 1,b;
 
    b = (short int) a;
    if (b == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char a = 1,b;
 
    b = (signed char) a;
    if (b == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int a = 1,b;
 
    b = (signed int) a;
    if (b == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int a = 1,b;
 
    b = (signed long int) a;
    if (b == 1)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int a = 1,b;
 
    b = (signed short int) a;
    if (b == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char a = 1,b;
 
    b = (unsigned char) a;
    if (b == 1)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int a = 1,b;
 
    b = (unsigned int) a;
    if (b == 1)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int a = 1,b;
 
    b = (unsigned long int) a;
    if (b == 1)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int a = 1,b;
 
    b = (unsigned short int) a;
    if (b == 1)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static int a[2] = { 1,2 },*b;
 
    b = (int *) a;
    if (*b == 1)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    enum entag { en1, en2 } entag;
    int *a=0;
 
    entag = (enum entag) a;
    if (entag == 0)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    static struct { int a; int b; } st = { 1,2 };
 
    (void) st;
    if (st.a == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    static union { int a; int b; } un = { 1 };
 
    (void) un;
    if (un.b == 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    enum { emem0,emem1 } en = 0;
 
    (void) en;
    if (en == emem0)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    int f(int);
 
    (void) f;
    if (f(1) == 1)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  {
        printf("***** CATEGORY - 19 ***** O K *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int f(int a)
{
  return a;
}
