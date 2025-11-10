
#pragma file_name("FILEXX")       
#pragma file_name("FILE0001")     
                                  
#pragma inline_standard           
                                  
#pragma setjmp_present            

#include <stdio.h>
#include <setjmp.h>
#include "001.h"

  int cmn_wk1=0;
  jmp_buf jmp01;                  

void func01()
  {
  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;

  	char  string1[]="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  char  string2[]="                          ";
  memcpy(string1,string2,sizeof(string1));
  int_01=memcmp(string1,string2,sizeof(string1));
  ichck("ppp01_01",0,int_01,"ppp01_01");
                                  
  return;
  }

#if __GNUC__

static void  func02_01();
#endif  

void func02()
  {
  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;
  int   int_04 = 4 ;
  int   int_05 = 5 ;
#if !__GNUC__
  static void  func02_01();
#endif 

  	int_01=setjmp(jmp01);           
  cmn_wk1++;
  if (int_01!=100) func02_01();   
  ichck("ppp01_02",4,cmn_wk1,"ppp01_02");
  return;
  }

#if __GNUC__

static void  func02_02();
#endif 

static void func02_01()
  {
#if !__GNUC__
  static void  func02_02();
#endif 
  cmn_wk1++;
  func02_02();
  cmn_wk1++;
  return;
  }

static void func02_02()
  {
  cmn_wk1++;
  longjmp(jmp01,100);             
  cmn_wk1++;
  return;
  }

#if __GNUC__

static int func01_04_01();
#endif 

void func04()
#pragma inline                    
  {
  int   x      = 1 ;
  int   y      = 2 ;
  int   z      = 3 ;
  int   int_01 = 4 ;
  int   int_02 = 5 ;
#if !__GNUC__
  static int func01_04_01();
#endif 

  	x=5;
  y=9;
  int_01=func01_04_01(x,y);
  ichck("ppp01_01",45,int_01,"ppp01_01");
                                  
  return;
  }

static int func01_04_01(int x,int y)
  {
  return(x*y) ;
  }

#if __GNUC__

static int func01_05_01();
#endif 

void func05()
  {
  int   x      = 1 ;
  int   y      = 2 ;
  int   z      = 3 ;
  int   int_01 = 4 ;
  int   int_02 = 5 ;
#if !__GNUC__
  static int func01_05_01();
#endif 

  	
#if defined msp
#pragma nolist
#pragma nolist
#pragma nolist
#endif

#define INLINE                    
#define STANDERD                  
  x=y=z=x=y=z=x=y=z=z=z=0;        
  x++;++z;++x;++y;++z;            
  x--;--z;--x;--y;--z;            
  if (x==0) {x=0;y=0;z=0;}        
  else      {x=0;y=0;z=0;}        
                                  

#if defined msp
#pragma   list
#pragma   list
#pragma   list
#endif

  x=5;
  y=9;
  int_01=func01_05_01(x,y);
  ichck("ppp01_01",45,int_01,"ppp01_01");
  return;
  }

static int  func01_05_01(int x,int y)
  {
  return(x*y) ;
  }

#if __GNUC__

static int func01_06_01();
#endif 

void func06()
  {
  int   x      = 1 ;
  int   y      = 2 ;
  int   z      = 3 ;
  int   int_01 = 4 ;
  int   int_02 = 5 ;
#if !__GNUC__
  static int func01_06_01();
#endif 

  x=5;
  y=9;
  int_01=func01_06_01(x,y);
  ichck("ppp01_01",45,int_01,"ppp01_01");
  return;
  }
#if defined msp
#pragma nolist
#pragma nolist
#pragma nolist
#endif

                                  
                                  
                                  
                                  
                                  
                                  
                                  

#if defined msp
#pragma   list
#pragma   list
#pragma   list
#endif 

static int  func01_06_01(int x,int y)
  {
  return(x*y) ;
  }
#if __GNUC__

static int func01_07_01();
#endif 

void func07()
  {
  int   x      = 1 ;
  int   y      = 2 ;
  int   z      = 3 ;
  int   int_01 = 4 ;
  int   int_02 = 5 ;
#if !__GNUC__
  static int func01_07_01();
#endif 
  x=5;
  y=9;
  int_01=func01_07_01(x,y);
  ichck("ppp01_07",45,int_01,"ppp01_01");
  return;
  }

#if defined msp 
                                  
#pragma new_page
                                  
                                  
#pragma new_page
                                  
                                  
#endif
static int  func01_07_01(int x,int y)
  {
  return(x*y) ;
  }
#if defined uxp                   
#if __GNUC__

static int func01_08_01();
#endif 

void func08()
  {
  int   x      = 1 ;
  int   y      = 2 ;
  int   z      = 3 ;
  int   int_01 = 4 ;
  int   int_02 = 5 ;
#if !__GNUC__
  static int func01_08_01();
#endif 
  x=5;
  y=9;
  int_01=func01_08_01(x,y);
  ichck("ppp01_08",45,int_01,"ppp01_08");
  return;
  }

#pragma ident "modname=ppp01,language=C,date=1991.06.25"
                                  
                                  
static int  func01_08_01(int x,int y)
  {
  return(x*y) ;
  }
#endif
#if defined uxp                   
#if __GNUC__

static int func01_09_01();
#endif 

void func09()
  {
  int   x      = 1 ;
  int   y      = 2 ;
  int   z      = 3 ;
  int   int_01 = 4 ;
  int   int_02 = 5 ;
#if !__GNUC__
  static int func01_09_01();
#endif 
  x=5;
  y=9;
  int_01=func01_09_01(x,y);
  ichck("ppp01_09",45,int_01,"ppp01_09");
  return;
  }

#pragma weak simbol_1              

#pragma weak simbol_2=simbol_1    
static int  func01_09_01(int x,int y)
  {
  return(x*y) ;
  }
#endif
int main()
{
  char *ans="   ";
  int   int_a1=0;
  int   int_a2=0;
  int   int_a3=0;
  int   int_a4=0;
  int   int_a5=0;
  printf("\n/***************************************/");
  printf("\n/* check compile list (#pragma macro) **/");
  printf("\n/* check object  list (#pragma macro) **/");
  printf("\n/***************************************/\n");
  header("","#pragma macro test.") ;

  func01();
  func02();
  func04();
  func05();
  func06();
  func07();
#if defined uxp
  func08();
  func09();
#endif
  header("","#pragma macro test.") ;
  }
