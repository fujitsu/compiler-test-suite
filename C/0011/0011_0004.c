#include <stdio.h>

int main()
{
  int          x,flag = 0 ;
  unsigned int a,b,c,d ;

  printf("********** TEST START **********\n");

  a = 1 ;
  x = 2 ;
  b = a << x ;
  c = b >> x ;
  x = 1 ;
  d = b >> x ;

  if (b != 4)
      {
      flag = 1 ;
      printf("***** 01 ***** N   G *****\n");
      }
  if (c != 1)
      {
      flag = 1 ;
      printf("***** 02 ***** N   G *****\n");
      }
  if (d != 2)
      {
      flag = 1 ;
      printf("***** 03 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** O   K *****\n");

  printf("********** TEST END   **********\n");


}
