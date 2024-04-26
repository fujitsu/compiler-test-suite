#include  <stdio.h>

union tag {
          int  i ;
          char c[4] ;
          } ;

union tag u = { 1 } ;
int main()
{

  printf("********** TEST START **********\n");

  if (u.i == 1)
      printf(" ***** O   K *****\n");
  else
      printf(" ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}
