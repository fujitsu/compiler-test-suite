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
    int a = 1;

    a <<= 1;
    if (a == 2)
        printf("***** \n");
    a<<=1;
    if (a == 4)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 + 0 +m4(0); a <<= 3;
    if (a == 8)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 + 0 + m4(0); a<<=5;
    if (a == 32)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 + 0+m4(0); a <<= 2;
    if (a == 4)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 + 0 +m4(0); a<<=4;
    if (a == 16)
        printf("***** \n");
  }
  {
    int a = 1;

    a = a << 1;
    if (a == 2)
        printf("***** \n");
    a=a<<1;
    if (a == 4)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 +m4(0); a = a << 3;
    if (a == 8)
        printf("***** \n");
    a = 1 + 0 + 0 + 0 + 0+m4(0); a=a<<5;
    if (a == 32)
        printf("***** \n");
  }
  {
    int a,b = 1;

    if (b <= 2) a = 1; else a = 3;
    if (a == 1)
        printf("***** \n");
    if (b<=0) a=4; else a=5;
    if (a == 5)
        printf("***** \n");
    b = 5 + 0 + 0 + 0 +m4(0); if (b <= 1) a = 3; else a = 4;
    if (a == 4)
        printf("***** \n");
    b = 7 + 0 + 0 + 0 + m4(0); if (b<=9) a=1; else a=8;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a,b = 1;

    if (b < 2) a = 1; else a = 3;
    if (a == 1)
        printf("***** \n");
    if (b<0) a=4; else a=5;
    if (a == 5)
        printf("***** \n");
    b = 5 + 0 + 0 + 0 +m4(0); if (b < 1) a = 3; else a = 4;
    if (a == 4)
        printf("***** \n");
    b = 7 + 0 + 0 + 0 + m4(0); if (b<9) a=1; else a=8;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a = 8;

    a >>= 1;
    if (a == 4)
        printf("***** \n");
    a>>=1;
    if (a == 2)
        printf("***** \n");
    a = 8 + 0 + 0 + 0 + 0 +m4(0); a >>= 3;
    if (a == 1)
        printf("***** \n");
    a = 32 + 0 + 0 + 0 + 0 +m4(0); a>>=5;
    if (a == 1)
        printf("***** \n");
    a = 4 + 0 + 0 + 0 + 0+m4(0); a >>= 2;
    if (a == 1)
        printf("***** \n");
    a = 16 + 0 + 0 + 0 + 0+m4(0); a>>=4;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a = 4;

    a = a >> 1;
    if (a == 2)
        printf("***** \n");
    a=a>>1;
    if (a == 1)
        printf("***** \n");
    a = 8 + 0 + 0 + 0 +m4(0); a = a >> 3;
    if (a == 1)
        printf("***** \n");
    a = 32 + 0 + 0 + 0 +0+m4(0); a=a>>5;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a,b = 1;

    if (b >= 2) a = 1; else a = 3;
    if (a == 3)
        printf("***** \n");
    if (b>=0) a=4; else a=5;
    if (a == 4)
        printf("***** \n");
    b = 5 + 0 + 0 + 0 +m4(0); if (b >= 1) a = 3; else a = 4;
    if (a == 3)
        printf("***** \n");
    b = 7 + 0 + 0 + 0 + m4(0); if (b>=9) a=1; else a=8;
    if (a == 8)
        printf("***** \n");
  }
  {
    int a,b = 1;

    if (b > 2) a = 1; else a = 3;
    if (a == 3)
        printf("***** \n");
    if (b>0) a=4; else a=5;
    if (a == 4)
        printf("***** \n");
    b = 5 + 0 + 0 + 0 +m4(0); if (b > 1) a = 3; else a = 4;
    if (a == 3)
        printf("***** \n");
    b = 7 + 0 + 0 + 0 + m4(0); if (b>9) a=1; else a=8;
    if (a == 8)
        printf("***** \n");
  }
  printf("********** \n");
}
