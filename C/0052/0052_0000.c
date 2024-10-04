#include <stdio.h>



int main()
{
  int a;
  int b;
  int c;

  printf("********** 01 TEST START **********\n");

  b=1 ;
  a=b+1 ;
  c=a+b ;

  if (a == 2)
      printf("***** 01 - 01 ***** O   K *****\n");
    else
      printf("***** 01 - 01 ***** N   G *****\n");
  if (b == 1)
      printf("***** 01 - 02 ***** O   K *****\n");
    else
      printf("***** 01 - 02 ***** N   G *****\n");
  if (c == 3)
      printf("***** 01 - 03 ***** O   K *****\n");
    else
      printf("***** 01 - 03 ***** N   G *****\n");

  printf("********** 01 TEST  END  **********\n");
}
