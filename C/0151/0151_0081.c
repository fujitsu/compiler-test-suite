
















  #include "001.h"




  static int AUTO(void) ;         
  int tkk0107(int CONTINUE) ;     








  static int AUTO(void)
  {
  return 100 ;
  }







  int tkk0107(int CONTINUE)
  {
  ichck("TKK01.07",100,CONTINUE,"CONTINUE keyword test") ;
  }




int main()
  {




  int int_wk1 ;                  






  header("","KEYWORD TEST") ;




  {
  int ASM ;
  ASM = 100 ;
  ichck("TKK01.01",100,ASM,"ASM keyword test") ;
  }



  {
  int_wk1 = AUTO() ;
  ichck("TKK01.02",100,int_wk1,"AUTO keyword test") ;
  }



  {
  struct stag1 {
         char COFFE ;
         int  BREAK ;
         } str_stag1 ;
  union utag1 {
        char COFFE ;
        int  BREAK ;
        } union_utag1 ;
  str_stag1.BREAK = 777 ;
  union_utag1.BREAK = 333 ;
  int_wk1 = str_stag1.BREAK + union_utag1.BREAK ;
  ichck("TKK01.03",1110,int_wk1,"BREAK keyword test") ;
  }



  {
  typedef int CASE ;
  CASE CASe=10 ;
  switch (CASe) {
    case 0 : break;
    case 1 : break;
    case 2 : break;
    default: CASe++ ;
  }
  ichck("TKK01.04",11,CASe,"CASE keyword test") ;
  }



  {
  struct CHAR {
         int int_work1 ;
         float fl_wk1 ;
         long double ldbl_wk1 ;
         } ;
  struct CHAR str_CHAR ;
  str_CHAR.int_work1 = 5 ;
  ichck("TKK01.05",5,str_CHAR.int_work1,"CHAR keyword test") ;
  }



  {
  int_wk1 = 0 ;
  goto CONST ;
  consT:int_wk1 = 100 ;
  conSt:int_wk1 = 200 ;
  coNst:int_wk1 = 300 ;
  cOnst:int_wk1 = 400 ;
  Const:int_wk1 = 500 ;
  coNST:int_wk1 = 700 ;
  CoNst:int_wk1 = 800 ;
  ConSt:int_wk1 = 900 ;
  CONST:int_wk1+=1 ;
  if (int_wk1 < 10) goto CONST ;
  ichck("TKK01.06",10,int_wk1,"CONST keyword test") ;
  }



  {
  int CONTINUE=100 ;
  tkk0107(CONTINUE) ;
  }



  {
  #define DEFAULT 80 
  int_wk1 = DEFAULT ;
  ichck("TKK01.08",80,int_wk1,"DEFAULT keyword test") ;
  }



  {
  #define max(DO,Do) (DO>Do?DO:Do) 
  ichck("TKK01.09",99,max(88,99),"DO keyword test") ;
  }



  {
  int DOUBLE = 10;
  int DOUBLe = 20;
  int dOUBLE = 30;
  int DoUBLE = 40;
  int DOuBLE = 50;
  int DOUbLE = 60;
  int DOUBle = 70;
  int_wk1 = (DOUBLE+((DOUBLe+dOUBLE)+(DoUBLE+DOuBLE))+
            (DOUbLE+DOUBle))+DOUBLE*2 ;
  ichck("TKK01.10",300,int_wk1,"DOUBLE keyword test") ;
  }

  header("","KEYWORD TEST") ;
  }
