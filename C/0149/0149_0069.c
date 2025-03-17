#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char a = 1,b = 2,c;
 
    if ( a <= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a = 1,b = 2,c;
 
    if ( a <= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int a = 1l,b = 2l,c;
 
    if ( a <= b ) c = 1l; else c = 2l;
    if (c == 1l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int a = 1,b = 2,c;
 
    if ( a <= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char a = 1,b = 2,c;
 
    if ( a <= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int a = 1,b = 2,c;
 
    if ( a <= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int a = 1l,b = 2l,c;
 
    if ( a <= b ) c = 1l; else c = 2l;
    if (c == 1l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int a = 1,b = 2,c;
 
    if ( a <= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char a = 1u,b = 2u,c;
 
    if ( a <= b ) c = 1u; else c = 2u;
    if (c == 1u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int a = 1u,b = 2u,c;
 
    if ( a <= b ) c = 1u; else c = 2u;
    if (c == 1u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int a = 1ul,b = 2ul,c;
 
    if ( a <= b ) c = 1ul; else c = 2ul;
    if (c == 1ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int a = 1u,b = 2u,c;
 
    if ( a <= b ) c = 1u; else c = 2u;
    if (c == 1u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static struct {
        int a[2],b[2];
    } st = { 1,2,3,4 };
    int c;
 
    if ( st.a <= st.b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    static int vec[5],*a = &vec[2],*b = &vec[4],c;
 
    if ( a <= b ) c = 1 ; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    enum { emem0,emem1 } en1 = 0,en2 = 1;
    int c;
 
    if ( en1 <= en2 ) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    int func1(),c;
 
    if ( func1 <= func1) c = 1; else c = 2;
    if (c == 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int func1()
{
  return 1;
}
