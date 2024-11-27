#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include  <string.h>
int main()
{
  char    s[] = {'a','b','c','d','e','\0'}                   ;

  printf("********** SCOHD06 TEST STARTED **********\n")      ;

  if ( !strcmp( strcpy(s,"abc"),"abc" )  )
    printf("********** SCOHD06 -01 OK **********\n")          ;
  else
    printf("********** SCOHD06 -01 NG **********\n")          ;

  if ( strlen(s) == strlen("abc") )
    printf("********** SCOHD06 -02 OK **********\n")          ;
  else
    printf("********** SCOHD06 -02 NG **********\n")          ;

  printf("********** SCOHD06 TEST ENDED **********\n")        ;

exit (0);
}
