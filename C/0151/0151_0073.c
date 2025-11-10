















  #include <stdio.h>
  #include "001.h"







int func1(int);

int func1(int int_1)
{
  if (int_1 == 7)
    return 0;
  else
    return 10;
}




int main()
{



  int int_wk1 = 0;
  int int_wk2 = 0;
  int int_wk3 = 0;
  float fl_wk1;
  double dbl_wk1;
  double dbl_wk2;
  char arrtbl[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
                   16,17,18,19,20,21,22,23,24,25,0};







  header("","select-statement (if statement) test proc.") ;



{
  goto  ssilbl1;
    if (int_wk1 == 0){
  ssilbl1 :
      if (int_wk1 == 0){
        switch (int_wk1){
          case 0: int_wk1 = func1(int_wk1);
          case 1: int_wk1++;
          case 2: --int_wk1;
                  break;
          case 3: int_wk1 *= func1(int_wk1);
        }
      }
    }
  ichck("SSI01_01",10,int_wk1,
        "only if statement and case statement combination test");
}



{
goto  ssilbl2;
   if (arrtbl[0] != 1){
ssilbl2 :
     if (*arrtbl == 1){
       int_wk2 += 1;
       if (arrtbl[int_wk2] == 2){ 
         int_wk2 += 1;
         if (arrtbl[int_wk2] == 3){ 
           int_wk2 += 1;
           if (arrtbl[int_wk2] == 4){ 
             int_wk2 += 1;
             if (arrtbl[int_wk2] == 5){ 
               int_wk2 += 1;
               if (arrtbl[int_wk2] == 6){ 
                 int_wk2 += 1;
                 if (arrtbl[int_wk2] == 7){ 
                   int_wk2 += 1;
                   if (arrtbl[int_wk2] == 8){ 
                     int_wk2 += 1;
                     if (arrtbl[int_wk2] == 9){ 
                       int_wk2 += 1;
                       if (arrtbl[int_wk2] == 10){ 
                         int_wk2 += 1;
                         if (arrtbl[int_wk2] == 11){ 
                           int_wk2 += 1;
                                  
                           if (arrtbl[int_wk2] == 12){
                             int_wk2 += 1;
                                  
                             if (arrtbl[int_wk2] == 13){
                               int_wk2 += 1;
                                  
                               if (arrtbl[int_wk2] == 14){
                                 int_wk2 += 1;
                                  
                                 if (arrtbl[int_wk2] == 15){
                                   int_wk2 += 1;
                                  
                                   if (arrtbl[int_wk2] == 16){
                                     int_wk2 += 1;
                                     #if !defined (os2)
                                   
                                       if (arrtbl[int_wk2] == 17){
                                        switch (arrtbl[int_wk2+=1]){
                                          case 17: int_wk2 ++;
                                          case 18: int_wk2 ++;
                                          case 19: int_wk2 ++;
                                                    break;
                                           case 20: int_wk2++;
                                        }
                                       } 
                                     #else    
                                       int_wk2 += 3;
                                    #endif
                                   } 
                                 } 
                               }  
                             }    
                           }      
                         }        
                       }          
                     }            
                   }              
                 }                
               }                  
             }                    
           }                      
         }                        
       }                          
     }
   }
   ichck("SSI01_02", 19, int_wk2,
         "only if statement and case statement combination test");
}



{
  int_wk1 = 3;

  if (int_wk1 == 0) ;
  int_wk1 = (int_wk2 > int_wk3) ? int_wk2 : int_wk3;
  if (int_wk1 == 0) ;
  
  ichck("SSI01_03",19,int_wk1,
        "only if statement and nest nothing combination test");
}



{
  int_wk1 = 12;
  fl_wk1 = 5.0f;
  dbl_wk1 = 4.5;

  if (int_wk1 / fl_wk1 != 2){
    dbl_wk1 /= fl_wk1;
    dbl_wk1 /= int_wk1;
  }
  dchck("SSI01_04",0.075,dbl_wk1,0.000,
        "only if statement and compound statement combination test");
}



{
  int_wk1 = 0;

  if ((int_wk1 = ((int_wk1+++3)*5/4)) != 0 )
    int_wk1 *= 2;
#if defined(os2)
  ichck("SSI01_05",8,int_wk1,
      "only if statement and expression statement combination test");
#else

	if(int_wk1 != 6)
		printf(" if specified -O4, OK\n");
  ichck("SSI01_05",6,int_wk1,
      "only if statement and expression statement combination test");
#endif
}



{
  int_wk1 = 0;

  #if !defined (os2)
    if (int_wk1)
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
    int_wk1 ++ ;
    else                            
  #endif
      if (int_wk1)                  
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (int_wk1)               
      int_wk1 ++ ;
    else if (!int_wk1){             
      switch (int_wk1){
        case -1: int_wk1 ++;
        case  0: int_wk1 ++;
        case  1: int_wk1 ++;
                 break;
        case  2: int_wk1++;
      }
    }
  ichck("SSI01_06",2,int_wk1,
        "if-else statement and switch statement combination test");
}



{
  fl_wk1 = 2.55f;
  dbl_wk1 = 3.78;
  dbl_wk2 = 78.123456;

  if (fl_wk1 * dbl_wk1 == 9)
    dbl_wk2 = fl_wk1 * dbl_wk1;
  else ;
  dchck("SSI01_07",78.123456,dbl_wk2,0.000000,
        "if-else statement and nothing statement combination test");
}



{
  int_wk1 = 0;

  if (*(&arrtbl[25]))
    int_wk1 ++ ;
  else if (int_wk1 % 2 != 0)       
    for (int_wk1 = 0; int_wk1 <= 2; int_wk1 ++);
  else if (int_wk1 % 2 != 0)       
    for (int_wk1 = 0; int_wk1 <= 3; int_wk1 ++);
  else if(int_wk1 % 2 == 0){       
    for (int_wk1 = 0; int_wk1 <= 4; int_wk1 ++);
    if (int_wk1 <  5)              
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
                    else  if ((0 <= int_wk1) && 
                              (11 > int_wk1))
                      for (int_wk1 = 0; int_wk1 <= 12; int_wk1 ++);
                    else if ((17 <= int_wk1 + 5)|| 
                            (11 >= int_wk1 + 5))
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
  ichck("SSI01_08",17,int_wk1,
        "if-else statement and for statement combination test");
}




  header("","if statement test proc.") ;
}
