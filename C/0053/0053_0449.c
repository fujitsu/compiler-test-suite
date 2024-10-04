#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
int main()
{
  printf("********** \n");
  {
    int a,b = 1;

    if (b != 1) a = 2; else a = 3;
    if (a == 3)
        printf("***** \n");
    if (b!=4) a = 5; else a = 6;
    if (a == 5)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); if (b != 1) a = 3; else a = 2;
    if (a == 2)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); if (b!=4) a = 6; else a = 5;
    if (a == 6)
        printf("***** \n");
  }
  {
    int a;

    a = ! 1;
    if (a == 0)
        printf("***** \n");
    a=!0;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a = ! a;
    if (a == 1)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 + 0 +m4(0); a=!a;
    if (a == 0)
        printf("***** \n");
  }
  {
    int a,b = -1;

    a = ~ b;
    if (a == 0)
        printf("***** \n");
    b = 0;
    a=~b;
    if (a == -1)
        printf("***** \n");
  }
  {
    int a = 7;

    a &= 3;
    if (a == 3)
        printf("***** \n");
    a&=2;
    if (a == 2)
        printf("***** \n");
    a = 5 + 0 + 0 + 0 + 0 +m4(0); a &= 3;
    if (a == 1)
        printf("***** \n");
    a = 9 + 0 + 0 + 0 + 0+0+m4(0); a&=12;
    if (a == 8)
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b && 1;
    if (a == 1)
        printf("***** \n");
    a=b&&0;
    if (a == 0)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = b && 1;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=b&&0;
    if (a == 0)
        printf("***** \n");
  }
  {
    int a = 7;

    a = a & 3;
    if (a == 3)
        printf("***** \n");
    a=a&1;
    if (a == 1)
        printf("***** \n");
    a = 7 + 0 + 0 + 0 +m4(0); a = a & 5;
    if (a == 5)
        printf("***** \n");
    a = 7 + 0 + 0 + 0 + 0+m4(0); a=a&6;
    if (a == 6)
        printf("***** \n");
  }
  {
    int a = 0;

    a |= 2;
    if (a == 2)
        printf("***** \n");
    a|=4;
    if (a == 6)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a |= 3;
    if (a == 3)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a|=5;
    if (a == 5)
        printf("***** \n");
  }
  {
    int a,b = 0;

    a = b || 1;
    if (a == 1)
        printf("***** \n");
    a=b||1;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = b || 1;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=b||1;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a = 0;

    a = a | 1;
    if (a == 1)
        printf("***** \n");
    a=a|3;
    if (a == 3)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = a | 5;
    if (a == 5)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=a|6;
    if (a == 6)
        printf("***** \n");
  }
  printf("********** \n");
}
