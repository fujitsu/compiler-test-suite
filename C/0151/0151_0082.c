
















  #include "001.h"




  static int ELSE(void) ;         
  int tkk0116(int FORTRAN) ;      
  int LONG(void) ;                







  static int ELSE(void)
  {
  return 111 ;
  }







  int tkk0116(int FORTRAN)
  {
  ichck("TKK01.16",100,FORTRAN,"FORTRAN keyword test") ;
  }







  int LONG(void)
  {
  return 20 ;
  }




int main()
  {




  int int_wk1 ;                  






  header("","KEYWORD TEST") ;




  {
  int_wk1 = ELSE() ;
  ichck("TKK01.02",111,int_wk1,"ELSE keyword test") ;
  }



  {
  struct stag1 {
         char ENUM ;
         int  ENUm ;
         } str_stag1 ;
  union utag1 {
        char ENUM ;
        int  ENUm ;
        } union_utag1 ;
  str_stag1.ENUM = (7+7+7) ;
  union_utag1.ENUM = (3+3+3) ;
  int_wk1 = str_stag1.ENUM + union_utag1.ENUM ;
  ichck("TKK01.12",30,int_wk1,"ENUM keyword test") ;
  }



  {
  typedef float                       EXTERN;
  typedef char                        eXTERN;
  typedef int                         ExTERN;
  typedef long                        EXtERN;
  typedef double                      EXTeRN;
  typedef long int                    EXTErN;
  typedef const volatile long double *exterN[10];
  EXTERN fl_wk1=13.0f ;
  
  fchck("TKK01.13",13.0f,fl_wk1,0.0f,"EXTERN keyword test") ;
  }



  {
  struct FLOAT {
         float fl_wk1 ;
         long double ldbl_wk1 ;
         } ;
  struct FLOAT str_FLOAT ;
  str_FLOAT.fl_wk1 = 14.14f ;
  
  fchck("TKK01.14",14.14f,str_FLOAT.fl_wk1,0.0f,"FLOAT keyword test") ;
  }



  {
  int_wk1 = 0 ;
  goto FOR ;
  fOR:int_wk1 = 100 ;
  FoR:int_wk1 = 200 ;
  FOr:int_wk1 = 300 ;
  foR:int_wk1 = 400 ;
  For:int_wk1 = 500 ;
  fOr:int_wk1 = 700 ;
  FOR:int_wk1+=1 ;
  if (int_wk1 < 10) goto FOR ;
  ichck("TKK01.15",10,int_wk1,"FOR keyword test") ;
  }



  {
  int FORTRAN=100 ;
  tkk0116(FORTRAN) ;
  }



  {
  #define GOTO 17 
  int_wk1 = GOTO ;
  ichck("TKK01.17",17,int_wk1,"GOTO keyword test") ;
  }



  {
  #define max(IF,If) (IF>If?IF:If) 
  ichck("TKK01.18",99,max(88,99),"IF keyword test") ;
  }



  {
  int INT = 10;
  int iNT = 20;
  int InT = 30;
  int INt = 40;
  int inT = 50;
  int iNt = 60;
  int Int = 70;
  int_wk1 = INT+iNT+InT+INt+inT+iNt+Int ;
  ichck("TKK01.19",280,int_wk1,"INT keyword test") ;
  }



  {
  int_wk1 = LONG() ;
  ichck("TKK01.20",20,int_wk1,"LONG keyword test") ;
  }

  header("","KEYWORD TEST") ;
  }
