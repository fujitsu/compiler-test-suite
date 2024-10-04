#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 4,b = 2;

    a -= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 4,b = 2;

    a -= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 4,b = 2l;

    a -= b;
    if (a == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 4,b = 2;

    a -= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 4,b = 2;

    a -= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 4,b = 2;

    a -= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 4,b = 2l;

    a -= b;
    if (a == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 4,b = 2;

    a -= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 4,b = 2u;

    a -= b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 4,b = 2u;

    a -= b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 4,b = 2ul;

    a -= b;
    if (a == 2ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 4,b = 2u;

    a -= b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int a[5] = { 1,2,3,4,5 },*p = &a[0],b = 1;

    p += 3;
    p -= b;
    if (*p == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
