#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  signed         char i1_1                                      ;
  signed         char i1_2  = 2u                                ;
  signed         char i1_3  = 3u                                ;

  unsigned       char ui1_1                                     ;
  unsigned       char ui1_2 = 2u                                ;
  unsigned       char ui1_3 = 3u                                ;

  unsigned short int  ui2_1                                     ;
  unsigned short int  ui2_2 = 2u                                ;
  unsigned short int  ui2_3 = 3u                                ;

  printf("********** SCODV2 TEST STARTED **********\n")     ;


  i1_1 = i1_2 < i1_3                                   ;
  if (i1_1 != 0)        
    printf("********** SCODV02 - 01 OK **********\n")       ;
  else
    printf("********** SCODV02 - 01 NG **********\n")       ;

  i1_1 = i1_2 <= i1_3                               ;
  if (i1_1 != 0)        
    printf("********** SCODV02 - 02 OK **********\n")       ;
  else
    printf("********** SCODV02 - 02 NG **********\n")       ;

  i1_1 = i1_2 == i1_3                                  ;
  if (i1_1 == 0)         
    printf("********** SCODV02 - 03 OK **********\n")       ;
  else
    printf("********** SCODV02 - 03 NG **********\n")       ;

  i1_1 = i1_2 >= i1_3                                 ;
  if (i1_1 == 0)         
    printf("********** SCODV02 - 04 OK **********\n")       ;
  else
    printf("********** SCODV02 - 04 NG **********\n")       ;

  i1_1 = i1_2 >  i1_3                                  ;
  if (i1_1 == 0)         
    printf("********** SCODV02 - 05 OK **********\n")       ;
  else
    printf("********** SCODV02 - 05 NG **********\n")       ;

  i1_1 = i1_2 != i1_3                                 ;
  if (i1_1 != 0)        
    printf("********** SCODV02 - 06 OK **********\n")       ;
  else
    printf("********** SCODV02 - 06 NG **********\n")       ;


  printf("********** SCODV2 TEST ENDED **********\n")       ;

exit (0);
}
