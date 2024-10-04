#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a;

    a = 1 + 2;
    if (a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a;

    a = 3 - 2;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b;

    b = 3 + a;
    if (b == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b;

    b = 3 - 2;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b;

    b = 3 * a;
    if (b == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b;

    b = 3 & a;
    if (b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b;

    b = 3 ^ a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2,b;

    b = 3 | a;
    if (b == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
