#include <stdio.h>



int main()
{
  int a,b,c;

  printf("********** 31 TEST START **********\n");

  a = 100;
  b = 3;

  c = (double )a / (double )b;

  if (c == 33)
      printf("***** 31 - 01 ***** O   K *****\n");
    else
      printf("***** 31 - 01 ***** N   G *****\n");

  printf("********** 31 TEST  END  **********\n");
}
