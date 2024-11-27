#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
union {
      char a ;
      int  b ;
      int  c[5] ;
      } x = { 'a' } ;
int main()
{
  printf("********** SCPII15 TEST START **********\n");

  if (x.a=='a' && x.c[1] == 0)
    printf("********** O  K   **********************\n");
  else
    printf("********** N  G   **********************\n");

  printf("********** SCPII15 TEST  END  **********\n");
exit (0);
}
