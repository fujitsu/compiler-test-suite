#include<stdio.h>
int main()
{
  printf("**********  TEST START **********\n");
  {
    static int a,b[5] = { 0,1,2,3,4 },*c = &b[1];

    a = c + 3 - ( c + 2 );
    if (a == 1)
        printf("*****  - 01 ***** O K *****\n");
      else
        printf("*****  - 01 ***** N G *****\n");
  }
  {
    static int *a,b[5] = { 0,1,2,3,4 },*c = &b[2],d = 2;

    a = c + 2 - ( d - 1 );
    if (*a == 3)
        printf("*****  - 02 ***** O K *****\n");
      else
        printf("*****  - 02 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 3;

    a = b + 2 + ( c + 1 );
    if (a == 8)
        printf("*****  - 03 ***** O K *****\n");
      else
        printf("*****  - 03 ***** N G *****\n");
  }
  printf("**********  TEST  END  **********\n");
}
