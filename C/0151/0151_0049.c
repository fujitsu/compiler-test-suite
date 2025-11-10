
















#include <stdio.h>
#include "001.h"
  char *ans="   ";







void func01()
  {
#define _def_01_01     1
#define _def_01_02     2
#define _def_01_03     3
#define _def_01_04     4
#define _def_01_05     5
#define _def_01_06     6
 
  int   a ;
  int   b ;
  int   c ;
  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;

#undef  _def_01_07
#undef  _def_01_07
#undef  _def_01_04
#undef  _def_01_04
#define _def_01_04
#undef  _def_01_04
#undef  _def_01_04
#undef  _def_01_04

  int_01=1;
  int_02=2;
  int_03=3;



#if (defined _def_01_05) && (!defined _def_01_04) 
  ans="ok";
#else 
  ans="ng"; 
#endif
  schck("pms01_01","ok",ans,"#define in function");
  }







void func02_d()
  {
#define _def_02_01     1
#define _def_02_02     2
#define _def_02_03     3
#define _def_02_04     4
#define _def_02_05     5
#define _def_02_06     6
 
#undef  _def_02_07
#undef  _def_02_07
#undef  _def_02_04
#undef  _def_02_04
#undef  _def_02_04
#define _def_02_04
#undef  _def_02_04
#undef  _def_02_04

  return;
  }

#ifdef _def_02_01
  #define _def_02_01_01    "macro name use out of function"
#endif







void func02()
  {



#if (defined _def_02_01_01) 
  ans="ok";
#else 
  ans="ng"; 
#endif

  schck("pms01_02","ok",ans,"defined out of function");
  }







void func03()
#define _def_03_01     1
#define _def_03_02     2
#define _def_03_03     3
#define _def_03_04     4
#define _def_03_05     5
#define _def_03_06     6
  {
 
  int   a ;
  int   b ;
  int   c ;
  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;

#undef  _def_03_07
#undef  _def_03_07
#undef  _def_03_04
#undef  _def_03_04
#define _def_03_04
#undef  _def_03_04
#undef  _def_03_04
#undef  _def_03_04

  int_01=1;
  int_02=2;
  int_03=3;



#if (defined _def_03_01) && (!defined _def_03_04)
  ans="ok";
#else 
  ans="ng"; 
#endif
  schck("pms01_03","ok",ans,"use defined macro in function");
  return;
  }

#define _def_04_01     1
#define _def_04_02     2
#define _def_04_03     3
#define _def_04_04     4
#define _def_04_05     5
#define _def_04_06     6







void func04()
#ifdef  _def_04_06
  #define _def_04_06_01   111
  #define _def_04_06_02   222
  #define _def_04_06_03   333
  #define _def_04_06_04   444
  #define _def_04_06_05   555
#endif
  {
 
  int   a ;
  int   b ;
  int   c ;
  int   int_01 = 1 ;
  int   int_02 = 2 ;
  int   int_03 = 3 ;

#undef  _def_04_07

#undef  _def_04_04
#undef  _def_04_04
#undef  _def_04_04
#undef  _def_04_04
#define _def_04_04
#undef  _def_04_04

  int_01=1;
  int_01=2;
  int_01=3;



#if (defined _def_04_06_01) && (!defined _def_04_04)
  ans="ok";
#else 
  ans="ng"; 
#endif
  schck("pms01_04","ok",ans,"defined out of function");
  return;
  }







int main()
{
#define _def_00001       1
#define _def_00002       2
#define _def_00003       3
#define _def_00004       4
#define _def_00005       5
#define _def_00006       6
#define _def_00007       7
#define _def_00008       8
#define _def_00009       9
#define _def_00010      10



  char *ans="   ";
  int   int_a1=0;
  int   int_a2=0;
  int   int_a3=0;



  header("","#define scorp test.") ;
  func01();
  func02();
  func03();
  func04();



  header("","#define scorp test.") ;
  }
