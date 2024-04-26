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

  printf("********** TEST STARTED **********\n")     ;

  /**************************************************************/
  /*                                                              */

  tu = 1u << ui3                                                 ;
  if   (tu == 8)
    printf("********** 01 OK **********\n")        ;
  else
    printf("********** 01 NG **********\n")        ;


  ts = 1  << si3                                                 ;
  if   (ts == 8)
    printf("********** 02 OK **********\n")        ;
  else
    printf("********** 02 NG **********\n")        ;


  tu = cui1 << 3                                                 ;
  if   (tu == 8)
    printf("********** 03 OK **********\n")        ;
  else
    printf("********** 03 NG **********\n")        ;


  ts = csi1 << 3                                                 ;
  if   (ts == 8)
    printf("********** 04 OK **********\n")          ;
  else
    printf("********** 04 NG **********\n")          ;


  tu = 1u << ci3                                                 ;
  if   (tu == 8)
    printf("********** 05 OK **********\n")          ;
  else
    printf("********** 05 NG **********\n")          ;


  ts = 1  << ci3                                                 ;
  if   (ts == 8)
    printf("********** 06 OK **********\n")          ;
  else
    printf("********** 06 NG **********\n")          ;


  tu = 8u >> ui3                                                 ;
  if   (tu == 1)
    printf("********** 07 OK **********\n")          ;
  else
    printf("********** 07 NG **********\n")          ;


  ts = 8  >> si3                                                 ;
  if   (ts == 1)
    printf("********** 08 OK **********\n")          ;
  else
    printf("********** 08 NG **********\n")          ;


  tu = cui8 >> 3                                                 ;
  if   (tu == 1)
    printf("********** 09 OK **********\n")          ;
  else
    printf("********** 09 NG **********\n")          ;


  ts = csi8  >> 3                                                   ;
  if   (ts == 1)
    printf("********** 10 OK **********\n")          ;
  else
    printf("********** 10 NG **********\n")          ;


  tu = 8u >> ci3                                                 ;
  if   (tu == 1)
    printf("********** 11 OK **********\n")          ;
  else
    printf("********** 11 NG **********\n")          ;


  ts = 8  >> ci3                                                 ;
  if   (ts == 1)
    printf("********** 12 OK **********\n")          ;
  else
    printf("********** 12 NG **********\n")          ;

  /*                                                            */
  /**************************************************************/

  printf("********** TEST STARTED **********\n")     ;
}
