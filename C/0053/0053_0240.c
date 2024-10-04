#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 1,c = 2;

    a = b * 1 * ( c * 2 );
    if (a == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b & 3 & ( c & 6 );
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b ^ 3 ^ ( c ^ 6 );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2;

    a = b | 3 | ( c | 6 );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b * c * ( d * 1 );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b & c & ( d & 6 );
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b ^ c ^ ( d ^ 6 );
    if (a == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b | c | ( d | 6 );
    if (a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
