#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a,b = 1;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a,b = 1l;

    a = +b;
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a,b = 1;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a,b = 1;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a,b = 1;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a,b = 1l;

    a = +b;
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a,b = 1;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char b = 1u; int a;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int b = 1u; int a;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int b = 1ul; int a;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int b = 1u; int a;

    a = +b;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en,a;

    en = emem1;
    a = +en;
    if (a == emem1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
