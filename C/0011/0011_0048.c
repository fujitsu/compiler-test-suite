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

  printf("********** TEST STARTED **********\n")     ;
  

  i1_1 = i1_2 < i1_3                                   ;
  if (i1_1 != 0)        
    printf("********** 01 OK **********\n")       ;
  else
    printf("********** 01 NG **********\n")       ;

  i1_1 = i1_2 <= i1_3                                  ;
  if (i1_1 != 0)         
    printf("********** 02 OK **********\n")       ;
  else
    printf("********** 02 NG **********\n")       ;

  i1_1 = i1_2 == i1_3                                  ;
  if (i1_1 == 0)         
    printf("********** 03 OK **********\n")       ;
  else
    printf("********** 03 NG **********\n")       ;

  i1_1 = i1_2 >= i1_3                                  ;
  if (i1_1 == 0)         
    printf("********** 04 OK **********\n")       ;
  else
    printf("********** 04 NG **********\n")       ;

  i1_1 = i1_2 >  i1_3                                  ;
  if (i1_1 == 0)         
    printf("********** 05 OK **********\n")       ;
  else
    printf("********** 05 NG **********\n")       ;

  i1_1 = i1_2 != i1_3                                ;
  if (i1_1 != 0)         
    printf("********** 06 OK **********\n")       ;
  else
    printf("********** 06 NG **********\n")       ;

  
  printf("********** TEST ENDED **********\n")       ;

}
