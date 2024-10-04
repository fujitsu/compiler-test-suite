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
    int a = 10;

    a -= 2;
    if (a == 8)
        printf("***** \n");
    a-=4;
    if (a == 4)
        printf("***** \n");
    a = 10 + 0 + 0 + 0 + 0+m4(0); a -= 3;
    if (a == 7)
        printf("***** \n");
    a = 10 + 0 + 0 + 0 + 0 +m4(0); a-=5;
    if (a == 5)
        printf("***** \n");
  }
  {
    int a = 5;

    a --;
    if (a == 4)
        printf("***** \n");
    a--;
    if (a == 3)
        printf("***** \n");
    a = 5 + 0 + 0 + 0 + 0 +m4(0); a --;
    if (a == 4)
        printf("***** \n");
    a = 5 + 0 + 0 + 0 + 0+0+m4(0); a--;
    if (a == 4)
        printf("***** \n");
  }
  {
    static struct { int a; } st = { 1 },*stp = &st;
    int a;

    a = stp -> a;
    if (a == 1)
        printf("***** \n");
    a=stp->a;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 +0+m4(0); a = stp -> a;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=stp->a;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a = 5;

    a = a - 1;
    if (a == 4)
        printf("***** \n");
    a=a-3;
    if (a == 1)
        printf("***** \n");
    a = 5 + 0 + 0 + 0 +m4(0); a = a - 3;
    if (a == 2)
        printf("***** \n");
    a = 9 + 0 + 0 + 0 + 0+m4(0); a=a-6;
    if (a == 3)
        printf("***** \n");
  }
  {
    int a = 4;

    a *= 2;
    if (a == 8)
        printf("***** \n");
    a*=4;
    if (a == 32)
        printf("***** \n");
    a = 2 + 0 + 0 + 0 + 0 +m4(0); a *= 3;
    if (a == 6)
        printf("***** \n");
    a = 2 + 0 + 0 + 0 + 0 + m4(0); a*=4;
    if (a == 8)
        printf("***** \n");
  }
  {
    int a = 3;

    a = a * 3;
    if (a == 9)
        printf("***** \n");
    a=a*2;
    if (a == 18)
        printf("***** \n");
    a = 5 + 0 + 0 + 0 +m4(0); a = a * 3;
    if (a == 15)
        printf("***** \n");
    a = 9 + 0 + 0 + 0 + 0+m4(0); a=a*6;
    if (a == 54)
        printf("***** \n");
  }
  {
    int a = 32;

    a /= 2;
    if (a == 16)
        printf("***** \n");
    a/=4;
    if (a == 4)
        printf("***** \n");
    a = 9 + 0 + 0 + 0 + 0 +m4(0); a /= 3;
    if (a == 3)
        printf("***** \n");
    a = 12 + 0 + 0 + 0 + 0 +m4(0); a/=4;
    if (a == 3)
        printf("***** \n");
  }
  {
    int a = 12;

    a = a / 3;
    if (a == 4)
        printf("***** \n");
    a=a/2;
    if (a == 2)
        printf("***** \n");
    a = 9 + 0 + 0 + 0 +m4(0); a = a / 3;
    if (a == 3)
        printf("***** \n");
    a = 8 + 0 + 0 + 0 + 0+m4(0); a=a/4;
    if (a == 2)
        printf("***** \n");
  }
  {
    int a = 7;

    a %= 3;
    if (a == 1)
        printf("***** \n");
    a%=4;
    if (a == 1)
        printf("***** \n");
    a = 2 + 0 + 0 + 0 + 0 +m4(0); a %= 3;
    if (a == 2)
        printf("***** \n");
    a = 4 + 0 + 0 + 0 + 0 + m4(0); a%=2;
    if (a == 0)
        printf("***** \n");
  }
  {
    int a = 5;

    a = a % 3;
    if (a == 2)
        printf("***** \n");
    a=a%3;
    if (a == 2)
        printf("***** \n");
    a = 5 + 0 + 0 + 0 +m4(0); a = a % 3;
    if (a == 2)
        printf("***** \n");
    a = 9 + 0 + 0 + 0 + 0+m4(0); a=a%6;
    if (a == 3)
        printf("***** \n");
  }
  printf("********** \n");
}
