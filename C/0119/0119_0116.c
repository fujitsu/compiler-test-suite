#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
static union {
      char a ;
      int  b ;
      int  c[5] ;
      } x = { 'a' } ;
  printf("********** SCPII36 TEST START **********\n");

  if (x.a=='a' && x.c[1] == 0)
    printf("********** O  K   **********************\n");
  else
    printf("********** N  G   **********************\n");

  printf("********** SCPII36 TEST  END  **********\n");
  exit(0);
}
