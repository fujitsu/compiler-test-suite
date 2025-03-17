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
    int a = 10;
 
    a -= 2;
    if (a == 8)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
    a-=4;
    if (a == 4)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
    a = 10 + 0 + 0 + 0 + 0+m4(0); a -= 3;
    if (a == 7)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
    a = 10 + 0 + 0 + 0 + 0 +m4(0); a-=5;
    if (a == 5)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int a = 5;
 
    a --;
    if (a == 4)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
    a--;
    if (a == 3)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
    a = 5 + 0 + 0 + 0 + 0 +m4(0); a --;
    if (a == 4)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
    a = 5 + 0 + 0 + 0 + 0+0+m4(0); a--;
    if (a == 4)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    static struct { int a; } st = { 1 },*stp = &st;
    int a;
 
    a = stp -> a;
    if (a == 1)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
    a=stp->a;
    if (a == 1)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
    a = 0 + 0 + 0 +0+m4(0); a = stp -> a;
    if (a == 1)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=stp->a;
    if (a == 1)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    int a = 5;
 
    a = a - 1;
    if (a == 4)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
    a=a-3;
    if (a == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
    a = 5 + 0 + 0 + 0 +m4(0); a = a - 3;
    if (a == 2)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
    a = 9 + 0 + 0 + 0 + 0+m4(0); a=a-6;
    if (a == 3)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    int a = 4;
 
    a *= 2;
    if (a == 8)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
    a*=4;
    if (a == 32)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
    a = 2 + 0 + 0 + 0 + 0 +m4(0); a *= 3;
    if (a == 6)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
    a = 2 + 0 + 0 + 0 + 0 + m4(0); a*=4;
    if (a == 8)
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  {
    int a = 3;
 
    a = a * 3;
    if (a == 9)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
    a=a*2;
    if (a == 18)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
    a = 5 + 0 + 0 + 0 +m4(0); a = a * 3;
    if (a == 15)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
    a = 9 + 0 + 0 + 0 + 0+m4(0); a=a*6;
    if (a == 54)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  {
    int a = 32;
 
    a /= 2;
    if (a == 16)
        printf("***** CATEGORY - 25 ***** O K *****\n");
      else
        printf("***** CATEGORY - 25 ***** N G *****\n");
    a/=4;
    if (a == 4)
        printf("***** CATEGORY - 26 ***** O K *****\n");
      else
        printf("***** CATEGORY - 26 ***** N G *****\n");
    a = 9 + 0 + 0 + 0 + 0 +m4(0); a /= 3;
    if (a == 3)
        printf("***** CATEGORY - 27 ***** O K *****\n");
      else
        printf("***** CATEGORY - 27 ***** N G *****\n");
    a = 12 + 0 + 0 + 0 + 0 +m4(0); a/=4;
    if (a == 3)
        printf("***** CATEGORY - 28 ***** O K *****\n");
      else
        printf("***** CATEGORY - 28 ***** N G *****\n");
  }
  {
    int a = 12;
 
    a = a / 3;
    if (a == 4)
        printf("***** CATEGORY - 29 ***** O K *****\n");
      else
        printf("***** CATEGORY - 29 ***** N G *****\n");
    a=a/2;
    if (a == 2)
        printf("***** CATEGORY - 30 ***** O K *****\n");
      else
        printf("***** CATEGORY - 30 ***** N G *****\n");
    a = 9 + 0 + 0 + 0 +m4(0); a = a / 3;
    if (a == 3)
        printf("***** CATEGORY - 31 ***** O K *****\n");
      else
        printf("***** CATEGORY - 31 ***** N G *****\n");
    a = 8 + 0 + 0 + 0 + 0+m4(0); a=a/4;
    if (a == 2)
        printf("***** CATEGORY - 32 ***** O K *****\n");
      else
        printf("***** CATEGORY - 32 ***** N G *****\n");
  }
  {
    int a = 7;
 
    a %= 3;
    if (a == 1)
        printf("***** CATEGORY - 33 ***** O K *****\n");
      else
        printf("***** CATEGORY - 33 ***** N G *****\n");
    a%=4;
    if (a == 1)
        printf("***** CATEGORY - 34 ***** O K *****\n");
      else
        printf("***** CATEGORY - 34 ***** N G *****\n");
    a = 2 + 0 + 0 + 0 + 0 +m4(0); a %= 3;
    if (a == 2)
        printf("***** CATEGORY - 35 ***** O K *****\n");
      else
        printf("***** CATEGORY - 35 ***** N G *****\n");
    a = 4 + 0 + 0 + 0 + 0 + m4(0); a%=2;
    if (a == 0)
        printf("***** CATEGORY - 36 ***** O K *****\n");
      else
        printf("***** CATEGORY - 36 ***** N G *****\n");
  }
  {
    int a = 5;
 
    a = a % 3;
    if (a == 2)
        printf("***** CATEGORY - 37 ***** O K *****\n");
      else
        printf("***** CATEGORY - 37 ***** N G *****\n");
    a=a%3;
    if (a == 2)
        printf("***** CATEGORY - 38 ***** O K *****\n");
      else
        printf("***** CATEGORY - 38 ***** N G *****\n");
    a = 5 + 0 + 0 + 0 +m4(0); a = a % 3;
    if (a == 2)
        printf("***** CATEGORY - 39 ***** O K *****\n");
      else
        printf("***** CATEGORY - 39 ***** N G *****\n");
    a = 9 + 0 + 0 + 0 + 0+m4(0); a=a%6;
    if (a == 3)
        printf("***** CATEGORY - 40 ***** O K *****\n");
      else
        printf("***** CATEGORY - 40 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
