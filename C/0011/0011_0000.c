#include <stdio.h>

int main()
{
  int a;
  int b;
  int c;

  printf("********** TEST START **********\n");

  b=1 ;
  a=b+1 ;
  c=a+b ;

  if (a == 2)
      printf("***** 01 ***** O   K *****\n");
    else
      printf("***** 01 ***** N   G *****\n");
  if (b == 1)
      printf("***** 02 ***** O   K *****\n");
    else
      printf("***** 02 ***** N   G *****\n");
  if (c == 3)
      printf("***** 03 ***** O   K *****\n");
    else
      printf("***** 03 ***** N   G *****\n");

  printf("********** TEST  END  **********\n");
}
