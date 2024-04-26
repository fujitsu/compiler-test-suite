#include  <stdio.h>

union tag  {
           int i  ;
           int c[2] ;
           } ;
int main()
{
  static union tag u[2] = { 1,2 } ;


  printf("********** TEST START **********\n");

  if (u[0].i == 1 && u[1].i == 2)
      printf(" ***** O   K *****\n");
  else
      printf(" ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}
