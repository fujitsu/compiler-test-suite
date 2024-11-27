#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func1(int x, int y);
int main()
{
  static int               sa,sb,sd;
  static double                  sc;

  printf("********** SCPSI08 TEST START **********\n");

       sa=4;
       sb=-3;
       sc=6;

  if (sa == 4 && sb == -3 && sc == 6)
      printf("***** SCPSI08 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 01 ***** N   G *****\n");

  sd=func1(sa,sb);

  if (sd == 1)
      printf("***** SCPSI08 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 02 ***** N   G *****\n");

  printf("********** SCPSI08 TEST  END  **********\n");
exit (0);
}
int func1(x,y)

       int   x,y;

{
       int     z;

       z=x+y;
       return(z);
}
