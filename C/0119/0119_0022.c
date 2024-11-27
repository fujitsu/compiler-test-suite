#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  volatile signed   char  i1_1,i1_2,i1_3                         ;
  volatile unsigned char  ui1_1,ui1_2,ui1_3                      ;
  volatile unsigned short int ui2_1,ui2_2,ui2_3                  ;

  printf("********** SCODV01 TEST STRTED **********\n")      ;


  i1_2 = 7                                                       ;
  i1_3 = 5                                                       ;

  i1_1 = i1_2 * i1_3                            ;
  if (i1_1 == 35)
    printf("********** SCODV01 - 01 OK **********\n")        ;
  else
    printf("********** SCODV01 - 01 NG **********\n")        ;

  i1_1 = i1_2 - i1_3                             ;
  if (i1_1 == 2)
    printf("********** SCODV01 - 02 OK **********\n")        ;
  else
    printf("********** SCODV01 - 02 NG **********\n")        ;

  i1_1 = i1_2 / i1_3                           ;
  if (i1_1 == 1)
    printf("********** SCODV01 - 03 OK **********\n")        ;
  else
    printf("********** SCODV01 - 03 NG **********\n")        ;

  i1_1 = i1_2 % i1_3                            ;
  if (i1_1 == 2)
    printf("********** SCODV01 - 04 OK **********\n")        ;
  else
    printf("********** SCODV01 - 04 NG **********\n")        ;


  ui1_2 = 7                                                      ;
  ui1_3 = 5                                                      ;

  ui1_1 = ui1_2 * ui1_3                        ;
  if (ui1_1 == 35)
    printf("********** SCODV01 - 05 OK **********\n")        ;
  else
    printf("********** SCODV01 - 05 NG **********\n")        ;

  ui1_1 = ui1_2 - ui1_3                        ;
  if (ui1_1 == 2)
    printf("********** SCODV01 - 06 OK **********\n")        ;
  else
    printf("********** SCODV01 - 06 NG **********\n")        ;

  ui1_1 = ui1_2 / ui1_3                      ;
  if (ui1_1 == 1)
    printf("********** SCODV01 - 07 OK **********\n")        ;
  else
    printf("********** SCODV01 - 07 NG **********\n")        ;

  ui1_1 = ui1_2 % ui1_3                      ;
  if (ui1_1 == 2)
    printf("********** SCODV01 - 08 OK **********\n")        ;
  else
    printf("********** SCODV01 - 08 NG **********\n")        ;

  ui2_2 = 7                                                      ;
  ui2_3 = 5                                                      ;

  ui2_1 = ui2_2 * ui2_3                         ;
  if (ui2_1 == 35)
    printf("********** SCODV01 - 09 OK **********\n")        ;
  else
    printf("********** SCODV01 - 09 NG **********\n")        ;

  ui2_1 = ui2_2 - ui2_3                          ;
  if (ui2_1 == 2)
    printf("********** SCODV01 - 10 OK **********\n")        ;
  else
    printf("********** SCODV01 - 10 NG **********\n")        ;

  ui2_1 = ui2_2 / ui2_3                       ;
  if (ui2_1 == 1)
    printf("********** SCODV01 - 11 OK **********\n")        ;
  else
    printf("********** SCODV01 - 11 NG **********\n")        ;

  ui2_1 = ui2_2 % ui2_3                          ;
  if (ui2_1 == 2)
    printf("********** SCODV01 - 12 OK **********\n")        ;
  else
    printf("********** SCODV01 - 12 NG **********\n")        ;


  printf("********** SCODV01 TEST ENDED **********\n")       ;

exit (0);
}
