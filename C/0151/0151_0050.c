
















#include <stdio.h>
#include "001.h"



#define test01  01
#define test02  02
#define test03  03
#define test04  04
                                  
#
#
#
#
#define pnn01_01  "pnn01_01 test proc"
#
#
#
#
  static int int_pnn01_01=1; 
#
#
#
#
#







void func02()



#                                 
#                                 
#                                 
#                                 
#                                 
#define pnn01_02  "pnn01_02 test proc"
#
#
#
#
#
#
  {
  char *strings="                ";
  int   int_01 = 1 ;
  int   int_02 = 2 ;
#if defined pnn01_02
  strings="ok";
#else 
  strings="ng";
#endif 
  schck("pnn01_02_01","ok",strings,"pnn01_02_01");

  int_01 = 0 ; 
  int_02 = 0 ; 

  ichck("pnn01_02_02",0,int_01,"pnn01_02_02");



#define pnn01_03  "pnn01_03 test proc"
#                                 \
                                                                     \
                                                                     \
                                                                     \
                                                                     \
                                                                     \

  int_01 = 0 ; 
  int_02 = 0 ; 
#if defined pnn01_03
  strings="ok";
#else 
  strings="ng";
#endif 
  schck("pnn01_03_01","ok",strings,"pnn01_03_01");
  ichck("pnn01_03_02",0,int_01,"pnn01_03_02");
  return;
  }







int main()
{



  char *strings="           "; 
  int   int_01=1;
  int   int_02=2;



  header("","# macro test.") ;



#if defined pnn01_01
  strings="ok";
#else 
  strings="ng";
#endif 
  schck("pnn01_01_01","ok",strings,"pnn01_01_01");
  ichck("pnn01_01_02",1,int_01,"pnn01_01_02");

  func02();                       



  header("","# macro test.") ;
  }
