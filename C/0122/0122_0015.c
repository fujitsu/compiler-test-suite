#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int a;
int main()
{
  extern int a ;
  int  *b,c ;

  printf("********** 02 TEST START **********\n");

  a = 100;

  c = 0;
  b = &c;

  if (a == 100)
      printf("***** 02 - 01 ***** O   K *****\n");
    else
      printf("***** 02 - 01 ***** N   G *****\n");
  if (*b == 0)
      printf("***** 02 - 02 ***** O   K *****\n");
    else
      printf("***** 02 - 02 ***** N   G *****\n");
  if (c == 0)
      printf("***** 02 - 03 ***** O   K *****\n");
    else
      printf("***** 02 - 03 ***** N   G *****\n");

  printf("********** 02 TEST  END  **********\n");
exit (0);
}
