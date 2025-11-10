















  #include <stdio.h>
  #include "001.h"



  extern volatile void *func03(void);

  int func10(void);

  volatile void func12(void);




  extern const char arrdtq01[] = {'A','B','C','D','E','F'};

  extern const volatile float exflt01 = 1.11f;

  static volatile char stcha01 = 'a';
  static volatile char stcha02 = 0x03;

  static const volatile int int_wk08 = 255;

  static int int_wk12;










extern volatile void *func03(void)
{
  static int arr03[] = {1,2,3,4,5};

  return &arr03[2];
}








int func10(void)

{
  return 65535;
}







volatile void func12(void)
{
  int_wk12 += 5;
  return ;
}




int main()
{



  typedef signed char CHARTYP;            
  typedef signed char *PCHTYP;

  typedef unsigned short int SINTTYP;     
  typedef unsigned short int *PSINTTYP;







  header("","volatile and const test proc.") ;



{
  volatile char char_wk1;

  volatile CHARTYP char01;
  volatile CHARTYP *char02;
  CHARTYP *volatile char03;
  volatile PCHTYP char04;

  char01 = 'a';
  char02 = &char01;


  cchck("DTQ01_01",'a',*char02,"typedef volatile char type test");
}



{
  short int sint_wk1;
  unsigned short int sint_wk2;

  const SINTTYP  sint01 = 65535;
  const SINTTYP *sint02;
  SINTTYP *const sint03;
  PSINTTYP const sint04 = (unsigned short int *)&sint_wk1;
  const PSINTTYP sint05;

  sint_wk1 = sint01;
  sint_wk2 = *sint04;

  sichck("DTQ01_02",65535U,sint_wk2,
         "typedef const unsigned int type test");
}



{
  volatile int *intp0301;
  volatile int int0301;

  intp0301 = func03();
  int0301 = *intp0301;

  ichck("DTQ01_03",3,int0301,"extern volatile void * type test");
}



{
  char char_wk1;

  char_wk1 = arrdtq01[4];

  cchck("DTQ01_04",'E',char_wk1,"extern volatile void * type test");
}



{
  volatile float flt_wk1;
  volatile float *pflt_wk1;

  flt_wk1 = exflt01 + 2.22f;
  pflt_wk1 = &flt_wk1;

  fchck("DTQ01_05",3.33f,*pflt_wk1,0.00f,
        "extern const volatile float type test");
}



{
  volatile char char_wk06;

  char_wk06 = stcha01 + stcha02;

  cchck("DTQ01_06",'d',char_wk06,"static volatile char type test");
}



{
  static const enum enum07{ a,b,c,d,e,f,g }enumara = c;
  int int07;

  int07 = enumara;

  cchck("DTQ01_07",2,int07,"static const enum type test");
}



{
  static const volatile int *pint08 = (int *)&int_wk08;
  volatile int int08;

  int08 = *pint08;

  ichck("DTQ01_08",255,int_wk08,"static const volatile * type test");
}



{
  auto volatile union unitag{
                  short int sint0901;
                  short int sint0902;
                }dtq09;

  volatile short int sint_wk09 = 9;

  dtq09.sint0901 = sint_wk09;

  ichck("DTQ01_09",9,dtq09.sint0902,"auto volatile union type test");
}



{
  unsigned int int_wk10;

  int_wk10 = func10();
  ichck("DTQ01_10",65535U,int_wk10,"register volatile void type test");
}



{
  register volatile const struct strtag{
                            char char_wk11;
                            int int_wk11;
                            short int sint_wk11;
                          }dtq11 = { 0x11,11,1 };
  volatile char char_wk11;

  char_wk11 = dtq11.char_wk11;
  cchck("DTQ01_11",0x11,char_wk11,
        "register const volatile struct type test");
}



{
  int_wk12 = 5;
  func12();

  ichck("DTQ01_12",10,int_wk12,"volatile function type test");
}




  header("","volatile and const test proc.") ;
}
