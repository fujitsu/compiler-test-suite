#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1,c = 2;

    a = b * 1 * c;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 3;

    a = b & 5 & c;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 4;

    a = b ^ 2 ^ c;
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 4;

    a = b | 2 | c;
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b * 1 * ( c + d );
    if (a == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b & 1 & ( c - d );
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b ^ 2 ^ ( c * d );
    if (a == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 6,d = 3;

    a = b | 4 | ( c / d );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
