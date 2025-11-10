















  #include <stdio.h>
  #include "001.h"



  int int_wk1;
  int int_wk2;
  struct stag1{
    short int sint_tag1;
    short int sint_tag2;
    int int_tag1;
  };
  union utag1{
    short int usint1;
    short int usint2;
    char ucha1;
    int uint1;
  };
  enum ptn{ patterna, patternb, patternc, patternd, patterne };





  void sjr01_01(void);            
  void sjr01_02(void);            
  void sjr01_03(void);            
  void sjr01_04(void);            
  void sjr01_05(void);            
  void sjr01_06(void);            

  char func_01(int *);            
  void *func_02(short int);       
  int func_03(int);               
  float func_04(void);            
  enum ptn func_05(void);         
  long int func_06(int);          











char func01(int *arg_01)
{
  char char_f1;

  switch (*arg_01){
    case 0  : return (char_f1 = 'a' + 0x01);
    case 1  : return (char_f1 = 'b' + 0x01);
    case 2  : return (char_f1 = 'c' + 0x01);
    default : break;
  }
}








void sjr01_01(void)
{
  signed char char_01;
  int *int_01;
  int int_02 = 2;

  int_01 = &int_02;
  char_01 = func01(int_01);

  cchck("sjr01_01",'d',char_01,
        "returned char type data check");
  return;
}



struct strtag02{
    int str_int1;
    union unitag02{
        char uni_char1[2];
        short int uni_sint1;
        int uni_int1;
    }uni02_tag1;
}str0201[3];







void *func02(short int arg02)
{
  switch (arg02){
    case 0  : return (0);
    case 1  : str0201[1].uni02_tag1.uni_int1 = 3;
              return &str0201[0] + 1;
    case 2  : return (0);
              break;
    default : return (0);
  }
}







void sjr01_02(void)
{
  struct strtag02 *str02;
  short int sint_02 = 1;
  str02 = func02(sint_02);
  ichck("sjr01_02",3,str02->uni02_tag1.uni_int1,
        "returned void * data check");
  return;
}










void func03(int int_03)
{
  switch (int_03){
    case 0  : int_wk1 = 0;
              break;
    case 1  : int_wk1 = 5;
              return;
    case 2  : int_wk1 = 7;
              return;
              break;
    default : int_wk1 = 7;
              return;
              break;
  }
}








void sjr01_03(void)
{
  func03(1);
  ichck("sjr01_03",5,int_wk1,"returned nothing data check");
  return;
}










float func04(void)
{
  float flt_01 = 12.5f;
  flt_01 -= 2.5f;
  flt_01 += 3.12345f;
  return (++flt_01);
}







void sjr01_04(void)
{
  float flt_01;

  flt_01 = func04();
  fchck("sjr01_02",14.12345f,flt_01,0.00000,
        "returned float type data check");
  return;
}










enum ptn func05(void)
{
  enum ptn fss;

  fss = patternb;
  fss *= patternc;
  return fss * patternd / patterne;
}







void sjr01_05(void)
{
  enum ptn fss;

  fss = func05();
  ichck("sjr01_05",1,fss,"returned enum data check");
  return;
}










long int func06(int int_arg)
{
  union utag1 uni_06[3];

  if (int_arg == 1)
    return &uni_06[0] < &uni_06[1];
  else
    return 0;
}







void sjr01_06(void)
{
  int int_arg1 = 1;
  long int int_ret;

  int_ret = func06(int_arg1);
  ichck("sjr01_06",1,int_ret,"returned true value check");
  return;
}




int main()
{




  header("","return statement test proc.") ;

  sjr01_01();
  sjr01_02();
  sjr01_03();
  sjr01_04();
  sjr01_05();
  sjr01_06();





  header("","return statement test proc.") ;
  }
