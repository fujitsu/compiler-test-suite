#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a,b = 2l;

    a = b;
    if (a == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a,b = 2l;

    a = b;
    if (a == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a,b = 2u;

    a = b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a,b = 2u;

    a = b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a,b = 2ul;

    a = b;
    if (a == 2ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a,b = 2u;

    a = b;
    if (a == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int *a,b[2] = { 1,2 };

    a = b;
    if (*a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,*a,*b = &val;

    a = b;
    if (*a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int a; } st1,st2 = { 2 };

    st1 = st2;
    if (st1.a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { int a; } un1,un2 = { 1 };

    un1 = un2;
    if (un1.a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en1,en2 = 1;

    en1 = en2;
    if (en1 == emem1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int (*func1)(),func();

    func1 = func;
    if ((*func1)() == 2)
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
