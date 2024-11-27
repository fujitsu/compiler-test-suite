#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func1 (int x, int y);
int main()
{
          int   money,lost,total;

  printf("********** SCPSI04 TEST START **********\n");
          money=25000;
         lost=-3000;
         total=func1(money,lost);

  if ( total == 22000)
      printf("***** SCPSI04 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI04 - 01 ***** N   G *****\n");

  printf("********** SCPSI04 TEST  END  **********\n");
exit (0);
}
  int 
func1 (int x, int y)
{
     int   z;
     z=x+y;
 return(z);
}
