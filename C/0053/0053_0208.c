#include<stdio.h>
int f02(int);
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
    b = f02(a);

    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("***** \n");
}

int f01(int a) { return(a / 10); }

int f02(int a) { return(a - 9);  }
