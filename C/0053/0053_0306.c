#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a,b = 2;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 2;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a,b = 2l;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a,b = 2;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a,b = 2;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a,b = 2;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a,b = 2l;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a,b = 2;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a,b = 2u;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a,b = 2u;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a,b = 2ul;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a,b = 2u;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int b[2] = { 3,4 };

    !b;
    if (b[0] == 3 && b[1] == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,a,*b = &val;

    a = !b;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en2 = 1; int a;

    a = !en2;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int func(),c;

    if (!func) c = 1; else c = func();
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int func()
{
  return 2;
}
