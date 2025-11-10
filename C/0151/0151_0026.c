
















  #include <stddef.h>
  #include "001.h"

static int fjudge = 0;








int func1(void)
{
fjudge++ ;
return 0 ;
}
char func2(void)
{
return 'a' ;
}
float func3(void)
{
fjudge++ ;
return 3.14 ;
}
double func4(void)
{
return 1.4142e+0 ;
}




int main()
  {

  header("","CAST OPERATOR TEST");




  {
      int    judge = 0 ;
      int i1,i2,i3,i4,i5,i6,i7,i8,i9,i10 ;
      void          *v_ptr ;
      char          *c_ptr   ; char          c_wk1  =1,c_wk2;
      int           *i_ptr   ; int           i_wk1  =1,i_wk2;
      short         *si_ptr  ; short         si_wk1 =1,si_wk2;
      long          *li_ptr  ; long          li_wk1 =1;
      float         *f_ptr   ; float         f_wk1  =1;
      double        *d_ptr   ; double        d_wk1  =1;
      long double   *ld_ptr  ; long double   ld_wk1 =1;
#ifndef nollint
      long long int *lli_ptr ; long long int lli_wk1=1;
#endif
#if !defined(os2)
      wchar_t       *w_ptr   ; wchar_t       w_wk1  =1;
#endif


      v_ptr  = (void *)0 ;
      c_ptr  = (char *)0 ;
      i_ptr  = (int *)0 ;
      si_ptr = (short *)0;
      li_ptr = (long *)0;
      f_ptr  = (float *)0;
      d_ptr  = (double *)0;
      ld_ptr = (long double *)0;
      if ((int)v_ptr  == 0) judge++ ;
      if ((int)c_ptr  == 0) judge++ ;
      if ((int)i_ptr  == 0) judge++ ;
      if ((int)si_ptr == 0) judge++ ;
      if ((int)li_ptr == 0) judge++ ;
      if ((int)f_ptr  == 0) judge++ ;
      if ((int)d_ptr  == 0) judge++ ;
      if ((int)ld_ptr == 0) judge++ ;
#ifndef nollint
      lli_ptr  = (long long *)0;
      if ((int)lli_ptr == 0) judge++ ;
#endif
#if !defined(os2)
      w_ptr = (wchar_t *)0;
      if ((int)w_ptr == 0) judge++ ;
#endif

      c_ptr   = &c_wk1  ;
      i_ptr   = &i_wk1  ;
      si_ptr  = &si_wk1 ;
      li_ptr  = &li_wk1 ;
      f_ptr   = &f_wk1  ;
      d_ptr   = &d_wk1  ;
      ld_ptr  = &ld_wk1 ;

      i1 = (int)c_ptr ;
      i2 = (int)i_ptr ;
      i3 = (int)si_ptr;
      i4 = (int)li_ptr;
      i5 = (int)f_ptr ;
      i6 = (int)d_ptr ;
      i7 = (int)ld_ptr;
      if (i1 == (int)&c_wk1) judge++ ;
      if (i2 == (int)&i_wk1) judge++  ;
      if (i3 == (int)&si_wk1) judge++ ;
      if (i4 == (int)&li_wk1) judge++ ;
      if (i5 == (int)&f_wk1) judge++  ;
      if (i6 == (int)&d_wk1) judge++  ;
      if (i7 == (int)&ld_wk1) judge++ ;
#ifndef nollint
      lli_ptr = &lli_wk1 ;
      i8 = (int)lli_ptr ;
      if (i8 == (int)&lli_wk1) judge++ ;
#endif
#if !defined(os2)
      w_ptr = &w_wk1 ;
      i9 = (int)w_ptr ;
      if (i9 == (int)&w_wk1) judge++ ;
#endif

      c_wk1  = (char)c_ptr ;
      i_wk1  = (int)i_ptr ;
      si_wk1 = (short)si_ptr ;
      li_wk1 = (long)li_ptr ;
      c_wk2  = (char)f_ptr ;
      si_wk2 = (short)d_ptr ;
      i_wk2  = (int)ld_ptr ;

      c_ptr  =(char *)c_wk1 ;
      i_ptr  =(int *)i_wk1;
      si_ptr =(short *)si_wk1;
      li_ptr =(long int *)li_wk1;
      f_ptr  =(float *)c_wk2;
      d_ptr  =(double *)si_wk2;
      ld_ptr =(long double *)i_wk2;

      if ((int)c_ptr  != (int)&c_wk1)  judge++ ;
#if defined(__uxps__) && defined(LONG64)   
      if ((int)si_ptr != (int)&si_wk1) judge++ ;
#elif defined (__aarch64__) 
      if ((long)si_ptr != (long)&si_wk1) judge++ ;
#elif defined(__hal) && defined(LONG64)   
      if ((int)si_ptr != (int)&si_wk1) judge++ ;
#else
      if ((int)si_ptr != (int)&si_wk1) judge++ ;
#endif
	  else printf("si_ptr:%x, &si_wk1:%x\n",(int)si_ptr,(int)&si_wk1);
      if ((int)i_ptr  == (int)&i_wk1)  judge++ ;
      if ((int)li_ptr == (int)&li_wk1) judge++ ;
      if ((int)f_ptr  != (int)&f_wk1)  judge++ ;

#if defined(__uxps__) && defined(LONG64)
      if ((int)d_ptr  != (int)&d_wk1) judge++ ;
#elif defined (__aarch64__) 
      if ((long)d_ptr  != (long)&d_wk1) judge++ ;
#elif defined(__hal) && defined(LONG64)
      if ((int)d_ptr  != (int)&d_wk1) judge++ ;
#else
      if ((int)d_ptr  != (int)&d_wk1) judge++ ;
#endif
	  else printf("d_ptr:%x, &d_wk1:%x\n",(int)d_ptr,(int)&d_wk1);
      if ((int)ld_ptr == (int)&ld_wk1)  judge++ ;


#if defined(os2)
      ichck("FEC01.12",22,judge," cast int <--> pointer");
#elif defined(sxo) || defined(nollint)
      ichck("FEC01.12",24,judge," cast int <--> pointer");
#else
      ichck("FEC01.12",26,judge," cast int <--> pointer");
#endif

  }



  {
      int    judge = 0 ;
      int v1,v2,v3,v4,v5,v6,v7,v8,v9,v10 ;
      void          *v_ptr ;
      char          *c_ptr   ; char          c_wk1  =10;
      int           *i_ptr   ; int           i_wk1  =11;
      short         *si_ptr  ; short         si_wk1 =12;
      long          *li_ptr  ; long          li_wk1 =13;
      float         *f_ptr   ; float         f_wk1  =14;
      double        *d_ptr   ; double        d_wk1  =15;
      long double   *ld_ptr  ; long double   ld_wk1 =16;
#if defined(msp)|defined(uxp)
      long long int *lli_ptr ; long long int lli_wk1=17;
#endif
#if !defined(os2)
      wchar_t       *w_ptr   ; wchar_t       w_wk1  =18;
#endif

      c_ptr   = &c_wk1  ; i_ptr   = &i_wk1  ; si_ptr  = &si_wk1 ;
      li_ptr  = &li_wk1 ; f_ptr   = &f_wk1  ; d_ptr   = &d_wk1  ;
      ld_ptr  = &ld_wk1 ;

      c_ptr = (char *)ld_ptr ;
      if (((int)c_ptr^(int)ld_ptr) == 0) judge++ ;
      ld_ptr = (long double *)c_ptr ;
      if (*ld_ptr == 16)                 judge++ ;

      si_ptr = (short *)d_ptr ;
      if (((int)si_ptr^(int)d_ptr) == 0) judge++ ;
      d_ptr = (double *)si_ptr ;
      if (*d_ptr == 15)                  judge++ ;

      ichck("FEC01.13",4,judge," cast pointer <--> pointer");
  }



  {
      int    judge = 0 ;
      int    func1(void) ;
      char   func2(void) ;
      float  func3(void) ;
      double func4(void) ;
      int    (*ip)();
      char   (*cp)();
      float  (*fp)();
      double (*dp)();
      ip = func1 ;
      cp = (char (*)())ip ;
      cp() ;
      ip = (int (*)())cp ;
      ip() ;

      fp = func3 ;
      dp = (double (*)())fp ;
      dp() ;
      fp = (float (*)())dp ;
      fp() ;
      ichck("FEC01.14",4,fjudge,"cast func type <--> func type");
  }

  header("","CAST OPERATOR TEST");
  }
