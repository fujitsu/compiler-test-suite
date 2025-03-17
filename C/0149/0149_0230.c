#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x +
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)
#define m4(x) m3(x) + m3(x)
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    int a = 1;
 
    a ^= 3;
    if (a == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
    a^=4;
    if (a == 6)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a ^= 2;
    if (a == 2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0); a^=5;
    if (a == 5)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int a,b = 3;
 
    a = b ^ 2;
    if (a == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
    a=b^6;
    if (a == 5)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = b ^ 3;
    if (a == 0)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=b^5;
    if (a == 6)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 5,d = 7;
 
    a = (b==2) ? c : d;
    if (a == 5)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
    a=(b==6)?c:d;
    if (a == 7)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    int a,b = 6,c = 3,d = 9;
 
    a = (b==2) ? c : d;
    if (a == 9)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
    a=(b==6)?c:d;
    if (a == 3)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    int a = 0,b = 5;
 
    for ( ; ; ) if (a >= b) break; else a+=1;
    if (a == 5)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
    for (;;) if (a <= 0) break; else a-=1;
    if (a == 0)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    {
      int f(int, ...),a;
 
      a = f(1);
      if (a == 1)
          printf("***** CATEGORY - 15 ***** O K *****\n");
        else
          printf("***** CATEGORY - 15 ***** N G *****\n");
    }
    {
      int f(int,...),a;
 
      a = f(2);
      if (a == 2)
          printf("***** CATEGORY - 16 ***** O K *****\n");
        else
          printf("***** CATEGORY - 16 ***** N G *****\n");
    }
    {
      int a = 0 + 0 +0+m4(0),f(int, ...);
 
      a = f(3);
      if (a == 3)
          printf("***** CATEGORY - 17 ***** O K *****\n");
        else
          printf("***** CATEGORY - 17 ***** N G *****\n");
    }
    {
      int a = 0 + 0 + 0+m4(0),f(int,...);
 
      a = f(4);
      if (a == 4)
          printf("***** CATEGORY - 18 ***** O K *****\n");
        else
          printf("***** CATEGORY - 18 ***** N G *****\n");
    }
    {
      int a = 0 + 0 + m4(0),f(int, ...);
 
      a = f(5);
      if (a == 5)
          printf("***** CATEGORY - 19 ***** O K *****\n");
        else
          printf("***** CATEGORY - 19 ***** N G *****\n");
    }
    {
      int a = 0 + 0 +  m4(0),f(int,...);
 
      a = f(6);
      if (a == 6)
          printf("***** CATEGORY - 20 ***** O K *****\n");
        else
          printf("***** CATEGORY - 20 ***** N G *****\n");
    }
  }
  {
    static struct { int a; } st = { 1 }; int a;
 
    a = st . a;
    if (a == 1)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
    a=st.a;
    if (a == 1)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
    a = 0 + 0 + 0 + 0+m4(0); a = st . a;
    if (a == 1)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a=st.a;
    if (a == 1)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = ( b , c );
    if (a == 2)
        printf("***** CATEGORY - 25 ***** O K *****\n");
      else
        printf("***** CATEGORY - 25 ***** N G *****\n");
    a=(c,b);
    if (a == 1)
        printf("***** CATEGORY - 26 ***** O K *****\n");
      else
        printf("***** CATEGORY - 26 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int f(int a,...) { return a; }
