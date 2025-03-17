
#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x +
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)
#define m4(x) m3(x) + m3(x)
int main()
{
  printf("********** M3ETOK05 TEST START **********\n");
  {
    int a = 1;

    a ^= 3;
    if (a == 2)
        printf("***** M3ETOK05 - 01 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 01 ***** N G *****\n");
    a^=4;
    if (a == 6)
        printf("***** M3ETOK05 - 02 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 02 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 +m4(0); a ^= 2;
    if (a == 2)
        printf("***** M3ETOK05 - 03 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 03 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0); a^=5;
    if (a == 5)
        printf("***** M3ETOK05 - 04 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 04 ***** N G *****\n");
  }
  {
    int a,b = 3;

    a = b ^ 2;
    if (a == 1)
        printf("***** M3ETOK05 - 05 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 05 ***** N G *****\n");
    a=b^6;
    if (a == 5)
        printf("***** M3ETOK05 - 06 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 06 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = b ^ 3;
    if (a == 0)
        printf("***** M3ETOK05 - 07 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 07 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0+m4(0); a=b^5;
    if (a == 6)
        printf("***** M3ETOK05 - 08 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 08 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 5,d = 7;

    a = (b==2) ? c : d;
    if (a == 5)
        printf("***** M3ETOK05 - 09 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 09 ***** N G *****\n");
    a=(b==6)?c:d;
    if (a == 7)
        printf("***** M3ETOK05 - 10 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 10 ***** N G *****\n");
  }
  {
    int a,b = 6,c = 3,d = 9;

    a = (b==2) ? c : d;
    if (a == 9)
        printf("***** M3ETOK05 - 11 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 11 ***** N G *****\n");
    a=(b==6)?c:d;
    if (a == 3)
        printf("***** M3ETOK05 - 12 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 12 ***** N G *****\n");
  }
  {
    int a = 0,b = 5;

    for ( ; ; ) if (a >= b) break; else a+=1;
    if (a == 5)
        printf("***** M3ETOK05 - 13 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 13 ***** N G *****\n");
    for (;;) if (a <= 0) break; else a-=1;
    if (a == 0)
        printf("***** M3ETOK05 - 14 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 14 ***** N G *****\n");
  }
  {
    {
      int f(int, ...),a;

      a = f(1);
      if (a == 1)
          printf("***** M3ETOK05 - 15 ***** O K *****\n");
        else
          printf("***** M3ETOK05 - 15 ***** N G *****\n");
    }
    {
      int f(int,...),a;

      a = f(2);
      if (a == 2)
          printf("***** M3ETOK05 - 16 ***** O K *****\n");
        else
          printf("***** M3ETOK05 - 16 ***** N G *****\n");
    }
    {
      int a = 0 + 0 +0+m4(0),f(int, ...);

      a = f(3);
      if (a == 3)
          printf("***** M3ETOK05 - 17 ***** O K *****\n");
        else
          printf("***** M3ETOK05 - 17 ***** N G *****\n");
    }
    {
      int a = 0 + 0 + 0+m4(0),f(int,...);

      a = f(4);
      if (a == 4)
          printf("***** M3ETOK05 - 18 ***** O K *****\n");
        else
          printf("***** M3ETOK05 - 18 ***** N G *****\n");
    }
    {
      int a = 0 + 0 + m4(0),f(int, ...);

      a = f(5);
      if (a == 5)
          printf("***** M3ETOK05 - 19 ***** O K *****\n");
        else
          printf("***** M3ETOK05 - 19 ***** N G *****\n");
    }
    {
      int a = 0 + 0 +  m4(0),f(int,...);

      a = f(6);
      if (a == 6)
          printf("***** M3ETOK05 - 20 ***** O K *****\n");
        else
          printf("***** M3ETOK05 - 20 ***** N G *****\n");
    }
  }
  {
    static struct { int a; } st = { 1 }; int a;

    a = st . a;
    if (a == 1)
        printf("***** M3ETOK05 - 21 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 21 ***** N G *****\n");
    a=st.a;
    if (a == 1)
        printf("***** M3ETOK05 - 22 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 22 ***** N G *****\n");
    a = 0 + 0 + 0 + 0+m4(0); a = st . a;
    if (a == 1)
        printf("***** M3ETOK05 - 23 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 23 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a=st.a;
    if (a == 1)
        printf("***** M3ETOK05 - 24 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 24 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = ( b , c );
    if (a == 2)
        printf("***** M3ETOK05 - 25 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 25 ***** N G *****\n");
    a=(c,b);
    if (a == 1)
        printf("***** M3ETOK05 - 26 ***** O K *****\n");
      else
        printf("***** M3ETOK05 - 26 ***** N G *****\n");
  }
  printf("********** M3ETOK05 TEST  END  **********\n");
}

int f(int a,...) { return a; }
