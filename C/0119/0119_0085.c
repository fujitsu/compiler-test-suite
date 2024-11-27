#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

static int a = 1 ;
int        d = 4 ;
int main()
{
  static int b = 2 ;
  int        c = 3 ;


  printf("********** SCPII01 TEST START **********\n");

  if (a == 1 && b == 2 && c == 3 && d == 4)
      printf("***** SCPII01 ***** O   K *****\n");
  else
      printf("***** SCPII01 ***** N   G *****\n");

  printf("********** SCPII01 TEST  END  **********\n");

exit (0);
}
