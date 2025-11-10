















  #include <stdio.h>
  #include "001.h"



  void dss01_01(void);            
  void dss01_02(void);            
  void dss01_03(void);            
  void dss01_04(void);            
  void dss01_05(void);            
  void dss01_06(void);            
  void dss01_07(void);            
  void dss01_08(void);            
  void dss01_09(void);            
  void dss01_10(void);            
  void dss01_11(void);            











void dss01_01(void)
{
  typedef volatile char CHAR_A;

  CHAR_A char_b = 'A';
  cchck("DSS01_01",'A',char_b,
        "typedef and volatile and char type check");
}








typedef volatile struct {
                   int  istag1_a;
                   char cstag1_a;
                   char cstag1_b;
                   int  istag1_b;
}STR_TAG1;

void dss01_02(void)
{
  int i_wk1;

  STR_TAG1 str_tag2;
  str_tag2.istag1_a = 5;

  ichck("DSS01_02",5,str_tag2.istag1_a,
        "typedef and array type check no.1");
  str_tag2.istag1_b = 3;

  ichck("DSS01_02",3,str_tag2.istag1_b,
        "typedef and array type check no.2");
  i_wk1 = str_tag2.istag1_a + str_tag2.istag1_b;

  ichck("DSS01_02",8,i_wk1,"int type add check");
}








void dss01_03(void)
{
  typedef char *CPTR_A;
  char char_01;
  static char char_02 = 0xff;

  CPTR_A cptr_b;
  cptr_b = &char_02;
  char_01 = *cptr_b;

  cchck("DSS01_03",0xff,char_01,"typedef and pointer type check");
}







extern const int int_1 = 1;

void dss01_04(void)
{
  int int_2 = 2;
  int int_3 = 0;
  int_3 = int_1 + int_2;

  ichck("DSS01_04",3,int_3,
        "extern and const and int type combination test");
}







void dss01_05(void)
{
  extern int funca(void);

  int int_rtn = 0;

  int_rtn = funca();
  ichck("DSS01_05",10,int_rtn,
        "extern and function type combination test");
}

int funca()
{
  return 10;
}

static volatile union utag1 {
                   	int iutag1_a;
                	char cutag1_a[2];
               	 	double dutag1_a;
}uni_tag1;









void dss01_06(void)
{

  int int_a = 3;

  int_a -= uni_tag1.iutag1_a;

  ichck("DSS01_06",3,int_a,
          "static and volatile and union type combination test");
}

static const int int_a = 2;









void dss01_07(void)
{
  int int_b = 10;
  int int_c = 10;

  int_b <<= int_a;
  int_c >>= int_a;

  ichck("DSS01_07",40,int_b,
    "static and const and int combination test");
  ichck("DSS01_07",2,int_c,
    "static and const and int combination test");
}

  struct stag8{
            char cstag_1;
            char cstag_2;
            int istag_1;
  };








void dss01_08(void)
{

  int funcb(register volatile struct stag8 *stagp); 

  struct stag8 stagp;
  stagp.istag_1 = 2;
  funcb(&stagp);
}

int funcb(register volatile struct stag8 *structp)
{
ichck("DSS01_08",2,structp->istag_1,
      "register and volatile and struct combination test");
}








void dss01_09(void)
{

  auto double dbl_a = 123.456789;

  dbl_a += 27.6421;
  dchck("DSS01_09",151.098889,dbl_a,0.000000,
        "auto and volatile and double float type combination test");
}








void dss01_10(void)
{
  int func10(register const int);

  enum etag10{etag_1=-1, etag_2, etag_3=100, etag_4, etag_5};
  func10(etag_4);
}

int func10(register const int int_arg)
{
  ichck("DSS01_10",101,int_arg,
        "register and const and enum type combination test");
}








void dss01_11(void)
{
  int func11(register volatile const int []);

  int itbl_11[] = {00,10,20,30,40,50,60,70,80,90};
  func11(itbl_11);
}

int func11(register volatile const int arrtbl_11[10])
{
  ichck("DSS01_11",90,arrtbl_11[9],
     "register and volatile const and array type combination test");
}




int main()
{




  header("","storage-class-specifier test proc.") ;

  dss01_01();
  dss01_02();
  dss01_03();
  dss01_04();
  dss01_05();
  dss01_06();
  dss01_07();
  dss01_08();
  dss01_09();
  dss01_10();
  dss01_11();





  header("","storage-class-specifier test proc.") ;
}
