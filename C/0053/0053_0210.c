#include<stdio.h>
volatile int f03();

const int f04();
int main()
{
  printf("***** \n");
  {
    volatile int f01();
    int a;
    a = f01();

    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    const int f02();
    int a;
    a = f02();

    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a;
    a = f03();

    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a;
    a = f04();

    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("***** \n");
}

volatile int f01() { return 1; }

const    int f02() { return 1; }

volatile int f03() { return 1; }

const    int f04() { return 1; }
