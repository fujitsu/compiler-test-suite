#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func1 (int q);
int main()
{
           int   a,b,c,x,y;

  printf("********** SCPSI05 TEST START **********\n");
                a=1;
                b=2;

  x=func1(a);
  y=func1(b);
          c=x+y;
  if ( c == 12)
      printf("***** SCPSI05 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI05 - 01 ***** N   G *****\n");

  printf("********** SCPSI05 TEST  END  **********\n");

exit (0);
}
  int 
func1 (int q)
{
          int   x;
          x=q*4;
  return (x);

}
  int 
func2 (int r)
{
          int   y;
          y=r*4;
  return (y);

}

