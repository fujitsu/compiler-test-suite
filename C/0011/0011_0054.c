#include  <stdio.h>
#include  <string.h>

int main()
{
  char    s[] = {'a','b','c','d','e','\0'}                   ;

  printf("********** TEST STARTED **********\n")      ;

  if ( !strcmp( strcpy(s,"abc"),"abc" )  )
    printf("********** 01 OK **********\n")          ;
  else
    printf("********** 01 NG **********\n")          ;

  if ( strlen(s) == strlen("abc") )
    printf("********** 02 OK **********\n")          ;
  else
    printf("********** 02 NG **********\n")          ;

  printf("********** TEST ENDED **********\n")        ;

}
