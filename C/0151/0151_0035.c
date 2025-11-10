
















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

#if !defined(nollint)
      long long int lli_wk1=10LL,lli_wk2=5LL ;
#endif





int main()
  {

  header("","MULTIPLYING OPERATOR TEST");




  {
      int     judge = 0 ,i;
      char    func11(void) ;
      char    func12(void) ;
      char   *c_ptr ;
      char    c_wk1=10, c_wk2=5,res ;
      char    c_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      double *d_ptr ;
      double  d_wk1=10.0, d_wk2=5.0 ;
      double  d_tbl[30];
      float   fl_wk1=10.0f ,fl_wk2=5.0f;
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

      c_ptr = &c_wk1 ;
      d_ptr = &d_wk1 ;
      parea = &sarea1 ;
      if ((func11()*func12())            == 18)  judge++ ;
      if ((c_wk1 * c_wk2)                == 50)  judge++ ;
      if ((c_tbl[0]*c_tbl[8])            == 9)   judge++ ;
      if ((sarea1.c*sarea1.c)            == 49)  judge++ ;
      if ((sarea2[!parea->i].c*sarea1.c) == 35)  judge++ ;
      if ((parea->c*parea->c)            == 49)  judge++ ;
      if ((uarea.c*uarea.c)              == 100) judge++ ;
      if ((func11()*c_tbl[0])            == 3)   judge++ ;
      if ((c_wk1 * sarea1.c)             == 70)  judge++ ;
      if ((c_tbl[8]++*10)                == 90)  judge++ ;
      if ((c_tbl[8]--*10)                == 100) judge++ ;

      if ((10*10)                        == 100) judge++ ;
      if ((1+2+3+4+5-1-2-3)*c_tbl[0]     == 9)   judge++ ;
      if ((0x0a*0002)                    == 20)  judge++ ;
#if defined(msp)
      if ((char)('a'*1)                  == (char)129) judge++ ;
#else
      if ((char)('a'*1)                  == (char)97)  judge++ ;
#endif

      if ((++c_wk1 * --c_wk2)            == 44)   judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if ((sizeof(long)*10)              == 80)   judge++ ;
      if ((sizeof sarea2*sizeof uarea)   == 576)  judge++ ;
#else
      if ((sizeof(long)*10)              == 40)   judge++ ;
      if ((sizeof sarea2*sizeof uarea)   == 144)  judge++ ;
#endif
      if ((c_wk1+c_wk2) *??-(char)0xfd   == 30)   judge++ ;
      if ((-c_wk1*-c_wk1)                == 121)  judge++ ;
      if (+(*c_ptr * *c_ptr)             == 121)  judge++ ;
      sarea1.i=10 ; uarea.f=10.0f ;
      if ((char)uarea.f * (char)sarea1.i == 100)  judge++ ;

      d_tbl[(1==2)]  = d_wk1                * -5.0e-0 ;
      d_tbl[2-1]     = d_wk1                * d_wk2 ;
      d_tbl[4*!0x00] = (double)((int)d_wk1  * (int)d_wk2) ;
      d_tbl[3*3]     = (double)sizeof d_wk1 * (double)sizeof(double);
      d_tbl[4*4]     = -(d_wk1              * -d_tbl[1]) ;
      d_tbl[5*5]     = ++d_wk1              * --d_wk2 ;
      if (d_tbl[0]   == -50.0e+0) judge++ ;
      for (i=1;i<=5;i++) {
        switch ((int)d_tbl[i*i]) {
          case 50  : judge++ ;break ; 
          case 64  : judge++ ;break ; 
          case 500 : judge++ ;break ; 
          case 44  : judge++ ;break ; 
          default  : judge-- ;
        }
      }
      if (fl_wk1 * fl_wk2  == 50)   judge++ ;
      if (fl_wk1 * 0       == 0)    judge++ ;
      if (fl_wk1 * -10     == -100) judge++ ;
#if !defined(nollint)
      if (lli_wk1 * lli_wk2 == 50LL)judge++ ;
      if (lli_wk1 * c_wk2   == 40)  judge++ ;
      ichck("FEM01.01",33,judge,"multiplying positive");
#else
      ichck("FEM01.01",31,judge,"multiplying positive");
#endif
  }



  {
      int     judge = 0 ,i;
      float   func21(void) ;
      float   func22(void) ;
      int    *i_ptr ;
      int     i_wk1=10, i_wk2=5 ;
      int     i_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      short   si_wk1=10 ;
      double *d_ptr ;
      double  d_wk1=10.0, d_wk2=5.0 ;
      struct tag1 {
                   short s;
                   long  l;
                  } ;
      struct tag1  sarea1={7,2} ;

      i_ptr = &i_wk1 ;
      d_ptr = &d_wk1 ;
      if (((int)func21()*-(int)func22()) == -18)    judge++ ;
      if ((si_wk1 * -i_wk1)*+i_wk2       == -500)   judge++ ;
      if ((sarea1.l*-i_tbl[8])           == -18)    judge++ ;
      if (-(sarea1.s*(&sarea1)->l)       == -14)    judge++ ;
      if (((int)func21()*(-i_tbl[0]))    == -3)     judge++ ;
      if ((-i_wk1 * sarea1.s)            == -70)    judge++ ;
      if ((i_tbl[8]++*-10)               == -90)    judge++ ;
      if ((++i_wk1 * --si_wk1)*-1        == -99)    judge++ ;
      if ((*i_ptr * -(*i_ptr))           == -121)   judge++ ;
      if ((int)*d_ptr * -1024            == -10240) judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if (sizeof(long) * -sizeof(short)  == -16)     judge++ ;
#else
      if (sizeof(long) * -sizeof(short)  == -8)     judge++ ;
#endif
      if (*d_ptr * *d_ptr * *d_ptr * *d_ptr == 10000) judge++ ;
      ichck("FEM01.02",12,judge,"multiplying negative");
  }



  {
      int     judge = 0 ,i;
      char    func11(void) ;
      char    func12(void) ;
      float   func21(void) ;
      float   func22(void) ;
      short  *si_ptr ;
      short   si_wk1=10, si_wk2=5,res ;
      short   si_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      long   *i_ptr ;
      long    i_wk1=10, i_wk2=5 ;
      long    i_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      const float   fl_wk1=10.0f ,fl_wk2=5.0f;
      double *d_ptr ;
      double  d_wk1=10.0, d_wk2=5.0 ;
      double  d_tbl[30];
      struct tag1 {
                   double d;
                   short  s;
                   long   l;
                   float  f;
                  } ;
      union  tag2 {
                   double d;
                   short  s;
                   long   l;
                   float  f;
                  } ;
      struct tag1  sarea1={7,2,6,3} ;
      struct tag1  sarea2[3]={7,2,6,3};
      struct tag1 *parea;
      union  tag2  uarea={2};

      si_ptr = &si_wk1 ;
      d_ptr = &d_wk1 ;
      parea = &sarea1 ;
      if (-(func12()/func11())                == -2) judge++ ;
      if ((func11()/-func12())                == 0)  judge++ ;
#if 1 
      if (((float)(si_wk1/si_wk2)/-si_wk1)*10 ==-2)  judge++ ;
#else
      if (((float)(si_wk1/si_wk2)/-si_wk1)*10 ==-1.999999F) judge++ ;
#endif
      if (0/-si_wk2                           == 0)  judge++ ;
      if (!(si_tbl[8]/-si_tbl[0])             == 0)  judge++ ;
      if (-(!sarea1.s/sarea1.s)               == 0)  judge++ ;
      if (-(sarea2[!parea->l].s/sarea1.s)     == -1) judge++ ;
      if ((-parea->l/parea->s)                == -3) judge++ ;
      uarea.s = 2 ;
      if (-(sarea1.l/uarea.s)                 == -3) judge++ ;
      if (-(func11()/si_tbl[0])               == -3) judge++ ;
      if (-(si_wk1 / sarea1.l)                == -1) judge++ ;
      if (-(si_tbl[8]++/10)                   == 0)  judge++ ;
      if (-(si_tbl[8]--/10)                   == -1) judge++ ;
      if ((-10/!0)                            == -10) judge++ ;
      if (-(-10/-10)                          == -1)  judge++ ;
      if (-3.1415e+0/3.1415e+0                == -1)  judge++ ;
      if ((0/-10)                             == 0)   judge++ ;
      if ((1+2+3+4+5-1-2-3)/-si_tbl[8]        == -1)  judge++ ;
      if (-(0x0a/0002)                        == -5)  judge++ ;
#if defined(msp)
      if ((short)('a'/-10.0)                  == (short)-12) judge++ ;
#else
      if ((short)('a'/-10.0)                  == (short)-9)  judge++ ;
#endif

      if (-(++d_wk1 / --d_wk2)              == -2.75e+0)  judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if (-(sizeof(long)/0.4e+1)            == -2.000000) judge++ ;
#else
      if (-(sizeof(long)/0.4e+1)            == -1.000000) judge++ ;
#endif
#if defined(os2)
      if (-((float)sizeof sarea1/(float)sizeof uarea)==-2.25e+0)judge ;
#elif i386 
				 if (-((float)sizeof sarea1/(float)sizeof uarea)==-2.5) judge++;
	
    
#elif INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
    if (-((float)sizeof sarea1/(float)sizeof uarea)==-4) judge++ ;
	
    
#else
    if (-((float)sizeof sarea1/(float)sizeof uarea)==-3) judge++ ;
	
    
#endif
      if ((-d_wk1-d_wk2)/??-(short)0xfffd == -7.5)        judge++ ;
      if ((-d_wk1/-d_wk1)*-1                == -1)        judge++ ;
      if (-(*d_ptr / *d_ptr)                == -1.0e+0)   judge++ ;
      d_wk1 = 3.141592654 ;
      d_wk2 = 3.141592654 ;
      if (d_wk1 / -d_wk2                    == -1.0e+0) judge++ ;
      sarea1.l=10 ; uarea.f=10.0f ;
      if ((float)uarea.f / -(float)sarea1.l == -1)      judge++ ;
      if (fl_wk1 / -fl_wk2                  == -2.0e+0) judge++ ;
      if (0.0f / -fl_wk1                    == 0)       judge++ ;
#if defined(os2)
printf("fl_wk1 / -10 %e\n",fl_wk1 / -10) ;  
#endif


      if (fl_wk1 / -10                      == -1)      judge++ ;
#if !defined(nollint)
      if (lli_wk1 / -lli_wk2                == -2)      judge++ ;
      if (lli_wk1 / -2                      == -5)      judge++ ;
      ichck("FEM01.03",33,judge,"divide negative");
#else
      ichck("FEM01.03",31,judge,"divide negative");
#endif
  }



  {
      int     judge = 0 ,i;
      char    func11(void) ;
      char    func12(void) ;
      float   func21(void) ;
      float   func22(void) ;
      short  *si_ptr ;
      short   si_wk1=10, si_wk2=5,res ;
      short   si_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      long   *i_ptr ;
      long    i_wk1=10, i_wk2=5 ;
      long    i_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      const float   fl_wk1=10.0f ,fl_wk2=5.0f;
      double *d_ptr ;
      double  d_wk1=10.0, d_wk2=5.0 ;
      double  d_tbl[30];
      struct tag1 {
                   double d;
                   short  s;
                   long   l;
                   float  f;
                  } ;
      union  tag2 {
                   double d;
                   short  s;
                   long   l;
                   float  f;
                  } ;
      struct tag1  sarea1={7,2,6,3} ;
      struct tag1  sarea2[3]={7,2,6,3};
      struct tag1 *parea;
      union  tag2  uarea={2};

      si_ptr = &si_wk1 ;
      d_ptr = &d_wk1 ;
      parea = &sarea1 ;
      if (-(func12()%func11())             == 0)  judge++ ;
      if ((func11()%func12())              == 3)  judge++ ;
      if (((si_wk1%si_wk2)%-si_wk1)%3      == 0)  judge++ ;
      if (-1%si_wk2                        == -1) judge++ ;
      if (!(si_tbl[8]%si_tbl[1])           == 0)  judge++ ;
      if (!(si_tbl[8]%si_tbl[2])           == 1)  judge++ ;
      if ((!sarea1.s%sarea1.s)             == 0)  judge++ ;
      if ((sarea2[!parea->l].s%sarea1.s)   == 0)  judge++ ;
      if ((parea->l%parea->s)              == 0)  judge++ ;
      uarea.s = 4 ;
      if ((-sarea1.l%uarea.s)              == -2) judge++ ;
      if ((func11()%si_tbl[0])             == 0)  judge++ ;
      if ((si_wk1 % sarea1.l)              == 4)  judge++ ;
      if ((si_tbl[8]++%-2)                 == 1)  judge++ ;
      if ((si_tbl[8]--%2)                  == 0)  judge++ ;
      if ((-10%!0)                         == 0)  judge++ ;
      if ((-10%-9)                         == -1) judge++ ;
      if (-(long)3.1415e+0%(long)3.1415e+0 == 0)  judge++ ;
      if ((0%-10)                          == 0)  judge++ ;
#if defined(msp)
      if ((short)('a'%-10)                 == (short)9) judge++ ;
#else
      if ((short)('a'%-10)                 == (short)7) judge++ ;
#endif
      if ((1+2+3+4+5-1-2-3)%-si_tbl[8]     == 0)  judge++ ;
      if ((0x0a%0002)                      == 0)  judge++ ;
#if defined(os2)
      if ((++(long)d_wk1 % --(long)d_wk2)  == 0)  judge++ ;
#else
  
      if (((long)++d_wk1 % (long)--d_wk2)  == 3)  judge++ ;
#endif
      d_wk1 = 10.0 ; d_wk2 = 5.0 ;
      if (((long)++d_wk1 % (long)--d_wk2)  == 3)  judge++ ;
      if ((sizeof(long)*20%sizeof(short))  == 0)  judge++ ;
#if defined(os2)
      if ((sizeof sarea1%sizeof uarea)     == 2)  judge++ ;
#elif i386
      if ((sizeof sarea1%sizeof uarea)     == 4)  judge++ ;
#else
      if ((sizeof sarea1%sizeof uarea)     == 0)  judge++ ;
#endif
      if (((long)(-d_wk1-d_wk2))%??-(short)0xfffd
                                           == -1) judge++ ;
      if ((-(long)d_wk1%-(char)d_wk1)      == 0)  judge++ ;
      if ((*si_ptr % *si_ptr)              == 0)  judge++ ;
      i_wk1 = 100 ;
      si_wk2 = 3 ;
      if (i_wk1 % -si_wk2                  == 1)  judge++ ;
      sarea1.l=10 ; uarea.f=10.0f ;
      if ((int)uarea.f % -sarea1.l         == 0)  judge++ ;
#if defined(msp)|defined(uxp)
      if (lli_wk1 % lli_wk2                == 0)  judge++ ;
      if (lli_wk1 % 3                      == 1)  judge++ ;
      ichck("FEM01.04",32,judge,"remainder negative");
#else
      ichck("FEM01.04",30,judge,"remainder negative");
#endif
  }

  header("","MULTIPLYING OPERATOR TEST");

  }
