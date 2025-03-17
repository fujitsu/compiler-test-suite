#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func();
int main()
{
  int i;
  static int a[5] = { 1, 2, 3, 4, 5 };
 
  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM  CATEGORY   *\n");
  printf("*                            *\n");
  printf("******************************\n");
 
  i = func();
  if ( i==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
 
  i = 1 + ( 2+3 );
  if ( i==6 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
 
  i = a[2];
  if ( i==3 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
 
exit (0);
}
 
int func()
{
  return 1;
}
