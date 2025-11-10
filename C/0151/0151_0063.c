
















  #include <stdio.h>
  #include "001.h"




int main()
{



  int int_wk1;
  int int_wk2;
  int int_wk3;
  int int_wk4;

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

  unsigned short int unsint1;
  unsigned short int unsint2;
  unsigned short int unsint3;
  unsigned short int unsint4;
  unsigned short int unsint5;
  unsigned short int unsint6;
  unsigned short int unsint7;
  unsigned short int unsint8;
  unsigned short int unsint9;

  char *chaptr07;







  header("","iteration-statement (for statement) test proc no.2.");





{
  int intarr[] = {1,2,3,4,5,0};
  int *intptr;

  int_wk1 = 9;
  int_wk2 = 4;
  int_wk3 = 3;
  int_wk4 = 0;
  intptr = intarr;
  for (int_wk1 = int_wk1 << 1,
       int_wk2 = int_wk2 << 1,
       int_wk3 = int_wk3 << 1;
       *intptr !=
       (int_wk1 & int_wk2 & int_wk3 & 5);
       intptr++){
    switch (int_wk1){
      case 1  : int_wk1 = int_wk1 + 1;
                break;
      case 2  : int_wk1 = int_wk1 + 2;
                break;
      case 3  : int_wk1 = int_wk1 + 3;
                break;
      default : int_wk1 = int_wk1 + 4;
                break;
    }
    if ((int_wk4 % 6) == 0)
      intptr = intarr;
    int_wk4 ++;
  }
  ichck("SIF01_07",5,int_wk4,
        "for statement and switch statement combination test");
}





{
  lint_wk1 = 1;
  lint_wk2 = 1;
  lint_wk3 = 1;
  lint_wk4 = 1;
  lint_wk5 = 1;
  lint_wk6 = 1;
  lint_wk7 = 1;
  lint_wk8 = 1;
  lint_wk9 = 1;
  lint_wk10 = 1;
  lint_wk11 = 1;
  lint_wk12 = 1;
  lint_wk13 = 1;
  lint_wk14 = 1;
  lint_wk15 = 1;
  lint_wk16 = 1;
  lint_wk17 = 0;

#if !defined(os2)
  for (lint_wk1 <= 1;
       lint_wk1 == lint_wk1 % 3;
      ){
    lint_wk1++;                                           
    for (lint_wk2 >= 1;
         lint_wk2 == lint_wk2 * 1;
        ){
      for (lint_wk3 < 1;
           lint_wk3 == lint_wk3 / 1;
          ){
        for (lint_wk4 > 1;
             lint_wk4 != lint_wk4 * 2;
            ){
          for (lint_wk5 <= 1;
               lint_wk5 != lint_wk5 / 2;
              ){
            for (lint_wk6 >= 1;                           
                 lint_wk6 == lint_wk6 % 2;
                ){
              for (lint_wk7 < 1;
                   lint_wk7 != lint_wk7 * 3;              
                  ){
                for (lint_wk8 > 1;                        
                     lint_wk8 != lint_wk8 / 3;
                    ){
                  lint_wk9 = 1;
#endif
                  for (lint_wk9 <= 1;                     
                       lint_wk9 == lint_wk9 % 3;
                      ){
                    lint_wk9++;
                    for (lint_wk10 >= 1;                 
                         lint_wk10 != lint_wk10 * 4;
                        ){
                      for (lint_wk11 < 1;                
                           lint_wk11 != lint_wk11 / 4;
                          ){
                        for (lint_wk12 > 1;              
                             lint_wk12 == lint_wk12 % 4;
                            ){
                          for (lint_wk13 <= 1;           
                               lint_wk13 != lint_wk13 * 5;
                              ){
                            for (lint_wk14 >= 1;         
                                 lint_wk14 != lint_wk14 / 5;
                                ){
                              for (lint_wk15 < 1;        
                                   lint_wk15 == lint_wk15 % 5;
                                  ){
                                do{                      
                                  lint_wk17++;
                                  break;
                                }while(lint_wk16 != lint_wk16 * 6);
                                break;
                              }
                              break;
                            }
                            break;
                          }
                          break;
                        }
                        break;
                      }
                      break;
                    }
                  }
#if !defined(os2)
                  break;
                }
                break;
              }
              break;
            }
            break;
          }
          break;
        }
        break;
      }
      break;
    }
  }
#endif
#if defined(os2)
  lichck("SIF01_08",2L,lint_wk17,
         "for statement into for statement test");
#else
  lichck("SIF01_08",4L,lint_wk17,
         "for statement into for statement test");
#endif
}





{
  int_wk1 = 0;
  chaptr07 = "12345";

  for (chaptr07 == 0; *chaptr07++; *chaptr07 << 1){
    switch (*chaptr07){
      case '0' : int_wk1 = int_wk1;
                 break;
      case '1' : int_wk1 = int_wk1 + 1;
                 break;
      case '2' : int_wk1 = int_wk1 + 2;
                 break;
      case '3' : int_wk1 = int_wk1 + 3;
                 break;
      case '4' : int_wk1 = int_wk1 + 4;
                 break;
      case '5' : int_wk1 = int_wk1 + 5;
                 break;
      default  : int_wk1 = int_wk1 + 100;
                 break;
    }
  }
  ichck("SIF01_09",114,int_wk1,
      "for statement and switch statement combination test");
}





{
  unsint1 = 3;
  unsint2 = 5;
  unsint3 = 9;
  unsint4 = 5;
  unsint5 = 2;
  unsint6 = 5;
  unsint7 = 2;
  unsint8 = 2;
  unsint9 = 6;
  int_wk1 = 0;

  for (unsint1; unsint1; unsint1 %= unsint2){             
    for (unsint2; unsint1 < 6; unsint1 &= unsint3){       
      for (unsint3; unsint1 < 10; unsint1 ^= unsint4){    
        for (unsint4; unsint1 < 20; unsint1 <<= unsint5){ 
          for (unsint5; unsint1 > 5; unsint1 *= unsint6){ 
            for (unsint6; unsint1 > 5; unsint1 /= unsint7){
              for (unsint7; unsint1 > 1; unsint1 >>= unsint8){
                for (unsint8; unsint1 < 8; unsint1 |= unsint9){
                  int_wk1++;                              
                  if (int_wk1 > 5)
                    break;
                }
              }
            }
          }
          unsint1 -= 1; 
        }
      }
      unsint1 += 1;
    }
    unsint1 -= 3;
  }
  ichck("SIF01_10",6,int_wk1,
         "for statement and jump statement combination test");
}





{
  float flo_01 = 10.62f;
  float flo_02 = 2.42f;
  float flo_03 = 1.56f;

  for (1.2345f; flo_01 > flo_02 + flo_03; flo_01 > flo_02){
    flo_03 += 1.05f;
    if (flo_03 < 5.98f)
      continue;
    else 
      flo_02 += 2.38f;
  }
  fchck("SIF01_11",6.81f,flo_03,0.00,
        "for statement and jump statement combination test");
}





{
  int_wk1 = 0;
  for("int_wk1 = 0";
      !"int_wk1 < (int_wk1 + 100)";
      int_wk1 += 5) ;

  ichck("SIF01_12",0,int_wk1,
        "for statement and nothing statement combination test");
}





{
  char charr13[] = { 'A','B','C','D','E','F','G','H','I',
                     'J','K','L','M','N','O','P','Q','R',
                     'S','T','U','V','W','X','Y','Z','\0' };
  char ch_asc = 'A';

  int_wk1 = 0;
  for( ;
      'Z' > ch_asc;
      'A'>> 1){
    ch_asc = charr13[++int_wk1];
    if ((ch_asc == '\0') || (int_wk1 > 27))
      break;
  }
  cchck("SIF01_13",'Z',ch_asc,
        "for statement and selection statement combination test");
}




  header("","for statement test proc no.2.") ;
}
