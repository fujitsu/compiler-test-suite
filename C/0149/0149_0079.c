#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    static struct { char a; } st = { 1 };
    char c;
 
    c = st.a;
    if (c == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    static union { int a; } un = { 1 };
    int c;
 
    c = un.a;
    if (c == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    static union { long int a; } un = { 1l };
    long int c;
 
    c = un.a;
    if (c == 1l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    static union { short int a; } un = { 1 };
    short int c;
 
    c = un.a;
    if (c == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    static union { signed char a; } un = { 1 };
    signed char c;
 
    c = un.a;
    if (c == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    static union { signed int a; } un = { 1 };
    signed int c;
 
    c = un.a;
    if (c == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    static union { signed long int a; } un = { 1l };
    signed long int c;
 
    c = un.a;
    if (c == 1l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    static union { signed short int a; } un = { 1 };
    signed short int c;
 
    c = un.a;
    if (c == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    static union { unsigned char a; } un = { 1u };
    unsigned char c;
 
    c = un.a;
    if (c == 1u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    static union { unsigned int a; } un = { 1u };
    unsigned int c;
 
    c = un.a;
    if (c == 1u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    static union { unsigned long int a; } un = { 1ul };
    unsigned long int c;
 
    c = un.a;
    if (c == 1ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    static union { unsigned short int a; } un = { 1u };
    unsigned short int c;
 
    c = un.a;
    if (c == 1u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static union { int a[2]; } un = { 1,2 };
    int c;
 
    c = *un.a;
    if (c == 1)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    static union { int *a; } un;
    static int vec[5] = { 1,2,3,4,5 },c;
 
    un.a = vec;
    c = *un.a;
    if (c == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    static union {
        struct { int a; } st;
    } un = { 1 };
    int c;
 
    c = un.st.a;
    if (c == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    static union {
        union { int a; } inun;
    } un = { 1 };
    int c;
 
    c = un.inun.a;
    if (c == 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    static union {
        enum { emem0,emem1 } en;
    } un = { 1 };
    int c;
 
    c = un.en;
    if (c == emem1)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
