#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  static int   a       ;
  static int  *p=&a+1  ;
  static char *q="abc" ;


  printf("********** SCPII02 TEST START **********\n");

  if (p == &a+1 && *q == 'a')
      printf("***** SCPII02  ***** O   K *****\n");
  else
      {
      printf("***** SCPII02  ***** N   G *****\n");
      printf("  p=%x,&a+1=%x,q=%s,*q=%c \n",p,&a+1,q,*q) ;
      }

  printf("********** SCPII02 TEST  END  **********\n");

exit (0);
}
