#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 + ( c * d );
    if (a == 8)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 - ( c * d );
    if (a == -4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 + ( c * d );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 - ( c * d );
    if (a == -6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( c * 2 );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( c * 2 );
    if (a == -2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( c * 2 );
    if (a == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( c * 2 );
    if (a == -4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( 2 * c );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( 2 * c );
    if (a == -2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( 2 * c );
    if (a == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( 2 * c );
    if (a == -4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b + 1 + ( 2 * 3 );
    if (a == 8)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b + 1 - ( 2 * 3 );
    if (a == -4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b - 1 + ( 2 * 3 );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b - 1 - ( 2 * 3 );
    if (a == -6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
