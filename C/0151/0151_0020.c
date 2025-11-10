
















  #include <stddef.h>
#ifdef solaris1
  #include <varargs.h>
#else
  #include <stdarg.h>
#endif
  #include "001.h"

  union tag14 {int i_14;
               float f_14;
              } area14 ;
  char c_17=0 ;
  float f_17=0.0f;









  long fea0211(c_parm)
   char c_parm ;
  {
     return c_parm+10 ;
  }







  double fea0212(d_parm)
  double *d_parm ;
  {
     return *d_parm * 2 ;
  }







#if defined(msp)|defined(uxp)
  long long int fea0213(i_tbl)
  int i_tbl[10];
  {
    long long lli=0 ;
    int i ;
     for (i=0;i<10;i++) {
        lli += i_tbl[i];
     }
     return lli ;
  }
#endif







#if !defined(os2)
  union tag14 fea0214(w_parm)
     wchar_t w_parm ;
  {
    area14.i_14 = w_parm + 10 ;
    return area14 ;
  }
#endif







#if defined(msp)|defined(uxp)
  int fea0215(long long int lli)
  {
    return (int)(lli / 10LL);
  }
#endif







#ifdef solaris1
int fea0216(int_wk1,va_alist)
int int_wk1;
va_dcl
{
  va_list type16;
  int int16;
  int count16 = 0;

  va_start(type16);
#else
int fea0216(int int_wk1,...)
{
  va_list type16;
  int int16;
  int count16 = 0;

  va_start(type16,int_wk1);
#endif
  for(int16 = 1; int16 <= int_wk1; int16++)
    count16 += va_arg(type16,int);

  va_end(type16);
  return count16 ;
}







int fea0217(i,d)
  int i;
  double d ;
{
   c_17 = i;
   f_17 = d;

}




int main()
  {

  header("","CALL FUNCTION TEST");



  {

      char c_wk1 =10 ;
      long int li_wk1 ;
      li_wk1 = fea0211(c_wk1) ;
      lichck("fea02.11",20,li_wk1,"one prottype, type char");
  }



  {
      double fea0212(double *d);
      double *d_ptr ;
      double  d_wk1 = 3.14 ;

      d_ptr = &d_wk1 ;
      d_wk1 = fea0212(d_ptr) ;
      dchck("fea02.12",6.28,d_wk1,0.0,"one prottype, type double");
  }



  {
#if defined(msp)|defined(uxp)
     int  i_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
     long long int fea0213(int i_tbl[]) ;
     long long int lli_wk1 ;
     lli_wk1 = fea0213(i_tbl) ;
     llichck("fea02.13",55LL,lli_wk1,
             "one prottype, type long long");
#endif
  }



  {
#if !defined(os2)
     union tag14 uarea14 ;
     wchar_t w_wk1 = 10 ;
     union tag14 fea0214(wchar_t) ;
     uarea14 = fea0214(w_wk1) ;
     ichck("fea02.14",20,uarea14.i_14,"one prottype, type union");
#endif
  }



  {
#if defined(msp)|defined(uxp)
     long long int lli_wk1=100LL ;
     int i_wk1 ;
     i_wk1 = fea0215(lli_wk1) ;
     ichck("fea02.15",10,i_wk1,"one prottype, type int");
#endif
  }



  {
     int int_wk1 = 4;
     int int_wk2 = 1;
     int int_wk3 = 2;
     int int_wk4 = 3;
     int int_wk5 = 4;
     int i_wk1;

     i_wk1 = fea0216(int_wk1,int_wk2,int_wk3,int_wk4,int_wk5);
     ichck("fea02.16",10,i_wk1,"one prottype, type int");
  }



  {
     char c_wk1=1;
     float f_wk1=10.0f ;
     fea0217(c_wk1,f_wk1) ;
     if (c_17== 1 && f_17 == 10.0f)
     ichck("fea02.17",1,(c_17== 1 && f_17 == 10.0f),
           "one prottype, type void");
  }

  header("","CALL FUNCTION TEST");
  }
