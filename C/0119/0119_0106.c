#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int   a       ;
int  *p=&a+1  ;
char *q="abc" ;
int main()
{
  printf("********** SCPII26 TEST START **********\n");

  if (p == &a+1 && *q == 'a')
      printf("***** SCPII26  ***** O   K *****\n");
  else
      {
      printf("***** SCPII26  ***** N   G *****\n");
      printf("  p=%x,&a+1=%x,q=%s,*q=%c \n",p,&a+1,q,*q) ;
      }

  printf("********** SCPII26 TEST  END  **********\n");

exit (0);
}
