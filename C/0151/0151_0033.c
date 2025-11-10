
















  #include <stddef.h>
  #include "001.h"








  long func11(void)
  {
      return 7L;
  }







  long func12(void)
  {
      return 777L;
  }







  float func21(void)
  {
      return 7.0F ;
  }







  float func22(void)
  {
      return 777.0f;
  }

#if !defined(nollint)
      signed long long int lli_wk1=7LL,lli_wk2=777LL;
#endif





int main()
  {

  header("","CONDITION EXPRESSION TEST");




  {
      int     judge = 0 ,i;
      long    func11(void) ;
      long    func12(void) ;
      float   func21(void) ;
      float   func22(void) ;
      char   *c_ptr ;
      char    c_wk1=7, c_wk2=77 ;
      char    c_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      short   si_wk1=7 ;
      short   si_wk2=777 ;
      int    *i_ptr ;
      int     i_wk1=7, i_wk2=777 ;
      int     i_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      long   *l_ptr ;
      long    l_wk1=7, l_wk2=777 ;
      long    l_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      float  *fl_ptr ;
      float   fl_wk1=7.0f ,fl_wk2=777.0f;
      double *d_ptr ;
      double  d_wk1=7.0, d_wk2=777.0 ;
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

      struct tag1  sarea1={1,2,3,4} ;
      struct tag1  sarea2[3]={1,2,3,4};
      struct tag1 *parea;
      union  tag2  uarea={7};

      memset(d_tbl,0,sizeof(d_tbl));

      c_ptr  = &c_wk1 ;
      i_ptr  = &i_wk1 ;
      l_ptr  = &l_wk1 ;
      fl_ptr = &fl_wk1 ;
      d_ptr  = &d_wk1 ;
      parea  = &sarea1 ;

      if ((func11()<func12()    ?
          c_wk1 & c_wk2         :
          (c_tbl[0]+8+c_tbl[2])<<3)   == 5)  judge++ ;
      if ((sarea1.c==sarea1.s%2  ?
           sarea2[!parea->s].c   :
           sarea1.c)                  == 1) judge++ ;
      uarea.s = 7 ;
      if ((uarea.s<sarea1.c        ?
          func11()|(c_tbl[0]<<3)-1 :
          parea->c<parea->s)            == 1) judge++ ;
      if ((c_wk1 <= sarea1.c       ?
           c_tbl[8]++%10           :
           c_tbl[8]--%10)               == 9) judge++ ;
      if ((10*10+10 <= 110           ?
          1*2*3*4*5*1*2/3%7+c_tbl[2] :
          0x0a^0x0a|0x0a)               == 6) judge++ ;
      if (((char)('a'&255) > 129   ?
          ++c_wk1                  :
         (--c_wk2>>3)<<3)               == 72) judge++ ;

      c_wk1 = 7 ; c_wk2 = 77 ;
      if (sizeof(long)>16+4          ?
          sizeof sarea2/sizeof uarea :
#if defined(os2)
        (c_wk1+c_wk2)+(??-(char)0xf8&0x00ff)*2
                                         == 98)         judge++ ;
#else
        (c_wk1+c_wk2)+(??-(char)0xf8&0x000000ff)*2
                                         == 98)         judge++ ;
#endif
      if ((c_wk1==(-c_wk1)       ?
         +(*c_ptr * *c_ptr)      :
         (int)d_wk1 - c_wk1)             == 0) judge++ ;
      sarea1.s=7 ; uarea.f=30.0f ;
      if ((fl_wk1 == d_wk1       ?
          uarea.f * sarea1.s     :
          uarea.f + sarea1.s)            == 210) judge++ ;

      d_tbl[0] = d_wk1                  <  7.0f ?

                 (d_wk1                 == (int)d_wk2           ?
                 (d_wk1                 >  (long)d_wk2          ?
                  d_wk1++               :  d_wk2--)             :
                 (1                     >  0                    ?
                  1+1                   :  10+1)
                  ) :

                 ((double)(sizeof d_wk1 >= sizeof(double))      ?
                 (-d_wk1                > ((long)d_tbl[1]<<3)-1 ?
                  ++d_wk1               : --d_wk2)              :
                 (0                     > 1                     ?
                  11-10                 : 1+10 )
                 ) ;
#if defined(msp)
   printf("good\n");
#endif
      if (d_tbl[0]   == 7.76e+2) judge++ ;

      if ((fl_wk1 < fl_wk2                     ?
          fl_wk1 * 7L                          :
          (long)(fl_wk1*3.00) % +(10))      == 49) judge++ ;
      d_wk1 = 7.0 ;
      if ((func21()==(short)func22()/7         ?
          si_wk1 + i_wk1+(++i_wk2-1<<1)        :
          sarea1.l-i_tbl[6])                   == -4) judge++ ;
      if (((sarea1.s>(&sarea1)->l)             ?
         ((int)func21()^i_tbl[0])              :
        -(i_wk1 + sarea1.s))                   == 6)  judge++ ;
      if ((i_tbl[6]++ == ??-(-8)               ?
          ++i_wk1   + --si_wk1                 :
         *i_ptr / *i_ptr + 1)                  == 14) judge++ ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if ((*d_ptr <= 777.0L                          ?
         (8192/(sizeof(long)*180+sizeof(short)*152)) :
          sizeof(double)%3 & 2)                      == 4) judge++ ;
#else
      if ((*d_ptr <= 777.0L                          ?
         (8192/(sizeof(long)*180+sizeof(short)*152)) :
          sizeof(double)%3 & 2)                      == 8) judge++ ;
#endif
      c_wk1 = 255; i_wk1 = 777; fl_wk1 = 8; d_wk1 = 15 ;
      if ((((*c_ptr & *i_ptr | (int)*fl_ptr) ^ (long)*d_ptr)==774    ?
          (i_wk1<<2 & 7)                                         :
          (i_wk1>>2 & 3))                              == 4) judge++ ;
      l_wk1 = 777 ;l_wk2 =333 ;
      if (((sizeof(float)<=sizeof(long))>=(sizeof(char)<sizeof(int)) ?
          (777 == (777 & l_wk1))+((l_wk2 & 333) == 333)             :
          (i_ptr == &i_wk1  || l_ptr == l_ptr))       == 2) judge++ ;
      if (((func11 != func12)!=(func21 != func22)    ?
          (1 || ++l_wk1)                             :
          (l_wk1 == 777)) == 1) judge++ ;

#if !defined(nollint)
      lli_wk1 =7LL;lli_wk2=777LL;c_wk1 = 77;
      if ((lli_wk1 >= lli_wk2            ?
          lli_wk1  + c_wk1               :
          12345LL  + 54321LL)            == 66666LL) judge++ ;
      ichck("fej01.01",19,judge,"condition expression arthmetic type");
#else
      ichck("fej01.01",18,judge,"condition expression arthmetic type");
#endif
  }

  header("","CONDITION EXPRESSION TEST");
  }
