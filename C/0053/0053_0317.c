#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 1,b;

    b = (char) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,b;

    b = (int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 1,b;

    b = (long int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 1,b;

    b = (short int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 1,b;

    b = (signed char) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 1,b;

    b = (signed int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 1,b;

    b = (signed long int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 1,b;

    b = (signed short int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 1,b;

    b = (unsigned char) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 1,b;

    b = (unsigned int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 1,b;

    b = (unsigned long int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 1,b;

    b = (unsigned short int) a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int a[2] = { 1,2 },*b;

    b = (int *) a;
    if (*b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum entag { en1, en2 } entag;
    int *a=0;

    entag = (enum entag) a;
    if (entag == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int a; int b; } st = { 1,2 };

    (void) st;
    if (st.a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { int a; int b; } un = { 1 };

    (void) un;
    if (un.b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en = 0;

    (void) en;
    if (en == emem0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int f(int);

    (void) f;
    if (f(1) == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    void fn(int*); int a = 1;

    fn(&a);
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int f(int a)
{
  return a;
}

void fn(int *a)
{
  *a += 1;
}
