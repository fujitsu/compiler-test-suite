
















#include <stdio.h>
#include "001.h"







void func01()
  {



#line  1                          
#line  2                          
#line  3                          
#line  4                          
#line  5                          
#line  6                          
#line  7                          
#line  8                          
#line  9                          
#line  10                         
#line  10                         
#line  10                         
#line  10                         
#line  10                         
#line  10                         

  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;



#line  32767                      
  int_01=__LINE__;
  ichck("pll01_01_01",32767,int_01,"pll01_01_01");
  int_01=1;
  int_02=2;
  int_03=3;
#if (defined msp)||(defined uxp)



#line  32769                      
  int_01=__LINE__;
  ichck("pll01_01_02",32769,int_01,"pll01_01_02");
  int_01=1;                       
  int_02=2;
  int_03=3;



#line  12345678                   
  int_01=__LINE__;
  ichck("pll01_01_03",12345678,int_01,"pll01_01_03");
  int_01=1;                       
  int_02=2;
  int_03=3;



#line  99999999                   
  int_01=__LINE__;
#line  1
  ichck("pll01_01_03",99999999,int_01,"pll01_01_03");
#endif
  int_01=1;
  int_02=2;
  int_03=3;

  return;
  }







#line  1                          
void func02()
  {

#define _def_01_01     1
#define _def_02_02     2
#define _def_02_03     3
#define _def_02_04     4
#define _def_02_05     5

  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;



#if !defined os2

#define   F_01       "FILENAME1"  
#define   F_02       "FILENAME2"  



#line 032767         "S01234567"  
  int_01=__LINE__;
  ichck("pll01_02_01",32767,int_01,"pll01_02_01");
  int_01=1;                       
  int_02=2;
  int_03=3;



#line 032768         F_02         
  int_01=__LINE__;
  ichck("pll01_02_02",32768,int_01,"pll01_02_02");
  int_01=1;                       
  int_02=2;
  int_03=3;



#line 99999991       "abcdefg.c"  
  int_01=__LINE__;
  ichck("pll01_02_03",99999991,int_01,"pll01_02_03");
  int_01=1;                       
  int_02=2;
  int_03=3;
#line 10                          
  int_01=1;
  int_02=2;
  int_03=3;

#endif
  return;
  }







#line  1                          
void func03()
  {

#define _def_03_01     1
#define _def_03_02     2
#define _def_03_03     3
#define _def_03_04     4
#define _def_03_05     5

  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;




#define CONS_100    0100          
#define CONS_01000  01000         
#define CONS_010000 010000        




#line   CONS_100                  
  int_01=__LINE__;
  ichck("pll01_03_01",100,int_01,"pll01_03_01");

  if (int_01 == int_02) int_01++;
  else                  int_01--;



#line   CONS_01000                
  int_01=__LINE__;
  ichck("pll01_03_02",1000,int_01,"pll01_03_02");

  if (int_01 == int_02) int_01++;
  else                  int_01--;



#line   CONS_010000               
  int_01=__LINE__;
  ichck("pll01_03_03",10000,int_01,"pll01_03_03");

  if (int_01 == int_02) int_01++;
  else                  int_01--;
  return;
  }







void func04()
  {
#define _def_04_01     1
#define _def_04_02     2
#define _def_04_03     3
#define _def_04_04     4
#define _def_04_05     5

  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;



#if !defined os2
#define L_01  1           "F"
#define L_02  100         "FI"
#define L_03  1000        "FILE0001"
#define L_04  0010        "FILE0002"
#define L_05  100         "FILEAAAA"
#define L_06  1000        "FILEBBBB"
#define L_07  07000       "FILE_001"
#define L_08  10000000    "FILE_002"




#line  L_01                       
  int_01=__LINE__;
  ichck("pll01_04_01",1,int_01,"pll01_04_01");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_02                       
  int_01=__LINE__;
  ichck("pll01_04_02",100,int_01,"pll01_04_02");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_03                       
  int_01=__LINE__;
  ichck("pll01_04_03",1000,int_01,"pll01_04_03");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_04                       
  int_01=__LINE__;
  ichck("pll01_04_04",10,int_01,"pll01_04_04");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_05                       
  int_01=__LINE__;
  ichck("pll01_04_05",100,int_01,"pll01_04_05");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_06                       
  int_01=__LINE__;
  ichck("pll01_04_06",1000,int_01,"pll01_04_06");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_07                       
  int_01=__LINE__;
  ichck("pll01_04_07",7000,int_01,"pll01_04_07");

  int_01=1;
  int_02=2;
  int_03=3;



#line  L_08                       
  int_01=__LINE__;
  ichck("pll01_04_08",10000000,int_01,"pll01_04_08");

  int_01=1;
  int_02=2;
  int_03=3;

#endif
  return;
  }







void func05()
  {

#define _def_05_01     1
#define _def_05_02     2
#define _def_05_03     3
#define _def_05_04     4
#define _def_05_05     5

  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;



#if (defined msp) || (defined uxp)
#define M_01  1           "FILE00001"        
#define M_02  100         "FILE00002"        
#define M_03  1000        "FILE00.01"        



#line  M_01                       
  int_01=__LINE__;
  ichck("pll01_05_01",1,int_01,"pll01_05_01");

  int_01=1;
  int_02=2;
  int_03=3;



#line  M_02                       
  int_01=__LINE__;
  ichck("pll01_05_02",100,int_01,"pll01_05_02");

  int_01=1;
  int_02=2;
  int_03=3;



#line  M_03                       
  int_01=__LINE__;
  ichck("pll01_05_03",1000,int_01,"pll01_05_03");

  int_01=1;
  int_02=2;
  int_03=3;
#endif

  return;
  }







void func06()
  {

#define _def_06_01     1
#define _def_06_02     2
#define _def_06_03     3
#define _def_06_04     4
#define _def_06_05     5

  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;



#define LIST_01           100                
#define LIST_02           LIST_01            
#define LIST_03           LIST_02            
#define LIST_04           LIST_03            
#define LIST_05           LIST_04            



#line  LIST_05                    
  int_01=__LINE__;
  ichck("pll01_06",100,int_01,"pll01_06");

  int_01=1;
  int_02=2;
  int_03=3;

  return;
  }







int main()
{



  char *ans="   ";
  int   int_a1=0;
  int   int_a2=0;
  int   int_a3=0;
  int   int_a4=0;
  int   int_a5=0;



  header("","#line macro test.") ;

  func01();
  func02();
  func03();
  func04();
  func05();
  func06();



  header("","#line macro test.") ;
  }
