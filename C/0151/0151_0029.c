
















  #include <stddef.h>
  #include "001.h"








  char func11(void)
  {
      return 7 ;
  }







  char func12(void)
  {
      return 7 ;
  }







  float func21(void)
  {
      return 7.0f ;
  }







  float func22(void)
  {
      return 7.0f ;
  }







  void func_v1(void)
  {
  }







  void func_v2(void)
  {
  }

#if defined(msp)|defined(uxp)
      signed long long int lli_wk1=7LL,lli_wk2=7LL;
#endif
      int i_extbl[5]={10,20,30,40,50} ;





int main()
  {

  header("","EQUIVALENCE OPERATOR TEST");




  {
      int     judge = 0 ,i;
      char    func11(void) ;
      char    func12(void) ;
      float   func21(void) ;
      float   func22(void) ;
      char   *c_ptr ;
      char    c_wk1=7, c_wk2=7,res ;
      char    c_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      short   si_wk1=7 ;
      int    *i_ptr ;
      int     i_wk1=7, i_wk2=7 ;
      int     i_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      float   *fl_ptr ;
      float   fl_wk1=7.0f ,fl_wk2=7.0f;
      double *d_ptr ;
      double  d_wk1=7.0, d_wk2=7.0 ;
      double  d_tbl[30];
      struct tag1 {
                   char  c;
                   short s;
                   long  l;
                   float f;
                  } ;
      union  tag2 {
                   char  c;
                   short s;
                   long  l;
                   float f;
                  } ;

      struct tag1  sarea1={7,7,7,7} ;
      struct tag1  sarea2[3]={7,7,7,7};
      struct tag1 *parea;
      union  tag2  uarea={7};

      memset(d_tbl,0,sizeof(d_tbl[30]));

      c_ptr  = &c_wk1 ;
      i_ptr  = &i_wk1 ;
      fl_ptr = &fl_wk1 ;
      d_ptr  = &d_wk1 ;
      parea  = &sarea1 ;
      if ((func11()==func12())            == 1) judge++ ;
      if ((c_wk1 == c_wk2)                == 1) judge++ ;
      if ((c_tbl[0]+8==c_tbl[8])          == 1) judge++ ;
      if ((sarea1.c==sarea1.s)            == 1) judge++ ;
      if ((sarea2[!parea->s].c==sarea1.c) == 1) judge++ ;
      if ((parea->c==parea->s)            == 1) judge++ ;
      uarea.s = 7 ;
      if ((uarea.s==sarea1.c)             == 1) judge++ ;
      if ((func11()==(c_tbl[0]<<3)-1)     == 1) judge++ ;
      if ((c_wk1 == sarea1.c)             == 1) judge++ ;
      if ((c_tbl[8]++==10)                == 0) judge++ ;
      if ((c_tbl[8]--==10)                == 1) judge++ ;
      if ((10==10)                        == 1) judge++ ;
      if (((1*2*3*4*5*1*2/3%7)==c_tbl[2]) == 1) judge++ ;
      if ((0x0a==0012)                    == 1) judge++ ;
#if defined(msp)
      if ((char)('a'==129)                == 1) judge++ ;
#else
      if ((char)('a'==97)                 == 1) judge++ ;
#endif

      if ((++c_wk1 == ((--c_wk2>>2)<<3))  == 1) judge++ ;
      c_wk1 = 7; c_wk2 = 7;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if ((sizeof(long)==8)               == 1) judge++ ;
#else
      if ((sizeof(long)==4)               == 1) judge++ ;
#endif
      if ((sizeof sarea2==9*sizeof uarea) == 1) judge++ ;
#if defined(os2)
      if ((c_wk1+c_wk2) ==((??-(char)0xf8&0x00ff)*2)
                                          == 1) judge++ ;
#else
      if ((c_wk1+c_wk2) ==((??-(char)0xf8&0x000000ff)*2)
                                          == 1) judge++ ;
#endif
      if ((c_wk1==(-c_wk1))               == 0) judge++ ;
      if (+(*c_ptr == *c_ptr)             == 1) judge++ ;
      if (d_wk1 == c_wk1                  == 1) judge++ ;
      if (fl_wk1 == d_wk1                 == 1) judge++ ;
      sarea1.s=7 ; uarea.f=7.0f ;
      if ((long)uarea.f == (char)sarea1.s == 1) judge++ ;

      d_tbl[0] = d_wk1                == 7.0f ;
      d_tbl[1] = d_wk1                == d_wk2 ;
      d_tbl[2] = (double)((long)d_wk1 == (long)d_wk2) ;
      d_tbl[3] = sizeof d_wk1         == sizeof(double);
      d_tbl[4] = -(d_wk1              == ((long)d_tbl[1]<<3)-1) ;
      d_tbl[5] = ++d_wk1              == --d_wk2 ;
      if (d_tbl[0]   == 1) judge++ ;
      if (d_tbl[1]   == 1) judge++ ;
      if (d_tbl[2]   == 1) judge++ ;
      if (d_tbl[3]   == 1) judge++ ;
      if (d_tbl[4]   ==-1) judge++ ;
      if (d_tbl[5]   == 0) judge++ ;

      if (fl_wk1 == fl_wk2  == 1)   judge++ ;
      if (fl_wk1 == 7L      == 1)   judge++ ;
      if (fl_wk1 == (-10)   == 0)   judge++ ;
      d_wk1 = 7.0 ;
      if ((func21()==(short)func22())         == 1) judge++ ;
      if ((si_wk1 + i_wk1)==(++i_wk2-1<<1)    == 1) judge++ ;
      if ((sarea1.l==i_tbl[6])                == 1) judge++ ;
      if ((sarea1.s==(&sarea1)->l)            == 1) judge++ ;
      if (((int)func21()==(-i_tbl[0]))        == 0) judge++ ;
      if ((i_wk1 == sarea1.s)                 == 1) judge++ ;
      if ((i_tbl[6]++ ==??-(-8))           == 1) judge++ ;
      if ((++i_wk1 == --si_wk1+2)             == 1) judge++ ;
      if ( *i_ptr == *i_ptr                   == 1) judge++ ;
      if (*d_ptr == 32000/50/20/4-1           == 1) judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if (sizeof(long) == sizeof(short)*4     == 1) judge++ ;
#else
      if (sizeof(long) == sizeof(short)*2     == 1) judge++ ;
#endif
      if (sizeof(double)%3 == 2               == 1) judge++ ;
      c_wk1 = 7; i_wk1 = 7; fl_wk1 = 4; d_wk1 = 16 ;
      if ((((*c_ptr == *i_ptr)<<2 == *fl_ptr)<<4 == *d_ptr)
                                              == 1) judge++ ;
      if (i_wk1<<2 == 28                      == 1) judge++ ;
      if (i_wk1>>1 == 3                       == 1) judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if (sizeof(double)<=sizeof(long) == sizeof(char)<sizeof(int)
#else
      if (sizeof(float)<=sizeof(long) == sizeof(char)<sizeof(int)
#endif
                                              == 1)judge++ ;

#if defined(msp)|defined(uxp)
      if (lli_wk1 == lli_wk2 == 1) judge++ ;
      if (lli_wk1 == c_wk1   == 1) judge++ ;
      ichck("fee01.01",51,judge,"== operator arithmetic");
#else
      ichck("fee01.01",49,judge,"== operator arithmetic");
#endif
  }



  {
      int  judge = 0;
      void  *v_ptr1,*v_ptr2 ;
      int    i_tbl[10]={1,2,3,4,5,6,7,8,9,0} ;
      signed i_tbl2[10] ;
      int   *i_ptr1,*i_ptr2 ;
      extern int  i_extbl[] ;
      void func_v1(void) ;
      void func_v2(void) ;

      v_ptr1 = (void *)&i_tbl[0] ;
      v_ptr2 = (void *)&i_tbl[1] ;
      i_ptr1 = &i_tbl[4] ;
      i_ptr2 = &i_tbl[4] ;

      if (v_ptr1   == v_ptr2     == 0) judge++ ;
      if (i_extbl  == v_ptr1     == 0) judge++ ;
      if (func_v1  == v_ptr1     == 0) judge++ ;
      if (i_ptr1   == v_ptr1     == 0) judge++ ;
      if (i_ptr1   == v_ptr1     == 0) judge++ ;
      if (i_ptr1   == v_ptr1     == 0) judge++ ;

      if (i_tbl    == i_tbl2     == 0) judge++ ;
      if (i_ptr1   == i_tbl2     == 0) judge++ ;
      ichck("fee01.02",8,judge,"== operator void(obj) pointer");
  }



  {
      int judge = 0 ;
      int  i_wk1,*i_ptr1 ;
      void *v_ptr1 ;
      char func11(void) ;
      i_ptr1 = &i_wk1 ;
      v_ptr1 = (void *)&i_wk1 ;
      if (i_ptr1 == 0 == 0) judge++ ;
      if (v_ptr1 == 0 == 0) judge++ ;
      if (func11 == 0 == 0) judge++ ;
      if (i_ptr1 == (int *)0  == 0) judge++ ;
      if (v_ptr1 == (void *)0 == 0) judge++ ;
      if (func11 == (char (*)())0  == 0) judge++ ;
      ichck("fee01.03",6,judge,"== operator null pointer");
  }



  {
      int judge = 0 ;
      int i_tbl1[10]={1,2,3,4,5,6,7,8,9,0};
      signed i_tbl2[10]={1,2,3,4,5,6,7,8,9,0} ;
      float *fp1,*fp2,fl_wk1,fl_wk2 ;
      double *dp1,*dp2,d_wk1,d_wk2 ;
      fp1 = &fl_wk1 ;
      fp2 = &fl_wk2 ;
      dp1 = &d_wk1 ;
      dp2 = &d_wk2 ;
      if (fp1    != fp2    == 1) judge++ ;
      if (dp1    != dp2    == 1) judge++ ;
      if (i_tbl1 != i_tbl2 == 1) judge++ ;

      ichck("fee01.04",3,judge,"!= relevance pointer");
  }



  {
      int  judge = 0;
      void  *v_ptr1,*v_ptr2 ;
      int    i_tbl[10]={1,2,3,4,5,6,7,8,9,0} ;
      int   *i_ptr1,*i_ptr2 ;
      extern int  i_extbl[] ;
      void func_v1(void) ;
      void func_v2(void) ;

      v_ptr1 = (void *)&i_tbl[0] ;
      v_ptr2 = (void *)&i_tbl[1] ;
      i_ptr1 = &i_tbl[4] ;
      i_ptr2 = &i_tbl[4] ;

      if (v_ptr1   != v_ptr2     == 1) judge++ ;
      if (i_extbl  != v_ptr1     == 1) judge++ ;
      if (func_v1  != v_ptr1     == 1) judge++ ;
      if (i_ptr1   != v_ptr1     == 1) judge++ ;
      if (i_ptr1   != v_ptr1     == 1) judge++ ;
      if (i_ptr1   != v_ptr1     == 1) judge++ ;
      if (v_ptr1   != 0          == 1) judge++ ;
      if (i_tbl[0] != i_tbl[1]   == 1) judge++ ;
      ichck("fee01.05",8,judge,"!= operator void type pointer");
  }

  header("","EQUIVALENCE OPERATOR TEST");
  }
