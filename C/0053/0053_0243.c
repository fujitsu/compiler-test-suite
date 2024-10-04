#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1,c = 2;

    a = b * ( c * 1 );
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 3;

    a = b & ( c & 5 );
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b ^ ( c ^ 1 );
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b | ( c | 4 );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + c * ( d * 1 );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 2,c = 1,d = 3;

    a = b - c & ( d & 1 );
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b * 2 ^ ( c ^ 1 );
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = 4 / 2 | ( b | 3 );
    if (a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
