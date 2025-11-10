
















  #include <stdio.h>
  #include "001.h"








int func1(int i_wk1)
{
  return 1;
}




int main()
{



  int int_wk1;
  int int_wk2;
  int int_wk3;
  short int sint_wk1;

  char arrtbl[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
                   21,22,23,24,25,0};

  int func1(int);








  header("","jump-statement (goto statement) test proc.") ;




  int_wk1 = 3;
  int_wk2 = 1;

  if (int_wk1 >> 2 > 0)
    goto sjg01;
  else
    goto sjg02;

  switch (int_wk2){
    case 0 : int_wk2 = 1;
             break;
    sjg01  : int_wk2 += int_wk2;
    case 1 :  ;
             int_wk2 += int_wk2 + int_wk2 + int_wk2;
             break;
    sjg02  : int_wk2 += int_wk2 + int_wk2;
             goto sjg01;
             break;
    default: int_wk2 = 0;
  }

  ichck("SJG01_01",24,int_wk2,
        "into labeled statement test");




  int_wk1 = 0;

  if (*(&arrtbl[25]))
    int_wk1 ++ ;
  else if (int_wk1 % 2 != 0)       
    for (int_wk1 = 0; int_wk1 <= 2; int_wk1 ++);
  else if (int_wk1 % 2 != 0)       
    for (int_wk1 = 0; int_wk1 <= 3; int_wk1 ++);
  else if(int_wk1 % 2 == 0){       
    for (int_wk1 = 0; int_wk1 <= 4; int_wk1 ++); 
    goto sjg03;                    
    if (int_wk1 < 5)               
      for (int_wk1 = 0; int_wk1 <= 5; int_wk1 ++);
    else if(int_wk1 % 2 != 0){     
      for ( ; int_wk1 <= 6; int_wk1 ++);
      if (int_wk1 / 3 < 2)         
        for (int_wk1 = 0; int_wk1 <= 7; int_wk1 ++);
      else if ((int_wk1 >> 1 == 0) || 
               (! int_wk1))
        for (int_wk1 = 0; int_wk1 <= 8; int_wk1 ++);
      else if (func1(int_wk1) != 0);
      else{                        
        for (int_wk1 = 0; int_wk1 <= 10; int_wk1 ++);
        if ((int_wk1 == 0) ||      
            (int_wk1 == 1) ||
            (int_wk1 == 2) ||
            (int_wk1 == 3) ||
            (int_wk1 == 4) ||
            (int_wk1 == 5) ||
            (int_wk1 == 6) ||
            (int_wk1 == 7) ||
            (int_wk1 == 8) ||
            (int_wk1 == 9))
          for (int_wk1 = 0; int_wk1 <= 11; int_wk1 ++);
        else if ((0 <= int_wk1) && 
                 (11 > int_wk1))
          for (int_wk1 = 0; int_wk1 <= 12; int_wk1 ++);
        else if ((17 <= int_wk1 + 5)|| 
                 (11 >= int_wk1 + 5))
sjg03 :                            
          for (int_wk1 = 0; int_wk1 <= 13; int_wk1 ++); 
        else if ((int_wk1 != 0) && 
                 (int_wk1 != 1) &&
                 (int_wk1 != 2) &&
                 (int_wk1 != 3) &&
                 (int_wk1 != 4) &&
                 (int_wk1 != 5) &&
                 (int_wk1 != 6) &&
                 (int_wk1 != 7) &&
                 (int_wk1 != 8) &&
                 (int_wk1 != 9) &&
                 (int_wk1 != 10) &&
                 (int_wk1 != 11) &&
                 (int_wk1 != 12) &&
                 (int_wk1 != 13) &&
                 (int_wk1 != 14) &&
                 (int_wk1 != 15))
          for (int_wk1 = 0; int_wk1 <= 14; int_wk1 ++);
        else if (int_wk1 == 0)     
          for (int_wk1 = 0; int_wk1 <= 15; int_wk1 ++);
        else                       
          for (int_wk1 = 0; int_wk1 <= 16; int_wk1 ++);
      }
    }
  }
  ichck("SJG01_02",14,int_wk1,     
        "goto statement and compound statement combination test");




  int_wk1 = 8;
  int_wk2 = 4;
  int_wk3 = 3;

  if (int_wk1 == 0) ;
  int_wk1 -= (int_wk2 > int_wk3) ? int_wk2 : int_wk3;
  if (int_wk1 != 0){
    goto sjg04;
    int_wk1 = ++int_wk1+1;
    }
  else
sjg04:
    int_wk1 *= --int_wk1-1;
  ichck("SJG01_03",6,int_wk1,
        "goto statement and expression statement combination test");




  int_wk1 = 1;

  if (int_wk1){
    goto sjg05;
    if(int_wk1){
      goto sjg06;
      if (int_wk1){
        goto sjg07;
        if (int_wk1){
          goto sjg08;
          if (int_wk1){
            goto sjg09;
            if (int_wk1){
              goto sjg10; 
              if (int_wk1){
                goto sjg11;
                if (int_wk1){
                  goto sjg12;
                  if (int_wk1){
                    goto sjg13;
                    if (int_wk1)
                      goto sjg14;
                    else
                      int_wk1 ++;
                  }
                  else{
sjg05:              int_wk1 ++;
sjg06:              int_wk1 ++;
sjg07:              int_wk1 ++;
sjg08:              int_wk1 ++;
sjg09:              int_wk1 ++;
sjg10:              int_wk1 ++;
sjg11:              int_wk1 ++;
sjg12:              int_wk1 ++;
sjg13:              int_wk1 ++;
sjg14:              int_wk1 ++;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  ichck("SJG01_04",11,int_wk1,
        "goto statement and selection statement combination test");




  for (int_wk1 = 0; int_wk1 < 20; int_wk1++){
    if (int_wk1 == 10);
    else{
      int_wk1 += int_wk1 ++;
      goto sjg15 ;
      continue ;
    }
sjg15 : int_wk1 --;
  }
  ichck("SJG01_05",31,int_wk1,
        "goto statement and iteration statement combination test");




  sint_wk1 = 0;

  do{
    switch (sint_wk1){
      case 0  : sint_wk1 += 1;
                break;
      case 1  : sint_wk1 += 2;
                break;
      case 2  : sint_wk1 += 1;
                goto sjg16;
                break;
      case 3  : sint_wk1 += 3;
                break;
      default : sint_wk1 --;
    }
sjg16:
    sint_wk1 ++;
    if (sint_wk1 > 3)
      break; 
  } while (1) ;

  sichck("SJG01_06",4,sint_wk1,
        "goto statement and switch statement combination test");





  header("","goto statement test proc.") ;
}
