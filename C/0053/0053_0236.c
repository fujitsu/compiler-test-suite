#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 + ( c + d );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 + ( c - d );
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 - ( c + d );
    if (a == -3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 - ( c - d );
    if (a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 + ( c + d );
    if (a == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 + ( c - d );
    if (a == -1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 - ( c + d );
    if (a == -5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 - ( c - d );
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
