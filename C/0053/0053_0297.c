#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 3,b = 2;

    a &= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 3,b = 2;

    a &= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 3l,b = 2l;

    a &= b;
    if (a == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 3,b = 2;

    a &= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 3,b = 2;

    a &= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 3,b = 2;

    a &= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 3l,b = 2l;

    a &= b;
    if (a == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 3,b = 2;

    a &= b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 3u,b = 2u;

    a &= b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 3u,b = 2u;

    a &= b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 3ul,b = 2ul;

    a &= b;
    if (a == 2lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 3u,b = 2u;

    a &= b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}