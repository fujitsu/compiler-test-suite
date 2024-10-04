#include<stdio.h>
int f01(int);

int f02(int a) { return a; }
int main()
{
  printf("***** \n");
  {
    int a = 10;
    int b;
    int f01(int);
    b = f01(a);

    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 10;
    int b;
    int f02(int);
    b = f02(a);

    if (b == 10)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("***** \n");
}

int f01(int a) { return(a / 10); }
