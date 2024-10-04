#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 2,b = 1;

    a >>= b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b = 1;

    a >>= b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 2l,b = 1l;

    a >>= b;
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 2,b = 1;

    a >>= b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 2,b = 1;

    a >>= b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 2,b = 1;

    a >>= b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 2l,b = 1l;

    a >>= b;
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 2,b = 1;

    a >>= b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 2u,b = 1u;

    a >>= b;
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 2u,b = 1u;

    a >>= b;
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 2ul,b = 1ul;

    a >>= b;
    if (a == 1lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 2u,b = 1u;

    a >>= b;
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
