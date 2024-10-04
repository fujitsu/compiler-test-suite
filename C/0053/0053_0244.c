#include<stdio.h>
struct grtag { int a; int b; };
int main()
{
  printf("********** \n");
  {
    int val = 1,*p = &val,**a,**b;

    a = &p;
    if (**a == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if (**b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct tag { int a; } st = { 1 };
    struct tag *p = &st,**a,**b;

    a = &p;
    if ((**a).a == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if ((**b).a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[2] = { 1,2 },(*a)[2],(*b)[2];

    a = &vec;
    if ((*a)[0] == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if ((*b)[1] == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct tag { int a; } vec[2] = { 1,2 };
    struct tag (*a)[2],(*b)[2];

    a = &vec;
    if (((*a)[1]).a == 2)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if (((*b)[0]).a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int func1(),(*a)(),(*b)(),(*c)();

    a = &func1;
    if ((*a)() == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if ((*b)() == 1)
        printf("***** \n");
      else
        printf("***** \n");
    c = func1;
    if ((*c)() == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct grtag func2(),(*a)(),(*b)(),(*c)();

    a = &func2;
    if (((*a)()).a == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if (((*b)()).b == 2)
        printf("***** \n");
      else
        printf("***** \n");
    c = func2;
    if (((*c)()).a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,*a,*b;

    a = &val;
    if (*a == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if (*b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int a; } st = { 1 },*a,*b;

    a = &st;
    if (a->a == 1)
        printf("***** \n");
      else
        printf("***** \n");
    b = a;
    if (b->a == 1)
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

struct grtag func2()
{
  static struct grtag st = { 1,2 };

  return st;
}
