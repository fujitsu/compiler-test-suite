#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1;

    a = b + 1 + 2;
    if (a == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b + 1 - 2;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b - 1 + 2;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b - 1 - 2;
    if (a == -2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + c;
    if (a == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - c;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + c;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - c;
    if (a == -2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
