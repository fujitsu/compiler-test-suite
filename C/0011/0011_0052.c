#include  <stdio.h>
#include  <string.h>

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

  printf("********** TEST STARTED **********\n")      ;


  if ( *(char *)memcpy(s,ct,iz) == '\0' )
    printf("********** 01 OK **********\n")          ;
  else
    printf("********** 01 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,isi) == '0' )
    printf("********** 02 OK **********\n")          ;
  else
    printf("********** 02 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,iss) == 'c' )
    printf("********** 03 OK **********\n")          ;
  else
    printf("********** 03 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,il) == 'c' )
    printf("********** 04 OK **********\n")          ;
  else
    printf("********** 04 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,0) == '\0' )
    printf("********** 05 OK **********\n")          ;
  else
    printf("********** 05 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,1) == '0' )
    printf("********** 06 OK **********\n")          ;
  else
    printf("********** 06 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,256) == 'c' )
    printf("********** 07 OK **********\n")          ;
  else
    printf("********** 07 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,257) == 'c' )
    printf("********** 08 OK **********\n")          ;
  else
    printf("********** 08 OK **********\n")          ;


  printf("********** TEST ENDED **********\n")        ;

}
