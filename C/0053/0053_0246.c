#include<stdio.h>
struct tag1 { int a; int b; };
int main()
{
  printf("********** \n");
  {
    int f11(void),f12(void),c,a = 1;

    c = (a ? f11 : f12)();
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct tag1 f21(void),f22(void),c; int a = 1;

    c = (a ? f21 : f22)();
    if (c.a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val1 = 1,val2 = 2,c,a = 1;
    int *volatile p31 = &val1,*volatile p32 = &val2;

    c = *(a ? p31 : p32);
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct tag1 st1 = { 1,2 },st2 = { 3,4 },c;
    struct tag1 *volatile p41 = &st1,*volatile p42 = &st2;
    int a = 1;

    c = *(a ? p41 : p42);
    if (c.a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int volatile v51 = 1,v52 = 2; int c,a = 1;

    c = a ? v51 : v52;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { printf("\n");
  }
  printf("********** \n");
}

int f11(void)
{
  int a = 1;

  return a;
}

int f12(void)
{
  int a = 2;

  return a;
}

struct tag1 f21(void)
{
  struct tag1 a = { 1,2 };

  return a;
}

struct tag1 f22(void)
{
  struct tag1 a =  { 3,4 };

  return a;
}
