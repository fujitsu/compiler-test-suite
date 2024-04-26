#include  <stdio.h>
#include  <string.h>

int main()
{
  #define NEG_SUP   0
  #define SHORT_INF 1
  #define SHORT_SUP 256
  #define LONG_INF  257

  char s[8][300]                                              ;
  int  in  = NEG_SUP                                           ;
  int  isi = SHORT_INF                                         ;
  int  iss = SHORT_SUP                                         ;
  int  il  = LONG_INF                                          ;
  int  lcount                                                     ;
  for  (lcount = 0 ;lcount < 8 ;s[lcount++][0] = '\0')      ;

  printf("********** TEST STARTED **********\n")      ;


  if ( *(char *)memset(s[0],'U',in) == '\0' )
    printf("********** 01 OK **********\n")          ;
  else
    printf("********** 01 NG **********\n")          ;


  if ( *(char *)memset(s[1],'U',isi) == 'U' )
    printf("********** 02 OK **********\n")          ;
  else
    printf("********** 02 NG **********\n")          ;


  if ( *(char *)memset(s[2],'U',iss) == 'U' )
    printf("********** 03 OK **********\n")          ;
  else
    printf("********** 03 NG **********\n")          ;


  if ( *(char *)memset(s[3],'U',il) == 'U' )
    printf("********** 04 OK **********\n")          ;
  else
    printf("********** 04 NG **********\n")          ;


  if ( *(char *)memset(s[4],'U',NEG_SUP) == '\0' )
    printf("********** 05 OK **********\n")          ;
  else
    printf("********** 05 NG **********\n")          ;


  if ( *(char *)memset(s[5],'U',SHORT_INF) == 'U' )
    printf("********** 06 OK **********\n")          ;
  else
    printf("********** 06 NG **********\n")          ;


  if ( *(char *)memset(s[6],'U',SHORT_SUP) == 'U' )
    printf("********** 07 OK **********\n")          ;
  else
    printf("********** 07 NG **********\n")          ;


  if ( *(char *)memset(s[7],'U',LONG_INF) == 'U' )
    printf("********** 08 OK **********\n")          ;
  else
    printf("********** 08 NG **********\n")          ;


  printf("********** TEST ENDED **********\n")        ;

}
