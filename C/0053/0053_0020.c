#include<stdio.h>
int main()
{
  printf("**********  TEST START **********\n");
  {
    int a = 1,b = 2;

    a,b;
    if (a == 1)
        printf("*****  - 01 ***** O K *****\n");
      else
        printf("*****  - 01 ***** N G *****\n");
  }
  {
    int a = 1,b = 2;

    a += b;
    if (a == 3)
        printf("*****  - 02 ***** O K *****\n");
      else
        printf("*****  - 02 ***** N G *****\n");
  }
  {
    int a = 1,b = 2,c = 3,d;

    d = a ? b++ : c;
    if (d == 2 && b == 3)
        printf("*****  - 03 ***** O K *****\n");
      else
        printf("*****  - 03 ***** N G *****\n");
  }
  {
    int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("*****  - 04 ***** O K *****\n");
      else
        printf("*****  - 04 ***** N G *****\n");
  }
  {
    int a = 1,b = 2,c = 3,d = 4,e;

    e = a < b++ ? c : d;
    if (e == 3 && b == 3)
        printf("*****  - 05 ***** O K *****\n");
      else
        printf("*****  - 05 ***** N G *****\n");
  }
  {
    int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("*****  - 06 ***** O K *****\n");
      else
        printf("*****  - 06 ***** N G *****\n");
  }
  {
    int a,b = 0,c = 1;

    a = b++ || c;
    if (a == 1 && b == 1)
        printf("*****  - 07 ***** O K *****\n");
      else
        printf("*****  - 07 ***** N G *****\n");
  }
  {
    int a,b = 0,c = 1;

    a = b || c;
    if (a == 1)
        printf("*****  - 08 ***** O K *****\n");
      else
        printf("*****  - 08 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 1;

    a = b++ && c;
    if (a == 1 && b == 2)
        printf("*****  - 09 ***** O K *****\n");
      else
        printf("*****  - 09 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 1;

    a = b && c;
    if (a == 1)
        printf("*****  - 10 ***** O K *****\n");
      else
        printf("*****  - 10 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b++ | c;
    if (a == 3 && b == 2)
        printf("*****  - 11 ***** O K *****\n");
      else
        printf("*****  - 11 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b | c;
    if (a == 3)
        printf("*****  - 12 ***** O K *****\n");
      else
        printf("*****  - 12 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b++ ^ c;
    if (a == 3 && b == 2)
        printf("*****  - 13 ***** O K *****\n");
      else
        printf("*****  - 13 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b ^ c;
    if (a == 3)
        printf("*****  - 14 ***** O K *****\n");
      else
        printf("*****  - 14 ***** N G *****\n");
  }
  {
    int a,b = 3,c = 2;

    a = b++ & c;
    if (a == 2 && b == 4)
        printf("*****  - 15 ***** O K *****\n");
      else
        printf("*****  - 15 ***** N G *****\n");
  }
  {
    int a,b = 3,c = 2;

    a = b & c;
    if (a == 2)
        printf("*****  - 16 ***** O K *****\n");
      else
        printf("*****  - 16 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 1;

    a = b++ == c;
    if (a != 0 && b == 2)
        printf("*****  - 17 ***** O K *****\n");
      else
        printf("*****  - 17 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 1;

    a = b == c;
    if (a != 0)
        printf("*****  - 18 ***** O K *****\n");
      else
        printf("*****  - 18 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 1;

    a = b++ < c;
    if (a == 0 && b == 3)
        printf("*****  - 19 ***** O K *****\n");
      else
        printf("*****  - 19 ***** N G *****\n");
  }
  {
    int a,b = 3,c = 5;

    a = b >= c;
    if (a == 0)
        printf("*****  - 20 ***** O K *****\n");
      else
        printf("*****  - 20 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 1;

    a = b++ << c;
    if (a == 4 && b == 3)
        printf("*****  - 21 ***** O K *****\n");
      else
        printf("*****  - 21 ***** N G *****\n");
  }
  {
    int a,b = 4,c = 1;

    a = b >> c;
    if (a == 2)
        printf("*****  - 22 ***** O K *****\n");
      else
        printf("*****  - 22 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 1;

    a = b++ - c;
    if (a == 1 && b == 3)
        printf("*****  - 23 ***** O K *****\n");
      else
        printf("*****  - 23 ***** N G *****\n");
  }
  {
    int a,b = 4,c = 1;

    a = b + c;
    if (a == 5)
        printf("*****  - 24 ***** O K *****\n");
      else
        printf("*****  - 24 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 1;

    a = b++ * c;
    if (a == 2 && b == 3)
        printf("*****  - 25 ***** O K *****\n");
      else
        printf("*****  - 25 ***** N G *****\n");
  }
  {
    int a,b = 4,c = 3;

    a = b % c;
    if (a == 1)
        printf("*****  - 26 ***** O K *****\n");
      else
        printf("*****  - 26 ***** N G *****\n");
  }
  printf("**********  TEST  END  **********\n");
}
