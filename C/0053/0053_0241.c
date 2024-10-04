#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b * 1 * ( c * d );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 6;

    a = b & 3 & ( c & d );
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 6;

    a = b ^ 3 ^ ( c ^ d );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 6;

    a = b | 3 | ( c | d );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b * 1 * 2;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b & 3 & 7;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b ^ 2 ^ 4;
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1;

    a = b | 5 | 4;
    if (a == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
