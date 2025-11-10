
















  #include "001.h"




  static int RETURN(void) ;
         int tkk0207(int STRUCT) ;
  static int UNSIGNED(void) ;







  static int RETURN(void)
  {
  return 100 ;
  }







  int tkk0207(int STRUCT)
  {
  ichck("TKK02.07",100,STRUCT,"STRUCT keyword test") ;
  }







  static int UNSIGNED(void)
  {
  return 111 ;
  }




int main()
  {



  int int_wk1 ;                  






  header("","KEYWORD TEST") ;




  {
  int REGISTER ;
  REGISTER = 100 ;
  ichck("TKK02.01",100,REGISTER,"REGISTER keyword test") ;
  }



  {
  int_wk1 = RETURN() ;
  ichck("TKK02.02",100,int_wk1,"RETURN keyword test") ;
  }



  {
  struct stag1 {
         int  SHORT ;
         } str_stag1 ;
  union utag1 {
        int  SHORT ;
        } union_utag1 ;
  str_stag1.SHORT = 777 ;
  union_utag1.SHORT = 333 ;
  int_wk1 = str_stag1.SHORT + union_utag1.SHORT ;
  ichck("TKK02.03",1110,int_wk1,"SHORT keyword test") ;
  }



  {
  typedef int SIGNED ;
  SIGNED SIGNEd=10 ;
  switch (SIGNEd) {
    case 0 : break;
    case 1 : break;
    case 2 : break;
    default: SIGNEd++ ;
  }
  ichck("TKK02.04",11,SIGNEd,"SIGNED keyword test") ;
  }



  {
  struct SIZEOF {
         int int_work1 ;
         float fl_wk1 ;
         long double ldbl_wk1 ;
         } ;
  struct SIZEOF str_SIZEOF ;
  str_SIZEOF.int_work1 = 5 ;
#if defined(os2)
  ichck("TKK02.05",2,sizeof(str_SIZEOF.int_work1),
                     "SIZEOF keyword test") ;
#elif INT64
  ichck("TKK02.05",8,sizeof(str_SIZEOF.int_work1),
                     "SIZEOF keyword test") ;
#else
  ichck("TKK02.05",4,sizeof(str_SIZEOF.int_work1),
                     "SIZEOF keyword test") ;
#endif
  }



  {
  int_wk1 = 0 ;
  goto STATIC ;
  statiC:int_wk1 = 100 ;
  statIc:int_wk1 = 200 ;
  staTic:int_wk1 = 300 ;
  stAtic:int_wk1 = 400 ;
  sTatic:int_wk1 = 500 ;
  Static:int_wk1 = 700 ;
  STATIc:int_wk1 = 800 ;

  STATIC:int_wk1+=1 ;
  if (int_wk1 < 10) goto STATIC ;
  ichck("TKK02.06",10,int_wk1,"STATIC keyword test") ;
  }



  {
  int STRUCT = 100 ;
  tkk0207(STRUCT) ;
  }



  {
  #define SWICH 80 
  int_wk1 = SWICH ;
  ichck("TKK02.08",80,int_wk1,"SWICH keyword test") ;
  }



  {
  #define max(TYPEDEF,TYPEDEf) (TYPEDEF>TYPEDEf?TYPEDEF:TYPEDEf) 
  ichck("TKK02.09",99,max(88,99),"TYPEDEF keyword test") ;
  }



  {
  int UNION = 10;
  int UNIOn = 20;
  int uNION = 30;
  int UnION = 40;
  int UNiON = 50;
  int UNIoN = 60;
  int_wk1 = (UNION+((UNIOn+uNION)+
            (UnION+UNiON))+
            (UNIoN+UNION))+UNION*2 ;
  ichck("TKK02.10",240,int_wk1,"UNION keyword test") ;
  }



  {
  int_wk1 = UNSIGNED() ;
  ichck("TKK02.11",111,int_wk1,"UNSIGNED keyword test") ;
  }



  {
  struct stag1 {
         char VOID ;
         int  VOId ;
         } str_stag1 ;
  union utag1 {
        char VOID ;
        int  VOId ;
        } union_utag1 ;
  str_stag1.VOID = (7+7+7) ;
  union_utag1.VOID = (3+3+3) ;
  int_wk1 = str_stag1.VOID + union_utag1.VOID ;
  ichck("TKK02.12",30,int_wk1,"VOID keyword test") ;
  }



  {
  typedef float                       VOLATILE ;
  typedef char                        vOLATILE ;
  typedef int                         VoLATILE ;
  typedef long                        VOlATILE ;
  typedef double                      VOLaTILE ;
  typedef long int                    VOLAtILE ;
  typedef const volatile long double *volatilE[10] ;
  VOLATILE fl_wk1=13.0f ;
  
  fchck("TKK02.13",13.0f,fl_wk1,0.0f,"VOLATILE keyword test") ;
  }



  {
  struct WHILE {
         float fl_wk1 ;
         long double ldbl_wk1 ;
         } ;
  struct WHILE str_WHILE ;
  str_WHILE.fl_wk1 = 14.14f ;
  fchck("TKK02.14",14.14f,str_WHILE.fl_wk1,0.0f,"WHILE keyword test") ;
  }

  header("","KEYWORD TEST") ;
  }
