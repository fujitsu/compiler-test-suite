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

    a ^= 3;
    if (a == 2)
        printf("***** \n");
    a^=4;
    if (a == 6)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a ^= 2;
    if (a == 2)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0); a^=5;
    if (a == 5)
        printf("***** \n");
  }
  {
    int a,b = 3;

    a = b ^ 2;
    if (a == 1)
        printf("***** \n");
    a=b^6;
    if (a == 5)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = b ^ 3;
    if (a == 0)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=b^5;
    if (a == 6)
        printf("***** \n");
  }
  {
    int a,b = 2,c = 5,d = 7;

    a = (b==2) ? c : d;
    if (a == 5)
        printf("***** \n");
    a=(b==6)?c:d;
    if (a == 7)
        printf("***** \n");
  }
  {
    int a,b = 6,c = 3,d = 9;

    a = (b==2) ? c : d;
    if (a == 9)
        printf("***** \n");
    a=(b==6)?c:d;
    if (a == 3)
        printf("***** \n");
  }
  {
    int a = 0,b = 5;

    for ( ; ; ) if (a >= b) break; else a+=1;
    if (a == 5)
        printf("***** \n");
    for (;;) if (a <= 0) break; else a-=1;
    if (a == 0)
        printf("***** \n");
  }
  {
    {
      int f(int, ...),a;

      a = f(1);
      if (a == 1)
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      int f(int,...),a;

      a = f(2);
      if (a == 2)
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      int a = 0 + 0 +0+m4(0),f(int, ...);

      a = f(3);
      if (a == 3)
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      int a = 0 + 0 + 0+m4(0),f(int,...);

      a = f(4);
      if (a == 4)
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      int a = 0 + 0 + m4(0),f(int, ...);

      a = f(5);
      if (a == 5)
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      int a = 0 + 0 +  m4(0),f(int,...);

      a = f(6);
      if (a == 6)
          printf("***** \n");
        else
          printf("***** \n");
    }
  }
  {
    static struct { int a; } st = { 1 }; int a;

    a = st . a;
    if (a == 1)
        printf("***** \n");
    a=st.a;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0+m4(0); a = st . a;
    if (a == 1)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a=st.a;
    if (a == 1)
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = ( b , c );
    if (a == 2)
        printf("***** \n");
    a=(c,b);
    if (a == 1)
        printf("***** \n");
  }
  printf("********** \n");
}

int f(int a,...) { return a; }
