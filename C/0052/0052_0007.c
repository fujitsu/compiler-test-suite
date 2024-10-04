#include <stdio.h>



int main()
{
  short int  a ;
  int        x ;

  printf("********** 08 TEST START **********\n");

  x=0;
  for (a=0; a<=10; ++a)
  {
    if (a==5) continue;
    x=x+1;
  }

  if (a == 11)
      printf("***** 08 - 01 ***** O   K *****\n");
    else
      printf("***** 08 - 01 ***** N   G *****\n");
  if (x == 10)
      printf("***** 08 - 02 ***** O   K *****\n");
    else
      printf("***** 08 - 02 ***** N   G *****\n");

  printf("********** 08 TEST  END  **********\n");
}
