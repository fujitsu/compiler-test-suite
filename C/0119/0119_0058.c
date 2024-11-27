#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  unsigned       int    ui3 = 3u                                 ;
  unsigned       int    tu                                       ;
  signed         int    ts                                       ;
  signed         int    si3 = 3                                  ;

  const          int    ci3 = 3                                  ;

  const unsigned int    cui1 = 1u                                ;
  const unsigned int    cui8 = 8u                                ;
  const   signed int    csi1 = 1                                 ;
  const   signed int    csi8 = 8                                 ;

  printf("********** SCOSN01 TEST STARTED **********\n")     ;


  tu = 1u << ui3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 01 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 01 NG **********\n")        ;

  ts = 1  << si3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 02 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 02 NG **********\n")        ;


  tu = cui1 << 3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 03 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 03 NG **********\n")        ;


  ts = csi1 << 3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 04 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 04 NG **********\n")          ;


  tu = 1u << ci3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 05 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 05 NG **********\n")          ;


  ts = 1  << ci3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 06 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 06 NG **********\n")          ;


  tu = 8u >> ui3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 07 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 07 NG **********\n")          ;


  ts = 8  >> si3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 08 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 08 NG **********\n")          ;


  tu = cui8 >> 3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 09 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 09 NG **********\n")          ;


  ts = csi8  >> 3                                                   ;
  if   (ts == 1)
    printf("********** SCOSN01 - 10 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 10 NG **********\n")          ;

  tu = 8u >> ci3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 11 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 11 NG **********\n")          ;


  ts = 8  >> ci3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 12 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 12 NG **********\n")          ;


  printf("********** SCOSN01 TEST STARTED **********\n")     ;
exit (0);
}
