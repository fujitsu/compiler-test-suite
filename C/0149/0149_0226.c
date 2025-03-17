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
    int a,b = 2,c = 5,d = 7;
 
    a = ( b + c ) * d;
    if (a == 49)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
    a=(b+c)/d;
    if (a == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    int a,b = 5,c = 7,d = 3;
 
    a = ( b + c ) * d;
    if (a == 36)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
    a=(b+c)/d;
    if (a == 4)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    static int a,b[2]={1,2};
 
    a = b [ 1 ];
    if (a == 2)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
    a = b[0];
    if (a == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    static int a,b[2]={3,4};
 
    a = b [ 0 ];
    if (a == 3)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
    a = b[1];
    if (a == 4)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    int a = 1;
    {
      int a = 2;
    }
    if (a == 1)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
    a = 3;{int a = 4;}
    if (a == 3)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    int a = 5;
    {
      int a = 6;
    }
    if (a == 5)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
    a = 7;{int a = 8;}
    if (a == 7)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    int a,b = 1;
 
    if (b == 1) a = 2; else a = 3;
    if (a == 2)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
    if (b==4) a = 5; else a = 6;
    if (a == 6)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); if (b == 1) a = 3; else a = 2;
    if (a == 3)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); if (b==4) a = 6; else a = 5;
    if (a == 5)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    int a;
 
    a = 2;
    if (a == 2)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
    a=6;
    if (a == 6)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a = 3;
    if (a == 3)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a=5;
    if (a == 5)
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  {
    int a = 0;
 
    a += 2;
    if (a == 2)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
    a+=4;
    if (a == 6)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a += 3;
    if (a == 3)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a+=5;
    if (a == 5)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  {
    int a = 0;
 
    a ++;
    if (a == 1)
        printf("***** CATEGORY - 25 ***** O K *****\n");
      else
        printf("***** CATEGORY - 25 ***** N G *****\n");
    a++;
    if (a == 2)
        printf("***** CATEGORY - 26 ***** O K *****\n");
      else
        printf("***** CATEGORY - 26 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a ++;
    if (a == 1)
        printf("***** CATEGORY - 27 ***** O K *****\n");
      else
        printf("***** CATEGORY - 27 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a++;
    if (a == 1)
        printf("***** CATEGORY - 28 ***** O K *****\n");
      else
        printf("***** CATEGORY - 28 ***** N G *****\n");
  }
  {
    int a = 0;
 
    a = a + 1;
    if (a == 1)
        printf("***** CATEGORY - 29 ***** O K *****\n");
      else
        printf("***** CATEGORY - 29 ***** N G *****\n");
    a=a+3;
    if (a == 4)
        printf("***** CATEGORY - 30 ***** O K *****\n");
      else
        printf("***** CATEGORY - 30 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = a + 5;
    if (a == 5)
        printf("***** CATEGORY - 31 ***** O K *****\n");
      else
        printf("***** CATEGORY - 31 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=a+6;
    if (a == 6)
        printf("***** CATEGORY - 32 ***** O K *****\n");
      else
        printf("***** CATEGORY - 32 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
