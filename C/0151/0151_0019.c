
















  #include <stddef.h>
  #include "001.h"

  static int retvalue ;                    
  struct tag04 {int i_04;                  
                char c_04;
                long l_04;
               } ;
  union  tag05 {int i_05;                  
                char c_05;
                long l_05;
               } ;
  struct tag06 {int   i_06;                
                float f_06;
               }area6;
  int i_wk08 ;                             








  void fea0201(void)
  {
  }







  char fea0202(short int s_parm)
  {
      if (s_parm == 202) return 7L ;
      else               return 0L ;
  }







  short int fea0203(float f_parm)
  {
      return f_parm + 123 ;
  }







  float fea0204(struct tag04 sarea4)
  {
      if (sarea4.i_04 == 123 &&
          sarea4.c_04 == 74  &&
          sarea4.l_04 == 555 )  return 0.0f ;
      else                      return 99.9f ;
  }







  long double fea0205(union tag05 u5)
  {
      if (u5.i_05 == 74) return 123.4L ;
      else               return  99.9L ;
  }







  struct tag06 fea0206(int (*func)(void))
  {
      area6.i_06 = func();
      return area6 ;
  }

  int num(void)
  {
     return 7 ;
  }








#if !defined(os2)
  wchar_t fea0207(double d_parm)
  {
      wchar_t w_wk1 ;
      w_wk1 = d_parm + L'a' ;
      return w_wk1 ;
  }
#endif







  int *fea0208(long double ld_wk1)
  {
      i_wk08 = (int)ld_wk1 * 10 ;
      return &i_wk08 ;
  }







  char fea0209(li_parm)
  long int li_parm ;
  {
     return li_parm + 1 ;
  }







 short fea0210(i_parm)
  int i_parm ;
{
  return i_parm * 7 ;
}




int main()
  {

  header("","CALL FUNCTION TEST");



  {
      void fea0201(void) ;
      retvalue = 0 ;
      fea0201();
      ichck("fea02.01",0,retvalue,"both prottype, type void");
  }



  {
      char fea0202(short s) ;
      short int s_wk1 = 202 ;
      char c_wk1 ;
      c_wk1 = fea0202(s_wk1) ;
      cchck("fea02.02",7,c_wk1,"both prottype, type char");
  }



  {
      short int fea0203(float f);
      float fl_wk1 = 123.0f;
      short int si_wk1;
      si_wk1 = fea0203(fl_wk1) ;
      sichck("fea02.03",246,si_wk1,"both prottype, type short int");
  }



  {
     struct tag04 area04={123,74,555} ;
     float fea0204(struct tag04 area04);
     float fl_wk1 ;
     fl_wk1 = fea0204(area04) ;
     fchck("fea02.04",0.0f,fl_wk1,0.0f,"both prottype, type float");
  }



  {
     union tag05 uarea5={74} ;
     long double fea0205(union tag05 uarea5);
     long double ld_wk1 ;
     ld_wk1 = fea0205(uarea5) ;
     ldchck("fea02.05",123.4L,ld_wk1,0.0L,"both prottype, type char");
  }



  {
     struct tag06 sarea6;
     struct tag06 fea0206(int (*f)(void));
     int num(void) ;
     sarea6 = fea0206(num);
     ichck("fea02.06",7,sarea6.i_06,"both prottype, type func");
  }



  {
#if !defined(os2)
     wchar_t fea0207(double d) ;
     double d_wk1 = 1.0;
     wchar_t w_wk1 ;
     w_wk1 = fea0207(d_wk1) ;
     ichck("fea02.07",1,L'b'== w_wk1,"both prottype, type wchar_t");
#endif
  }



  {
     int *fea0208(long double ld) ;
     int *i_ptr ;
     long double ld_wk1=7.7L ;
     i_ptr = fea0208(ld_wk1) ;
     ichck("fea02.08",70,*i_ptr,"both prottype, type pointer");
  }



  {
     char fea0209(long int li) ;
     char c_wk1 ;
#if defined(msp)
     long int li_wk1 = 129L ;
#else
     long int li_wk1 = 97L;
#endif
     c_wk1 = fea0209(li_wk1) ;
     cchck("fea02.09",'b',c_wk1,"one prottype, type char");
  }



  {
     short int fea0210(int i) ;
     int i_wk1 = 111 ;
     short int si_wk1 ;
     si_wk1 = fea0210(i_wk1) ;
     sichck("fea02.10",777,si_wk1,"one prottype, type short");
  }

  header("","CALL FUNCTION TEST");
  }
