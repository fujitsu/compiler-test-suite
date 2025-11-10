
















  #include <stdio.h>
  #include "001.h"

  #define OPER1 0
  #define OPER2 10

char *ptr2;




int main()
{



  int int_wk1;

  short int sint_wk1;
  short int sint_wk2;
  short int sint_wk3;
  short int sint_wk4;

  double dbl_wk1;

  long int lint_wk1;
  long int lint_wk2;
  long int lint_wk3;
  long int lint_wk4;
  long int lint_wk5;
  long int lint_wk6;
  long int lint_wk7;
  long int lint_wk8;
  long int lint_wk9;
  long int lint_wk10;
  long int lint_wk11;
  long int lint_wk12;
  long int lint_wk13;
  long int lint_wk14;
  long int lint_wk15;
  long int lint_wk16;
  long int lint_wk17;

  char chaarr[]={'a','b','c','d','e','f','g','h','i','j','k','l','\0'};







  header("","iteration-statement (for statement) test proc.");




{
  sint_wk4 = 0;
  for (sint_wk1 = 1, sint_wk2 = 2, sint_wk3 = 3;
       (sint_wk1 %= 10) | (sint_wk2 %= 2) & (sint_wk3 %= 2);
       sint_wk1 += 1, sint_wk2 += 2, sint_wk3 += 3){
    switch (sizeof(sint_wk1)){
      case 1  : sint_wk1 = sint_wk1 + 1;
                break;
      case 2  : sint_wk1 = sint_wk1 + 2;
                break;
      case 3  : sint_wk1 = sint_wk1 + 3;
                break;
      default : sint_wk1 = sint_wk1 + 4;
                break;
    }
    sint_wk4 ++;
    if(sint_wk4 > 30)
      break;
  }
  sichck("SIF01_01",3,sint_wk4,
        "for statement and switch statement combination test");
}





{
  for (int_wk1 = 0;
       OPER1;
       OPER2);

  ichck("SIF01_02",0,int_wk1,
        "for statement and nothing expression combination test");
}





{
  dbl_wk1 = 1.0000;
  for (sizeof(dbl_wk1);
       !dbl_wk1;
       "abcde");

  dchck("SIF01_03",1.0000,dbl_wk1,0.0000,
        "for statement and nothing expression combination test");
}





{
  lint_wk1 = 3;
  lint_wk2 = 3;
  lint_wk3 = 3;
  lint_wk4 = 3;
  lint_wk5 = 3;
  lint_wk6 = 3;
  lint_wk7 = 3;
  lint_wk8 = 3;
  lint_wk9 = 3;
  lint_wk10 = 3;
  lint_wk11 = 3;
  lint_wk12 = 3;
  lint_wk13 = 3;
  lint_wk14 = 3;
  lint_wk15 = 3;
  lint_wk16 = 3;
  lint_wk17 = 0;

#if !defined(os2)
  for (lint_wk1 * 3;
       lint_wk1 >> 1;
       lint_wk1){
    lint_wk1--;                                           
    for (lint_wk2 / 2;
         lint_wk2 >> 1;
         lint_wk2){
      lint_wk2--;                                         
      for (lint_wk3 % 1;
           lint_wk3 >> 1;
           lint_wk3){
        lint_wk3--;                                       
        for (lint_wk4 * 3;
             lint_wk4 >> 1;
             lint_wk4){
          lint_wk4--;                                     
          for (lint_wk5 / 2;
               lint_wk5 >> 1;
               lint_wk5){
            lint_wk5--;                                   
            for (lint_wk6 % 1;
                 lint_wk6 >> 1;
                 lint_wk6){
              lint_wk6--;                                 
              for (lint_wk7 * 3;
                   lint_wk7 >> 1;
                   lint_wk7){
                lint_wk7--;                               
                for (lint_wk8 / 2;
                     lint_wk8 >> 1;
                     lint_wk8){
                  lint_wk8--;                             
#endif
                  for (lint_wk9 % 1;
                       lint_wk9 >> 1;
                       lint_wk9){
                    lint_wk9--;                           
                    for (lint_wk10 * 3;
                         lint_wk10 >> 1;
                         lint_wk10){
                      lint_wk10--;                       
                      for (lint_wk11 / 2;
                           lint_wk11 >> 1;
                           lint_wk11){
                        lint_wk11--;                     
                        for (lint_wk12 % 1;
                             lint_wk12 >> 1;
                             lint_wk12){
                          lint_wk12--;                   
                          for (lint_wk13 * 3;
                               lint_wk13 >> 1;
                               lint_wk13){
                            lint_wk13--;                 
                            for (lint_wk14 / 2;
                                 lint_wk14 >> 1;
                                 lint_wk14){
                              lint_wk14--;               
                              for (lint_wk15 % 1;
                                   lint_wk15 >> 1;
                                   lint_wk15){
                                lint_wk15--;             
                                for (lint_wk16 * 3;
                                     lint_wk16 >> 1;
                                     lint_wk16){
                                  lint_wk16--;           
                                  lint_wk17++;
                                }
                                lint_wk17++;
                              }
                              lint_wk17++;
                            }
                            lint_wk17++;
                          }
                          lint_wk17++;
                        }
                        lint_wk17++;
                      }
                      lint_wk17++;
                    }
                    lint_wk17++;
                  }
#if !defined(os2)
                  lint_wk17++;
                }
                lint_wk17++;
              }
              lint_wk17++;
            }
            lint_wk17++;
          }
          lint_wk17++;
        }
        lint_wk17++;
      }
      lint_wk17++;
    }
    lint_wk17++;
  }
#endif
#if defined(os2)
  lichck("SIF01_04",16L,lint_wk17,
         "for statement and compound statement combination test");
#else
  lichck("SIF01_04",32L,lint_wk17,
         "for statement and compound statement combination test");
#endif
}





{
  int_wk1 = 0;
  for(chaarr[2]* 2;
       ;
      chaarr[2] == chaarr[3]){
    if (int_wk1 > 10)
      break;
    int_wk1 ++;
  }
  ichck("SIF01_05",11,int_wk1,
        "for statement and selection statement combination test");
}





{
  int_wk1 = 0;
  for(chaarr + 1;
      sizeof(chaarr[int_wk1]);
      chaarr[int_wk1] * 2){
    if (chaarr[int_wk1] == '\0')
      break;
    int_wk1 ++;
  }
  ichck("SIF01_06",12,int_wk1,
        "for statement and expression statement combination test");
}




  header("","for statement test proc.") ;
}
