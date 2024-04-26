#include <stdio.h>

int main()
{
  #define iosi 0x00000002
  #define sosi 0x00004000
  #define ioi  0x00008000
  #define soi  0x40000000
  #define toi  0x80000000

  short int      si  = 3                                         ;
  short int      tsi                                             ;

  int            i   = 3                                         ;
  int            ti                                              ;


  printf("********** TEST STARTED **********\n")     ;

  tsi = si * iosi                                                ;
  if  (tsi == 6)
    printf("********** 01 OK **********\n")         ;
  else
    printf("********** 01 NG **********\n")         ;

  ti = si * sosi                                                 ;
  if  (ti == 0x0000c000)
    printf("********** 02 OK **********\n")         ;
  else
    printf("********** 02 NG **********\n")         ;

  ti = i * ioi                                                   ;
  if  (ti == 0x00018000)
    printf("********** 03 OK **********\n")         ;
  else
    printf("********** 03 NG **********\n")         ;

  ti = i * soi                                                   ;
  if  (ti == 0xc0000000)
    printf("********** 04 OK **********\n")         ;
  else
    printf("********** 04 NG **********\n")         ;

  ti = i * toi                                                   ;
  if  (ti == 0x80000000)
    printf("********** 05 OK **********\n")         ;
  else
    printf("********** 05 NG **********\n")         ;


  tsi = iosi * si                                                ;
  if  (tsi == 6)
    printf("********** 06 OK **********\n")         ;
  else
    printf("********** 06 NG **********\n")         ;

  ti = sosi * si                                                 ;
  if  (ti == 0x0000c000)
    printf("********** 07 OK **********\n")         ;
  else
    printf("********** 07 NG **********\n")         ;

  ti = ioi * i                                                   ;
  if  (ti == 0x00018000)
    printf("********** 08 OK **********\n")         ;
  else
    printf("********** 08 NG **********\n")         ;

  ti = soi * i                                                   ;
  if  (ti == 0xc0000000)
    printf("********** 09 OK **********\n")         ;
  else
    printf("********** 09 NG **********\n")         ;

  ti = toi * i                                                   ;
  if  (ti == 0x80000000)
    printf("********** 10 OK **********\n")         ;
  else
    printf("********** 10 NG **********\n")         ;


  printf("********** TEST ENDED **********\n")       ;

}
