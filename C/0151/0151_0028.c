
















  #include "001.h"

      int func11(void) ;
      char         c_wka = 10, c_wkb = 10 ;
      short        s_wka = 10, s_wkb = 10 ;
      int          i_wka = 10, i_wkb = 10 ;
      long         l_wka = 10, l_wkb = 10 ;
      float        f_wka = 10, f_wkb = 10 ;
      double       d_wka = 10, d_wkb = 10 ;
      long double ld_wka = 10,ld_wkb = 10 ;
      char          c_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
      short         s_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
      int           i_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
      long          l_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
      double        d_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
      long double  ld_tbl[10]={1,2,3,4,5,6,7,8,9,10} ;
      struct tag1 {
                   char         c;
                   short        s;
                   int          i;
                   long         l;
                   float        f;
                   double       d;
                   long double ld;
                  } ;
      union  tag2 {
                   char         c;
                   short        s;
                   int          i;
                   long         l;
                   float        f;
                   double       d;
                   long double ld;
                  } ;
      struct tag1  sarea1 ;
      struct tag1  sarea2[3];
      struct tag1 *parea;
      union  tag2  uarea;








  int  func11(void)
  {
      return 10 ;
  }




int main()
  {

  header("","ASSIGNMENT EXPRESSION TEST");



  {
      int   judge = 0,i ;
      int   i_tbl[10]={100,100,100,100,100,100,100,100,100,100} ;
      char        c_wk1=30 ;
      short       s_wk1=30 ;
      int         i_wk1=30 ;
      long        l_wk1=30L ;
      float       f_wk1=30.0F ;
      double      d_wk1=30.0 ;
      long double ld_wk1=30.0L ;
      int        *i_ptr ;
      i_tbl[0] -= c_wk1 ;
      i_tbl[1] -= s_wk1 ;
      i_tbl[2] -= i_wk1 ;
      i_tbl[3] -= l_wk1 ;
      i_tbl[4] -= f_wk1 ;
      i_tbl[5] -= d_wk1 ;
      i_tbl[6] -= ld_wk1 ;
      for(i=0;i<7;i++) {
         if (i_tbl[i]==70) judge++ ;
      }
      i_ptr = &i_tbl[9] ;
      i_ptr -= 9 ;
      if (i_ptr == i_tbl) judge++ ;
      ichck("fed01.08",8,judge,"-= operator");
  }



  {
      int   judge = 0,i ;
      int   i_tbl[10]={100,100,100,100,100,100,100,100,100,100} ;
      char        c_wk1=30 ;
      short       s_wk1=30 ;
      int         i_wk1=30 ;
      long        l_wk1=30L ;
      float       f_wk1=30.0F ;
      double      d_wk1=30.0 ;
      long double ld_wk1=30.0L ;
      int        *i_ptr ;
      i_tbl[0] += c_wk1 ;
      i_tbl[1] += s_wk1 ;
      i_tbl[2] += i_wk1 ;
      i_tbl[3] += l_wk1 ;
      i_tbl[4] += f_wk1 ;
      i_tbl[5] += d_wk1 ;
      i_tbl[6] += ld_wk1 ;
      for(i=0;i<7;i++) {
         if (i_tbl[i]==130) judge++ ;
      }
      i_ptr = &i_tbl[0] ;
      i_ptr += 9 ;
      if (i_ptr == &i_tbl[9]) judge++ ;
      ichck("fed01.09",8,judge,"+= operator");
  }



  {
     int judge = 0 ;
      c_wka=10; c_wkb=11;
      s_wka=10; s_wkb=11;
      i_wka=10; i_wkb=11;
      l_wka=10; l_wkb=11;
      f_wka=10; f_wkb=11;
      d_wka=10; d_wkb=11;
     ld_wka=10;ld_wkb=11;
     sarea1.l = 10 ;sarea1.c=11 ;sarea1.f=10.0f;sarea1.d=11.0;
     c_wka *=c_wkb;
     if (c_wka == 110) judge++ ;
     s_wka *=s_wkb;
     if (s_wka == 110) judge++ ;
     i_wka *=i_wkb;
     if (i_wka == 110) judge++ ;
     l_wka *=l_wkb;
     if (l_wka == 110) judge++ ;
     f_wka *=f_wkb;
     if (f_wka == 110) judge++ ;
     d_wka *=d_wkb;
     if (d_wka == 110) judge++ ;
     ld_wka*=ld_wkb;
     if (ld_wka == 110) judge++ ;
     ld_wka*=10 ;
     if (ld_wka == 1100) judge++ ;
     sarea1.l*=sarea1.c ;
     if (sarea1.l== 110) judge++ ;
     sarea1.f*=sarea1.d ;
     if (sarea1.f == 110) judge++ ;
      ichck("fed01.10",10,judge,"*= operator");
  }



  {
     int judge = 0 ;
      c_wka=100; c_wkb=10;
      s_wka=100; s_wkb=10;
      i_wka=100; i_wkb=10;
      l_wka=100; l_wkb=10;
      f_wka=100; f_wkb=10;
      d_wka=100; d_wkb=10;
     ld_wka=100;ld_wkb=10;
     sarea1.l = 100 ;sarea1.c=10 ;sarea1.f=100.0f;sarea1.d=10.0;
     c_wka /=c_wkb;
     if (c_wka == 10) judge++ ;
     s_wka /=s_wkb;
     if (s_wka == 10) judge++ ;
     i_wka /=i_wkb;
     if (i_wka == 10) judge++ ;
     l_wka /=l_wkb;
     if (l_wka == 10) judge++ ;
     f_wka /=f_wkb;
     if (f_wka == 10) judge++ ;
     d_wka /=d_wkb;
     if (d_wka == 10) judge++ ;
     ld_wka/=ld_wkb;
     if (ld_wka == 10) judge++ ;
     ld_wka/=10 ;
     if (ld_wka == 1) judge++ ;
     sarea1.l/=sarea1.c ;
     if (sarea1.l== 10) judge++ ;
     sarea1.f/=sarea1.d ;
     if (sarea1.f == 10) judge++ ;
     ichck("fed01.11",10,judge,"/= operator");
  }



  {
      int judge = 0;
      c_wka=100; c_wkb=30;
      s_wka=100; s_wkb=30;
      i_wka=100; i_wkb=30;
      l_wka=100; l_wkb=30;
      sarea1.c = 100 ;uarea.s=30 ;sarea1.i=100;sarea1.l=30;
      c_wka %=l_wkb;
     if (c_wka == 10) judge++ ;
      s_wka %=i_wkb;
     if (s_wka == 10) judge++ ;
      i_wka %=s_wkb;
     if (i_wka == 10) judge++ ;
      l_wka %=c_wkb;
     if (l_wka == 10) judge++ ;
      sarea1.i %= uarea.s ;
     if (sarea1.i == 10) judge++ ;
      sarea1.c %= sarea1.l ;
     if (sarea1.c == 10) judge++ ;
      l_wkb %= 7 ;
     if (l_wkb == 2) judge++ ;

      ichck("fed01.12",7,judge,"%= operator");
  }



  {
      int judge = 0 ;
      c_wka=8; c_wkb=3;
      s_wka=8; s_wkb=3;
      i_wka=8; i_wkb=3;
      l_wka=8; l_wkb=3;
      sarea1.c=8; sarea1.s=3; sarea1.i=8; sarea1.l=3;
      c_wka <<=l_wkb;
     if (c_wka == 64) judge++ ;
      s_wka <<=i_wkb;
     if (s_wka == 64) judge++ ;
      i_wka <<=s_wkb;
     if (i_wka == 64) judge++ ;
      l_wka <<=c_wkb;
     if (l_wka == 64) judge++ ;
      sarea1.i <<= sarea1.s ;
     if (sarea1.i == 64) judge++ ;
      sarea1.c <<= sarea1.l ;
     if (sarea1.c == 64) judge++ ;
      l_wkb <<= 3 ;
     if (l_wkb == 24) judge++ ;

      ichck("fed01.13",7,judge,"<<= operator");
  }



  {
      int judge = 0 ;
      c_wka=8; c_wkb=3;
      s_wka=8; s_wkb=3;
      i_wka=8; i_wkb=3;
      l_wka=8; l_wkb=3;
      sarea1.c=8; sarea1.s=3; sarea1.i=8; sarea1.l=3;
      c_wka >>=l_wkb;
     if (c_wka == 1) judge++ ;
      s_wka >>=i_wkb;
     if (s_wka == 1) judge++ ;
      i_wka >>=s_wkb;
     if (i_wka == 1) judge++ ;
      l_wka >>=c_wkb;
     if (l_wka == 1) judge++ ;
      sarea1.i >>= sarea1.s ;
     if (sarea1.i == 1) judge++ ;
      sarea1.c >>= sarea1.l ;
     if (sarea1.c == 1) judge++ ;
      l_wkb >>= 1 ;
     if (l_wkb == 1) judge++ ;

      ichck("fed01.14",7,judge,">>= operator");
  }



  {
      int judge = 0 ;
      c_wka=15; c_wkb=9;
      s_wka=15; s_wkb=9;
      i_wka=15; i_wkb=9;
      l_wka=15; l_wkb=9;
      sarea1.c=15; sarea1.s=9; sarea1.i=15; sarea1.l=9;
      c_wka &= l_wkb;
     if (c_wka == 9) judge++ ;
      s_wka &= i_wkb;
     if (s_wka == 9) judge++ ;
      i_wka &= s_wkb;
     if (i_wka == 9) judge++ ;
      l_wka &= c_wkb;
     if (l_wka == 9) judge++ ;
      sarea1.i &= sarea1.s ;
     if (sarea1.i == 9) judge++ ;
      sarea1.c &= sarea1.l ;
     if (sarea1.c == 9) judge++ ;
      l_wkb &= 3 ;
     if (l_wkb == 1) judge++ ;

      ichck("fed01.15",7,judge,"&= operator");
  }



  {
      int judge = 0 ;
      c_wka=15; c_wkb=9;
      s_wka=15; s_wkb=9;
      i_wka=15; i_wkb=9;
      l_wka=15; l_wkb=9;
      sarea1.c=15; sarea1.s=9; sarea1.i=15; sarea1.l=9;
      c_wka ^= l_wkb;
     if (c_wka == 6) judge++ ;
      s_wka ^= i_wkb;
     if (s_wka == 6) judge++ ;
      i_wka ^= s_wkb;
     if (i_wka == 6) judge++ ;
      l_wka ^= c_wkb;
     if (l_wka == 6) judge++ ;
      sarea1.i ^= sarea1.s ;
     if (sarea1.i == 6) judge++ ;
      sarea1.c ^= sarea1.l ;
     if (sarea1.c == 6) judge++ ;
      l_wkb ^= 3 ;
     if (l_wkb == 10) judge++ ;

      ichck("fed01.16",7,judge,"^= operator");
  }



  {
      int judge = 0 ;
      c_wka=15; c_wkb=0;
      s_wka=15; s_wkb=0;
      i_wka=15; i_wkb=0;
      l_wka=15; l_wkb=0;
      sarea1.c=15; sarea1.s=0; sarea1.i=15; sarea1.l=0;
      c_wka |= l_wkb;
     if (c_wka ==15) judge++ ;
      s_wka |= i_wkb;
     if (s_wka ==15) judge++ ;
      i_wka |= s_wkb;
     if (i_wka ==15) judge++ ;
      l_wka |= c_wkb;
     if (l_wka ==15) judge++ ;
      sarea1.i |= sarea1.s ;
     if (sarea1.i |=15) judge++ ;
      sarea1.c |= sarea1.l ;
     if (sarea1.c ==15) judge++ ;
      l_wkb |= 3 ;
     if (l_wkb == 3) judge++ ;

      ichck("fed01.17",7,judge,"|= operator");
  }

  header("","ASSIGNMENT EXPRESSION TEST");
  }
