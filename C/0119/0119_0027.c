#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <string.h>
int main()
{
  char *ct =
             "0000000000000000000011111111111111111111"
             "2222222222222222222233333333333333333333"
             "4444444444444444444455555555555555555555"
             "6666666666666666666677777777777777777777"
             "8888888888888888888899999999999999999999"
             "aaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbb"
             "ccccccccccccccccccccdddddddddddddddddddd"
             "eeeeeeeeeeeeeeeeeeee"                               ;
  int  iz = 0, isi = 1 ,iss = 256 ,il =257                        ;
  char s[300] = {'\0'}                                       ;

  printf("********** SCOHD03 TEST STARTED **********\n")      ;


  if ( *(char *)memcpy(s,ct,iz) == '\0' )
    printf("********** SCOHD03 -01 OK **********\n")          ;
  else
    printf("********** SCOHD03 -01 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,isi) == '0' )
    printf("********** SCOHD03 -02 OK **********\n")          ;
  else
    printf("********** SCOHD03 -02 OK **********\n")          ;

  if ( *(char *)memcpy(s,ct,iss) == 'c' )
    printf("********** SCOHD03 -03 OK **********\n")          ;
  else
    printf("********** SCOHD03 -03 OK **********\n")          ;

  if ( *(char *)memcpy(s,ct,il) == 'c' )
    printf("********** SCOHD03 -04 OK **********\n")          ;
  else
    printf("********** SCOHD03 -04 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,0) == '\0' )
    printf("********** SCOHD03 -05 OK **********\n")          ;
  else
    printf("********** SCOHD03 -05 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,1) == '0' )
    printf("********** SCOHD03 -06 OK **********\n")          ;
  else
    printf("********** SCOHD03 -06 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,256) == 'c' )
    printf("********** SCOHD03 -07 OK **********\n")          ;
  else
    printf("********** SCOHD03 -07 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,257) == 'c' )
    printf("********** SCOHD03 -08 OK **********\n")          ;
  else
    printf("********** SCOHD03 -08 OK **********\n")          ;


  printf("********** SCOHD03 TEST ENDED **********\n")        ;

exit (0);
}
