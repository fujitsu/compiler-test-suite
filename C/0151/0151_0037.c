
















  #include <stddef.h>
  #include "001.h"





int main()
  {

  header("","++OPERAND; OR --OPERAND; TEST");




  {
      int judge=0 ;
      char c_wk1 = 'a' ;
      char *c_ptr ;
      char c_tbl[10]="abcdefghi" ;
      struct tag1 {
             char c_wk1;
             struct tag11 {char c_wk1;}  area11;
             union  tag12 {char c_wk1;float fl_wk1;}  area12;
             } ;
      union  tag2 {
             char  c_wk1;
             struct tag21 {char c_wk1;}  area21;
             union  tag22 {char c_wk1;float fl_wk1;}  area22;
             } ;
      struct tag1 area1   ={'a','b','c'} ;
      struct tag1 area2[5]={'a','b','c'};
      union  tag2 area3   ={'a'};
      union  tag2 area4[5]={'a','b','c','d','e'} ;
      struct tag1 area5   ={'a','b','c'} ;
      union  tag2 area6   ={'a'};
      struct tag1 *parea5 ;
      union  tag2 *parea6 ;

      c_ptr = &c_wk1 ;
      parea5 = &area5 ;
      parea6 = &area6 ;
      if (++c_wk1    == 'b') judge++ ;
      if (++(c_wk1)  == 'c') judge++ ;
      if (++(*c_ptr) == 'd') judge++ ;
      if (++c_tbl[0] == 'b') judge++ ;

      if (++area1.c_wk1           == 'b') judge++ ;
      if (++area1.area11.c_wk1    == 'c') judge++ ;
      if (++area1.area12.c_wk1    == 'd') judge++ ;
      if (++area2[0].c_wk1        == 'b') judge++ ;
      if (++area2[0].area11.c_wk1 == 'c') judge++ ;
      if (++area2[0].area12.c_wk1 == 'd') judge++ ;

      if (++area3.area21.c_wk1    == 'b') judge++;
      if (++area4[0].c_wk1        == 'b') judge++;
      if (++area4[1].area21.c_wk1 == 'c') judge++;
      if (++area4[2].area22.c_wk1 == 'd') judge++;

      if (++parea5->c_wk1         == 'b') judge++;
      if (++parea5->area11.c_wk1  == 'c') judge++;
      if (++parea5->area12.c_wk1  == 'd') judge++;
      if (++parea6->area21.c_wk1  == 'b') judge++;
      ichck("FEU01.01",18,judge,"++operand, char type");
  }



  {
      int judge = 0 ;
      volatile short int si_wk1=99 ;
      switch (++si_wk1) {
        case 99 : judge-- ;break ;
        case 100: judge++ ;break ;
        case 101: judge-- ;break ;
        default : judge-- ;
      }
      ichck("FEU01.02",1,judge,"++operand, short type");
  }



  {
      int judge = 0 ;
      volatile double d_wk1 = 1.0e+0 ;
      volatile double d_tbl[2] = {1.0e+0,100.0e+0} ;
      struct tag1 {double d_wk1;} area={1.0e+0};
      (char)++d_wk1 ;
      if (d_wk1 == 2.0e+0) judge++ ;
      (short int)++d_wk1 ;
      if (d_wk1 == 3.0e+0) judge++ ;
      (int)++d_wk1 ;
      if (d_wk1 == 4.0e+0) judge++ ;
      (long)++d_wk1 ;
      if (d_wk1 == 5.0e+0) judge++ ;
      (float)++d_wk1 ;
      if (d_wk1 == 6.0e+0) judge++ ;
      (double)++d_wk1 ;
      if (d_wk1 == 7.0e+0) judge++ ;
      (long double)++d_wk1 ;
      if (d_wk1 == 8.0e+0) judge++ ;
      (char)++d_tbl[0] ;
      if (d_tbl[0] == 2.0e+0)       judge++ ;
      (char)++area.d_wk1 ;
      if (area.d_wk1 == 2.0e+0)     judge++ ;
      (char)++(&area)->d_wk1 ;
      if ((&area)->d_wk1 == 3.0e+0) judge++ ;
      ichck("FEU01.03",10,judge,"++operand, cast expression");
  }



  {
#if defined(msp)|defined(uxp)
      int judge = 0 ;
#if defined(msp)
      long long int li_wk1 = 0x81LL ; 
#else
      long long int li_wk1 = 0x61LL ; 
#endif
      switch ((char)++li_wk1) {
        case 'a' : judge-- ;break;
        case 'b' : judge++ ;break;
        case 'c' : judge-- ;break;
        default  : judge-- ;
      }
      ichck("FEU01.04",1,judge,"++operand, cast expression");
#endif
  }



  {
#if !defined(os2)
      int judge = 0 ;
      wchar_t w_wk1 = 0x1100 ;
      for (;(int)w_wk1<0x00001110;(int)++w_wk1) {
         judge ++ ;
      }
      ichck("FEU01.05",16,judge,"++operand, cast expression");
#endif
  }



  {
      int judge=0 ;
      volatile float fl_wk1 = 10.0f ;
      volatile float *fl_ptr ;
      volatile float fl_tbl[5]={10.0f,9.0f,8.0f,7.0f,6.0f} ;
      struct tag1 {
                float fl_wk1;
                struct tag11 {float fl_wk1;}  area11;
                union  tag12 {float fl_wk1;int i_wk1;}  area12;
               } ;
      union  tag2 {
                float  fl_wk1;
                struct tag21 {float fl_wk1;}  area21;
                union  tag22 {float fl_wk1;int i_wk1;}  area22;
               } ;
      volatile struct tag1 area1   ={1.0f,2.0f,3.0f} ;
      volatile struct tag1 area2[5]={1.0f,2.0f,3.0f};
      volatile union  tag2 area3   ={1.0f};
      volatile union  tag2 area4[5]={1.0f,2.0f,3.0f,4.0f,5.0f} ;
      volatile struct tag1 area5   ={1.0f,2.0f,3.0f} ;
      volatile union  tag2 area6   ={1.0f};
      volatile struct tag1 *parea5 ;
      volatile union  tag2 *parea6 ;

      fl_ptr = &fl_wk1 ;
      parea5 = &area5 ;
      parea6 = &area6 ;
      if (--fl_wk1    == 9.0f) judge++ ;
      if (--(fl_wk1)  == 8.0f) judge++ ;
      if (--(*fl_ptr) == 7.0f) judge++ ;
      if (--fl_tbl[0] == 9.0f) judge++ ;

      if (--area1.fl_wk1           == 0.0f) judge++ ;
      if (--area1.area11.fl_wk1    == 1.0f) judge++ ;
      if (--area1.area12.fl_wk1    == 2.0f) judge++ ;
      if (--area2[0].fl_wk1        == 0.0f) judge++ ;
      if (--area2[0].area11.fl_wk1 == 1.0f) judge++ ;
      if (--area2[0].area12.fl_wk1 == 2.0f) judge++ ;

      if (--area3.area21.fl_wk1    == 0.0f) judge++;
      if (--area4[0].fl_wk1        == 0.0f) judge++;
      if (--area4[1].area21.fl_wk1 == 1.0f) judge++;
      if (--area4[2].area22.fl_wk1 == 2.0f) judge++;

      if (--parea5->fl_wk1         == 0.0f) judge++;
      if (--parea5->area11.fl_wk1  == 1.0f) judge++;
      if (--parea5->area12.fl_wk1  == 2.0f) judge++;
      if (--parea6->area21.fl_wk1  == 0.0f) judge++;
      ichck("FEU01.06",18,judge,"--operand, float");
  }



  {
      int judge = 0 ;
      long double ld_wk1=50.0L ;
      while (--ld_wk1) {
        judge++ ;
      }
      ichck("FEU01.07",49,judge,"--operand, long double type");
  }



  {
      int judge = 0 ;
      enum {e0,e1,e2,e3,e4,e5,e6,e7,e8,e9} earea ;
      earea = e9 ;
      while (--earea) {
        judge++ ;
      }

      ichck("FEU01.08",8,judge,"--operand, enum variable");
  }



  {
      int judge = 0 ;
      char        c_tbl[5]="dcba" ;
      short int   si_tbl[5]={5,4,3,2,1};
      int         i_tbl[5]={5,4,3,2,1} ;
      long int    li_tbl[5]={1L,2L,3L,4L,5L};
      float       fl_tbl[5]={5.0F,4.0F,3.0F,2.0F,1.0F};
      double      d_tbl[5]={5.0,4.0,3.0,2.0,1.0};
      long double ld_tbl[5]={5.0L,4.0L,3.0L,2.0L,1.0L};
      volatile char        *c_ptr ;
      volatile short int   *si_ptr;
      volatile int         *i_ptr ;
      volatile long int    *li_ptr;
      volatile float       *fl_ptr;
      volatile double      *d_ptr ;
      volatile long double *ld_ptr;

      c_ptr  = &c_tbl[4];
      si_ptr = &si_tbl[4];
      i_ptr  = &i_tbl[4];
      li_ptr = &li_tbl[4];
      fl_ptr = &fl_tbl[4];
      d_ptr  = &d_tbl[4];
      ld_ptr = &ld_tbl[4];

      if (--c_ptr  == &c_tbl[3])  judge++ ;
      if (--si_ptr == &si_tbl[3]) judge++ ;
      if (--i_ptr  == &i_tbl[3])  judge++ ;
      if (--li_ptr == &li_tbl[3]) judge++ ;
      if (--fl_ptr == &fl_tbl[3]) judge++ ;
      if (--d_ptr  == &d_tbl[3])  judge++ ;
      if (--ld_ptr == &ld_tbl[3]) judge++ ;
      ichck("FEU01.09",7,judge,"--operand, pointer type");
  }



  {
      int judge = 0 ;
      int i_wk1 = 10 ;
      int i_tbl[2] = {10,20} ;
      struct tag1 {int i_wk1;} area={10};
      (char)--i_wk1 ;
      if (i_wk1 == 9) judge++ ;
      (short int)--i_wk1 ;
      if (i_wk1 == 8) judge++ ;
      (int)--i_wk1 ;
      if (i_wk1 == 7) judge++ ;
      (long)--i_wk1 ;
      if (i_wk1 == 6) judge++ ;
      (float)--i_wk1 ;
      if (i_wk1 == 5) judge++ ;
      (double)--i_wk1 ;
      if (i_wk1 == 4) judge++ ;
      (long double)--i_wk1 ;
      if (i_wk1 == 3) judge++ ;
      (char)--i_tbl[0] ;
      if (i_tbl[0] == 9)       judge++ ;
      (char)--area.i_wk1 ;
      if (area.i_wk1 == 9)     judge++ ;
      (char)--(&area)->i_wk1 ;
      if ((&area)->i_wk1 == 8) judge++ ;
      ichck("FEU01.11",10,judge,"--operand, cast expression");
  }



  {
      int judge = 0 ;
      volatile long int li_wk1 = 10L ;
      volatile long int li_tbl[2] = {10L,20L} ;
      volatile struct tag1 {long int li_wk1;} area={10L};
      if ((char)--li_wk1          == 9) judge++ ;
      if ((short int)--li_wk1     == 8) judge++ ;
      if ((int)--li_wk1           == 7) judge++ ;
      if ((long)--li_wk1          == 6) judge++ ;
      if ((float)--li_wk1         == 5) judge++ ;
      if ((double)--li_wk1        == 4) judge++ ;
      if ((long double)--li_wk1   == 3) judge++ ;
      if ((char)--li_tbl[0]       == 9) judge++ ;
      if ((char)--area.li_wk1     == 9) judge++ ;
      if ((char)--(&area)->li_wk1 == 8) judge++ ;
      ichck("FEU01.11",10,judge,"--operand, cast expression");
  }

  header("","++OPERAND; OR --OPERAND; TEST");
  }
