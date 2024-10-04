#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 1,b = 2;

    a,b;
    if (a == 1 && b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,b = 2;

    a,b;
    if (a == 1 && b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 1l,b = 2l;

    a,b;
    if (a == 1l && b == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 1,b = 2;

    a,b;
    if (a == 1 && b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 1,b = 2;

    a,b;
    if (a == 1 && b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 1,b = 2;

    a,b;
    if (a == 1 && b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 1l,b = 2l;

    a,b;
    if (a == 1l && b == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 1,b = 2;

    a,b;
    if (a == 1 && b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 1u,b = 2u;

    a,b;
    if (a == 1u && b == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 1u,b = 2u;

    a,b;
    if (a == 1u && b == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 1ul,b = 2ul;

    a,b;
    if (a == 1ul && b == 2ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 1u,b = 2u;

    a,b;
    if (a == 1u && b == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int a[2] = { 1,2 },b[2] = { 3,4 };

    a,b;
    if (a[0] == 1 && b[1] == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,*a = &val,*b = &val;

    a,b;
    if (*a == 1 && *b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int a; } st1 = { 1 },st2 = { 2 };

    (st1,st2).a;
    if (st1.a == 1 && st2.a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { int a; int b; } un1 = { 1 },un2 = { 2 };

    (un1,un2).a;
    if (un1.b == 1 && un2.b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en1 = 0,en2 = 1,c;

    c = (en1,en2);
    if (c == emem1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int func1(),func2(),a;

    a = (func1,func2)();
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    void fn1(),fn2(); int a = 0;

    fn1(&a),fn2(&a);
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int func1()
{
  return 1;
}

int func2()
{
  return 2;
}

void fn1(int *a)
{
  *a += 1;
}

void fn2(int *a)
{
  *a += 1;
}
