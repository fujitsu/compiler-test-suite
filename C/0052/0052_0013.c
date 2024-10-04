#include <stdio.h>



int main()
{
  int a,b,c;

  printf("********** 14 TEST START **********\n");

  b = 1;
  c = 0;

  a=b||c;

  if (a == 1)
      printf("***** 14 - 01 ***** O   K *****\n");
    else
      printf("***** 14 - 01 ***** N   G *****\n");

  a=b&&c;

  if (a == 0)
      printf("***** 14 - 02 ***** O   K *****\n");
    else
      printf("***** 14 - 02 ***** N   G *****\n");

  printf("********** 14 TEST  END  **********\n");
}
