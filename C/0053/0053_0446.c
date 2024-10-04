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
    int a,b = 2,c = 5,d = 7;

    a = ( b + c ) * d;
    if (a == 49)
        printf("***** \n");
    a=(b+c)/d;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a,b = 5,c = 7,d = 3;

    a = ( b + c ) * d;
    if (a == 36)
        printf("***** \n");
    a=(b+c)/d;
    if (a == 4)
        printf("***** \n");
  }
  {
    static int a,b[2]={1,2};

    a = b [ 1 ];
    if (a == 2)
        printf("***** \n");
    a = b[0];
    if (a == 1)
        printf("***** \n");
  }
  {
    static int a,b[2]={3,4};

    a = b [ 0 ];
    if (a == 3)
        printf("***** \n");
    a = b[1];
    if (a == 4)
        printf("***** \n");
  }
  {
    int a = 1;
    {
      int a = 2;
    }
    if (a == 1)
        printf("***** \n");
    a = 3;{int a = 4;}
    if (a == 3)
        printf("***** \n");
  }
  {
    int a = 5;
    {
      int a = 6;
    }
    if (a == 5)
        printf("***** \n");
    a = 7;{int a = 8;}
    if (a == 7)
        printf("***** \n");
  }
  {
    int a,b = 1;

    if (b == 1) a = 2; else a = 3;
    if (a == 2)
        printf("***** \n");
    if (b==4) a = 5; else a = 6;
    if (a == 6)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); if (b == 1) a = 3; else a = 2;
    if (a == 3)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); if (b==4) a = 6; else a = 5;
    if (a == 5)
        printf("***** \n");
  }
  {
    int a;

    a = 2;
    if (a == 2)
        printf("***** \n");
    a=6;
    if (a == 6)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a = 3;
    if (a == 3)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a=5;
    if (a == 5)
        printf("***** \n");
  }
  {
    int a = 0;

    a += 2;
    if (a == 2)
        printf("***** \n");
    a+=4;
    if (a == 6)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a += 3;
    if (a == 3)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a+=5;
    if (a == 5)
        printf("***** \n");
  }
  {
    int a = 0;

    a ++;
    if (a == 1)
        printf("***** \n");
    a++;
    if (a == 2)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a ++;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+0+m4(0); a++;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a = 0;

    a = a + 1;
    if (a == 1)
        printf("***** \n");
    a=a+3;
    if (a == 4)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = a + 5;
    if (a == 5)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=a+6;
    if (a == 6)
        printf("***** \n");
  }
  printf("********** \n");
}
