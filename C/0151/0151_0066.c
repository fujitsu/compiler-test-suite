















  #include <stdio.h>
  #include "001.h"








int func1(void)
{
  return 1;
}




int main()
{



int int_wk1;
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

short int sint_wk1;



int func1(void);




  header("","jump-statement (break statement) test proc.") ;




  int_wk1 = 3;

  while (1){
    if (int_wk1)
      int_wk1 --;
    else
      break;
  }
  ichck("SJB01_01",0,int_wk1,
        "break statement and while statement combination test");




  lint_wk1 = 0;
  lint_wk2 = 0;
  lint_wk3 = 0;
  lint_wk17 = 0;

  lint_wk1 = 0;                                           
  do{
    lint_wk2 = 0;                                         
    do{
      lint_wk3 = 0;                                       
      do{
        lint_wk4 = 0;                                     
        do{
          lint_wk5 = 0;                                   
          do{
            lint_wk6 = 0;                                 
            do{
              lint_wk7 = 0;                               
              do{
                lint_wk8 = 0;                             
                do{
                  lint_wk9 = 0;                           
                  do{
                    lint_wk10 = 0;                       
                    do{
                      lint_wk11 = 0;                     
                      do{
                        lint_wk12 = 0;                   
                        do{
                          lint_wk13 = 0;                 
                          do{
                            lint_wk14 = 0;               
                            do{
                              lint_wk15 = 0;             
                              if (lint_wk14 == 1)
                                break;                   
                              do{
                                lint_wk16 = 0;           
                                do{
                                  lint_wk17++;           
                                  lint_wk16++;
                                }while(lint_wk16 < 2);
                                lint_wk15++;
                              }while(lint_wk15 < 2);
                              lint_wk14++;
                            }while(lint_wk14 < 2);
                            lint_wk13++;
                          }while(lint_wk13 < 2);
                          lint_wk12++;
                        }while(lint_wk12 < 2);
                        lint_wk11++;
                      }while(lint_wk11 < 2);
                      lint_wk10++;
                    }while(lint_wk10 < 2);
                    lint_wk9++;
                  }while(lint_wk9 < 2);
                  lint_wk8++;
                }while(lint_wk8 < 2);
                lint_wk7++;
              }while(lint_wk7 < 2);
              lint_wk6++;
            }while(lint_wk6 < 2);
            lint_wk5++;
          }while(lint_wk5 < 2);
          lint_wk4++;
        }while(lint_wk4 < 2);
        lint_wk3++;
      }while(lint_wk3 < 2);
      lint_wk2++;
    }while(lint_wk2 < 2);
    lint_wk1++;
  }while(lint_wk1 < 2);

  lichck("SJB01_02",32768L,lint_wk17,
        "break statement and do statement combination test");




  int_wk1 = 0;

  for ( ; ; ){
    int_wk1 += func1();
    if (int_wk1 == 10)
      break;
  }

  ichck("SJB01_03",10,int_wk1,
        "break statement and for statement combination test");




  sint_wk1 = 1;

  switch (sint_wk1){
    case 0  : sint_wk1 += 1;
    case 1  : sint_wk1 += 2;
    case 2  : sint_wk1 += 1;
              break;
    case 3  : sint_wk1 += 3;
              goto sjg16;
    default : sint_wk1 --;
  }
sjg16:
  sint_wk1 ++;

  ichck("SJB01_04",5,sint_wk1,
        "break statement and switch statement combination test");





  header("","break statement test proc.") ;
}
