#include <stdio.h>



int a,b;
int main()
{
  int i,j,k,c;

  printf("********** 25 TEST START **********\n");

  a = 1;
  b = 2;
  c = 3;


  i = (a) ? b:c;

  if (i == 2)
      printf("***** 25 - 01 ***** O   K *****\n");
    else
      printf("***** 25 - 01 ***** N   G *****\n");

  printf("********** 25 TEST  END  **********\n");
}
