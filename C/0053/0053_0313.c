#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 1l,b = 2l,c = 3l,d;

    d = a ? b : c;
    if (d == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 1l,b = 2l,c = 3l,d;

    d = a ? b : c;
    if (d == 2l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 1u,b = 2u,c = 3u,d;

    d = a ? b : c;
    if (d == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 1u,b = 2u,c = 3u,d;

    d = a ? b : c;
    if (d == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 1ul,b = 2ul,c = 3ul,d;

    d = a ? b : c;
    if (d == 2ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 1u,b = 2u,c = 3u,d;

    d = a ? b : c;
    if (d == 2u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int a[2] = { 1,2 },b[2] = { 3,4 };
    static int c[2] = { 5,6 },d;

    d = ( a ? b : c )[1];
    if (d == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val1 = 1,val2 = 2,*a = &val1,*b = &val1,*c = &val2,*d;

    d = a ? b : c;
    if (*d == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { a,b } en = 1;
    struct { int a; } st1 = { 1 },st2 = { 2 },c;

    c = en ? st1 : st2;
    if (c.a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { a,b } en = 1;
    union { int a; int b; } un1 = { 1 },un2 = { 2 },c;

    c = a ? un1 : un2;
    if (c.b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { a,b } en = 1;
    enum { emem0,emem1 } en1 = 0,en2 = 1,c;

    c = en ? en1 : en2;
    if (c == emem0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { a,b } en = 1;
    int f1(),f2(),c;

    c = ( en ? f1 : f2 )();
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { a,b } en = 1;
    void f3(),f4(); int c = 0;

    en ? f3(&c) : f4(&c);
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int f1()
{
  return 1;
}

int f2()
{
  return 2;
}

void f3(c) int *c;
{
  *c = 1;
}

void f4(c) int *c;
{
  *c = 2;
}
