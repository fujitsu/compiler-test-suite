
















  #include <stddef.h>
  #include "001.h"








  char func11(void)
  {
      return 3 ;
  }







  char func12(void)
  {
      return 6 ;
  }







  float func21(void)
  {
      return 3.0f ;
  }







  float func22(void)
  {
      return 6.0f ;
  }

#if defined(msp)|defined(uxp)
      long long int lli_wk1=10LL,lli_wk2=5LL ;
#endif





int main()
  {

  header("","ADD/SUBTRACT OPRATOR TEST");




  {
      int     judge = 0 ,i;
      char    func11(void) ;
      char    func12(void) ;
      float   func21(void) ;
      float   func22(void) ;
      char   *c_ptr ;
      char    c_wk1=10, c_wk2=5,res ;
      char    c_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      short   si_wk1=10 ;
      int    *i_ptr ;
      int     i_wk1=10, i_wk2=5 ;
      int     i_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      float   *fl_ptr ;
      float   fl_wk1=10.0f ,fl_wk2=5.0f;
      double *d_ptr ;
      double  d_wk1=10.0, d_wk2=5.0 ;
      double  d_tbl[30];
      struct tag1 {
                   char  c;
                   short i;
                   long  l;
                   float f;
                  } ;
      union  tag2 {
                   char  c;
                   short i;
                   long  l;
                   float f;
                  } ;

      struct tag1  sarea1={7,2,6,3} ;
      struct tag1  sarea2[3]={5,7,6,8};
      struct tag1 *parea;
      union  tag2  uarea={10};

      memset(d_tbl,0,sizeof(d_tbl[30]));

      c_ptr  = &c_wk1 ;
      i_ptr  = &i_wk1 ;
      fl_ptr = &fl_wk1 ;
      d_ptr  = &d_wk1 ;
      parea  = &sarea1 ;
      if ((func11()+func12())            == 9)  judge++ ;
      if ((c_wk1 + c_wk2)                == 15) judge++ ;
      if ((c_tbl[0]+c_tbl[8])            == 10) judge++ ;
      if ((sarea1.c+sarea1.c)            == 14) judge++ ;
      if ((sarea2[!parea->i].c+sarea1.c) == 12) judge++ ;
      if ((parea->c+parea->i)            == 9)  judge++ ;
      if ((uarea.c+uarea.c)              == 20) judge++ ;
      if ((func11()+c_tbl[0])            == 4)  judge++ ;
      if ((c_wk1 + sarea1.c)             == 17) judge++ ;
      if ((c_tbl[8]+++10)                == 19) judge++ ;
      if ((c_tbl[8]--+10)                == 20) judge++ ;
      if ((10+10)                        == 20) judge++ ;
      if ((1*2*3*4*5*1*2/3)+c_tbl[0]     == 81)  judge++ ;
      if ((0x0a+0002)                    == 12)  judge++ ;
#if defined(msp)
      if ((char)('a'+1)                  == (char)130) judge++ ;
#else
      if ((char)('a'+1)                  == (char)98)  judge++ ;
#endif

      if ((++c_wk1 + --c_wk2)            == 15) judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if ((sizeof(long)+10)              == 18) judge++ ;
      if ((sizeof sarea2+sizeof uarea)   == 80) judge++ ;
#else
      if ((sizeof(long)+10)              == 14) judge++ ;
      if ((sizeof sarea2+sizeof uarea)   == 40) judge++ ;
#endif
#if defined(os2)
      if ((c_wk1+c_wk2) +??-(char)0xfd   == 17) judge++ ;
#elif INT64
      if ((c_wk1+c_wk2) +??-0xfffffffffffffffd  == 17) judge++ ;
#else
      if ((c_wk1+c_wk2) +??-0xfffffffd  == 17) judge++ ;
#endif
      if ((c_wk1+(-c_wk1))               == 0)  judge++ ;
      if (+(*c_ptr + *c_ptr)             == 22) judge++ ;
      sarea1.i=10 ; uarea.f=10.0f ;
      if ((char)uarea.f + (char)sarea1.i == 20) judge++ ;

      d_tbl[0] = d_wk1                + 1.1e+3 ;
      d_tbl[1] = d_wk1                + d_wk2 ;
      d_tbl[2] = (double)((long)d_wk1 + (long)d_wk2) ;
      d_tbl[3] = (double)sizeof d_wk1 + (double)sizeof(double);
      d_tbl[4] = -(d_wk1              + d_tbl[1]) ;
      d_tbl[5] = ++d_wk1              + --d_wk2 ;
      if (d_tbl[0]   == 1110.0e+0) judge++ ;
      for (i=1;i<=5;i++) {
        switch ((long)d_tbl[i]) {
          case 15  : judge++ ;break ; 
          case 16  : judge++ ;break ; 
          case -25 : judge++ ;break ; 
          default  : judge-- ;
        }
      }
      if (fl_wk1 + fl_wk2  == 15)   judge++ ;
      if (fl_wk1 + 0       == 10)   judge++ ;
      if (fl_wk1 + (-10)   == 0)    judge++ ;
      d_wk1 = 10.0 ;
      if (((int)func21()+(int)func22())      == 9)     judge++ ;
      if ((si_wk1 + i_wk1)+(++i_wk2)         == 26)    judge++ ;
      if ((sarea1.l+i_tbl[8])                == 15)    judge++ ;
      if ((sarea1.i+(&sarea1)->l)            == 16)     judge++ ;
      if (((int)func21()+(-i_tbl[0]))        == 2)     judge++ ;
      if ((i_wk1 + sarea1.i)                 == 20)    judge++ ;
      if ((i_tbl[8]++ +(-10))                == -1)    judge++ ;
      if ((++i_wk1 + --si_wk1)               == 20)    judge++ ;
      if ( *i_ptr + *i_ptr                   == 22)    judge++ ;
      if ((int)*d_ptr + 32000                == 32010) judge++ ;
#if defined(os2)
      if (sizeof(long) + -sizeof(short)      == 2)     judge++ ;
#elif INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if (sizeof(long) + -2                  == 6)     judge++ ;
#else
      if (sizeof(long) + -2                  == 2)     judge++ ;
#endif
      c_wk1 = 10; i_wk1 = 10; fl_wk1 = 10; d_wk1 = 10 ;
      if (*c_ptr + *i_ptr + *fl_ptr + *d_ptr == 40)    judge++ ;

#if defined(msp)|defined(uxp)
      if (lli_wk1 + lli_wk2 == 15LL)judge++ ;
      c_wk2 = 128 ;
      if (lli_wk1 + c_wk2   == 138) judge++ ;
      ichck("FEI01.01",45,judge,"add arithmetic");
#else
      ichck("FEI01.01",43,judge,"add arithmetic");
#endif
  }



  {
      int judge = 0 ,i_cnt;
      enum {e0,e1,e2,e3,e4,e5} earea ;
      char           c_tbl[10]  ; char          *c_ptr ;
      short          si_tbl[10] ; short         *si_ptr ;
      int            i_tbl[10]  ; int           *i_ptr ;
      long           l_tbl[10]  ; long          *l_ptr ;
      float          fl_tbl[10] ; float         *fl_ptr ;
      double         d_tbl[10]  ; double        *d_ptr ;
      long double    ld_tbl[10] ; long double   *ld_ptr ;
#if !defined(os2)
       wchar_t       w_tbl[10]  ; wchar_t       *w_ptr ;
#endif
#if !defined(nollint)
       long long int lli_tbl[10]; long long int *lli_ptr ;
       lli_ptr = lli_tbl ;
#endif
#if !defined(os2)
       w_ptr = w_tbl ;
#endif
      c_ptr  = c_tbl  ;
      si_ptr = si_tbl ;
      i_ptr  = i_tbl  ;
      l_ptr  = l_tbl  ;
      fl_ptr = fl_tbl ;
      d_ptr  = d_tbl  ;
      ld_ptr = ld_tbl ;

      earea = e1 ;
      for (i_cnt=0;i_cnt<5;i_cnt++) {
          *c_ptr  = 1 ;
          *si_ptr = 2 ;
          *i_ptr  = 3 ;
          *l_ptr  = 4 ;
          *fl_ptr = 5.0F ;
          *d_ptr  = 6 ;
          *ld_ptr = 7.0L ;

          c_ptr++  ;
          si_ptr++ ;
          ++i_ptr  ;
          l_ptr    = (l_ptr + 1) ;
          ++fl_ptr ;
          d_ptr    = d_ptr+e1 ;
#if defined(os2)
          ld_ptr   = ld_ptr + earea ;
#else


          ld_ptr   = ld_ptr + (int)earea ;
#endif
      }
      if (c_tbl [0]==1 && c_tbl [4]==1)  judge++ ;
      if (si_tbl[0]==2 && si_tbl[4]==2)  judge++ ;
      if (i_tbl [0]==3 && i_tbl [4]==3)  judge++ ;
      if (l_tbl [0]==4 && l_tbl [4]==4)  judge++ ;
      if (fl_tbl[0]==5 && fl_tbl[4]==5)  judge++ ;
      if (d_tbl [0]==6 && d_tbl [4]==6)  judge++ ;
      if (ld_tbl[0]==7 && ld_tbl[4]==7)  judge++ ;
#if !defined(os2)
      w_ptr = w_tbl ;
      for (i_cnt=0;i_cnt<10;i_cnt++) {
         *w_ptr = 1 ;
         w_ptr  = w_ptr + 1 ;
      }
      if (w_tbl[0]==1 && w_tbl[9]==1) judge++ ;
#endif
#if !defined(nollint)
       lli_ptr = lli_tbl ;
      for (i_cnt=0;i_cnt<10;i_cnt++) {
         *lli_ptr = 1 ;
         lli_ptr  = lli_ptr + 1 ;
      }
      if (lli_tbl[0]==1 && lli_tbl[9]==1) judge++ ;
#endif

#if defined(sxo) || defined(nollint)
      ichck("FEI01.02",8,judge,"add pointer");
#else
      ichck("FEI01.02",9,judge,"add pointer");
#endif
  }

  header("","ADD/SUBTRACT OPRATOR TEST");

  }
