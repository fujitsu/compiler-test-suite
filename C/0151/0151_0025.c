
















  #include <stddef.h>
  #include "001.h"





int main()
  {

  header("","CAST OPERATOR TEST");




  {

      int   judge = 0 ;
      void          *v_ptr   ;
      char          *c_ptr   ; char          c_wk1  =1;
      int           *i_ptr   ; int           i_wk1  =1;
      short         *si_ptr  ; short         si_wk1 =1;
      long          *li_ptr  ; long          li_wk1 =1;
      float         *f_ptr   ; float         f_wk1  =1;
      double        *d_ptr   ; double        d_wk1  =1;
      long double   *ld_ptr  ; long double   ld_wk1 =1;
#if defined(msp)|defined(uxp)
      long long int *lli_ptr ; long long int lli_wk1=1;
#endif
#if !defined(os2)
      wchar_t       *w_ptr   ; wchar_t       w_wk1  =1;
#endif
      int  i_tbl[10];
      char c_tbl[5] ;
      struct tag1 {void         *v;
                   int          *i;
                   char         *c;
                   unsigned     bi:10;
                   short        *s;
                   long         *l;
                   float        *f;
                   double       *d;
                   long double  *ld;
                   struct tag11 {int *i;} sarea11 ;
                  } sarea ;
      union  tag2 {int          *i;
                   char         *c;
                   short        *s;
                   long         *l;
                   float        *f;
                   double       *d;
                   long double *ld;
                   union tag21 {int *i;}uarea21 ;
                  } uarea ;
      struct tag1 *parea1 = &sarea ;
      union  tag2 *parea2 = &uarea ;


      c_ptr   = &c_wk1  ;
      i_ptr   = &i_wk1  ;
      si_ptr  = &si_wk1 ;
      li_ptr  = &li_wk1 ;
      f_ptr   = &f_wk1  ;
      d_ptr   = &d_wk1  ;
      ld_ptr  = &ld_wk1 ;
#if defined(msp)|defined(uxp)
      lli_ptr = &lli_wk1;
#endif
#if !defined(os2)
      w_ptr   = &w_wk1  ;
#endif
      sarea.i           = &i_wk1 ;
      sarea.sarea11.i   = &i_wk1 ;
      parea1->i         = &i_wk1 ;
      parea1->sarea11.i = &i_wk1 ;


      if ((const void *)c_ptr    ==(const void *)&c_wk1)     judge++ ;
      if ((void *)i_ptr          ==(void *)&i_wk1)           judge++ ;
      if ((volatile void *)si_ptr==(volatile void *)&si_wk1) judge++ ;
      if ((void *)li_ptr         ==(void *)&li_wk1)          judge++ ;
      if ((void *)f_ptr          ==(void *)&f_wk1)           judge++ ;
      if ((const volatile void *)d_ptr   ==
          (const volatile void *)&d_wk1)     judge++ ;
      if ((void *)ld_ptr         == (void *)&ld_wk1)  judge++ ;
#if defined(msp)|defined(uxp)
      if ((void *)lli_ptr        == (void *)&lli_wk1) judge++ ;
#endif
#if !defined(os2)
      if ((void *)w_ptr          == (void *)&w_wk1)   judge++ ;
#endif

      if ((void *)parea1         == (void *)&sarea) judge++ ;
      if ((void *)parea2         == (void *)&uarea) judge++ ;
      if ((void *)c_tbl          == (void *)&c_tbl[--i_wk1]) judge++ ;
      if ((void *)sarea.i        == (void *)&i_wk1)  judge++ ;
      if ((void *)sarea.sarea11.i == (void *)&i_wk1)  judge++ ;
      uarea.s = &si_wk1 ;
      if ((void *)uarea.s         == (void *)&si_wk1) judge++ ;
      uarea.uarea21.i = &i_wk1 ;
      if ((void *)uarea.uarea21.i   == (void *)&i_wk1)  judge++ ;
      if ((void *)parea1->i         == (void *)&i_wk1)  judge++ ;
      if ((void *)parea1->sarea11.i == (void *)&i_wk1)  judge++ ;
      parea2->s = &si_wk1 ;
      if ((void *)parea2->s         == (void *)&si_wk1) judge++ ;
      parea2->uarea21.i = &i_wk1 ;
      if ((void *)parea2->uarea21.i == (void *)&i_wk1)  judge++ ;
      if ((void *)&i_wk1 ==
             (3 > 2 ? (void *)&i_wk1 : (void *)&c_wk1)) judge++ ;

#if defined(msp)|defined(uxp)
      ichck("FEC01.01",21,judge,"cast type void");
#elif defined(os2)
      ichck("FEC01.01",19,judge,"cast type void");
#else
      ichck("FEC01.01",20,judge,"cast type void");
#endif

  }

  header("","CAST OPERATOR TEST");
  }
