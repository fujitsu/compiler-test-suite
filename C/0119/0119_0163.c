#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
          int   a,b,c;

  printf("********** SCPSI07 TEST START **********\n");
                a=5;
                b=12;
                c=a*b;

  if ( c == 60)
      printf("***** SCPSI07 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI07 - 01 ***** N   G *****\n");

  printf("********** SCPSI07 TEST  END  **********\n");
exit (0);
}
