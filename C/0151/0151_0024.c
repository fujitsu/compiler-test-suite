
















  #include <stddef.h>
  #include "001.h"





int main()
  {

  header("","OPERAND++; OR OPERAND--; TEST");




  {
      int judge=0 ;
      char c_wk1 = 'a' ;
      switch (c_wk1++) {
        case 'a' : judge++   ; break ;
        case 'b' : judge-=100; break ;
        default  : judge-=100;
      }
      if (c_wk1=='b') judge++ ;
      switch (c_wk1--) {
        case 'a' : judge-=100; break ;
        case 'b' : judge++   ; break ;
        default  : judge-=100;
      }
      if (c_wk1=='a') judge++ ;
      ichck("FEA04.01",4,judge,"one expression, char type");
  }



  {
      int judge = 0;
      volatile short int si_wk1 = 50;
      short int si_cnt = 50;
      for (;si_wk1>0;si_wk1--) {
         if (si_wk1==si_cnt) judge++ ;
         si_cnt = si_cnt - 1 ;
      }
      ichck("FEA04.02",50,judge,"one expression, short type");
   }



  {
      int judge = 0;
      long double ld_wk1 = 50.0E+0L;
      long double ld_cnt = 50.0E+0L;
      for (;ld_wk1>0;ld_wk1--) {
         if (ld_wk1==ld_cnt) judge++ ;
         ld_cnt = ld_cnt - 1 ;
      }
      ichck("FEA04.03",50,judge,"one expression, long double");
  }



  {
      int judge = 0 ;
      char        c_tbl[10] ="abcdefghi" ;
      short int   si_tbl[10]={0,1,2,3,4,5,6,7,8,9} ;
      int         i_tbl[10] ={0,1,2,3,4,5,6,7,8,9} ;
      long        li_tbl[10]={0,1,2,3,4,5,6,7,8,9} ;
      float       fl_tbl[10]={0,1,2,3,4,5,6,7,8,9} ;
      double      d_tbl[10] ={0,1,2,3,4,5,6,7,8,9} ;
      long double ld_tbl[10]={0,1,2,3,4,5,6,7,8,9} ;
      volatile char        *c_ptr ;
      volatile short int   *si_ptr ;
      volatile int         *i_ptr ;
      volatile long        *li_ptr ;
      volatile float       *fl_ptr ;
      volatile double      *d_ptr ;
      volatile long double *ld_ptr ;
                                  
      c_ptr  = &c_tbl[8] ;
      si_ptr = &si_tbl[9] ;
      i_ptr  = &i_tbl[9] ;
      li_ptr = &li_tbl[9] ;
      fl_ptr = &fl_tbl[9] ;
      d_ptr  = &d_tbl[9] ;
      ld_ptr = &ld_tbl[9] ;

      if (*c_ptr--    == 'i'    ) judge++ ; 
      if (*si_ptr--   == 9      ) judge++ ; 
      if ((*i_ptr--)  == 9      ) judge++ ; 
      if (*li_ptr--   == 9L     ) judge++ ; 
      if ((*fl_ptr)-- == 9.0f   ) judge++ ; 
      if (*(d_ptr)--  == 9.0    ) judge++ ; 
      if (*(ld_ptr--) == 9.0e+0L) judge++ ; 

      ichck("FEA04.04",7,judge,"one expression, pointer");
  }



  {
      int judge = 0 ;
      long int li_tbl[10]={0L,1L,2L,3L,4L,5L,6L,7L,8L,9L} ;
      if (li_tbl[li_tbl[li_tbl[li_tbl[li_tbl[0]]]]]++ == 0) judge++ ;
      if (li_tbl[0] == 1) judge++ ;

      ichck("FEA04.05",2,judge,"array++ ,long int");
  }



  {
      int judge = 0 ;
      volatile float fl_tbl[10]=
        {0.0F,1.0F,2.0F,3.0F,4.0F,5.0F,6.0F,7.0F,8.0F,9.0F} ;
      if (fl_tbl[sizeof(float)]-- == 4.0f) judge++ ;
      if (fl_tbl[4] == 3.0f) judge++ ;

      ichck("FEA04.06",2,judge,"array-- ,float");
  }



  {
      int judge = 0 ;
      struct tag1 {
             int  i_wk1;
             struct tag11 {int i_wk1;}  area11;
             union  tag12 {int i_wk1;float fl_wk1;}  area12;
             } ;
      union  tag2 {
             int  i_wk1;
             struct tag21 {int i_wk1;}  area21;
             union  tag22 {int i_wk1;float fl_wk1;}  area22;
             } ;
      struct tag1 area1={11,21,31} ;
      struct tag1 area2[5]={101,201,301};
      union  tag2 area3 ={101};
      union  tag2 area4[5]={101,201,301,401,501} ;

      area1.i_wk1-- ;
      area1.area11.i_wk1-- ;
      area1.area12.i_wk1-- ;
      area2[0].i_wk1-- ;
      area2[0].area11.i_wk1-- ;
      area2[0].area12.i_wk1-- ;

      area3.area21.i_wk1-- ;
      area4[0].i_wk1-- ;
      area4[1].area21.i_wk1-- ;
      area4[2].area22.i_wk1-- ;

      if (area1.i_wk1          ==10)  judge++ ;
      if (area1.area11.i_wk1   ==20)  judge++ ;
      if (area1.area12.i_wk1   ==30)  judge++ ;
      if (area2[0].i_wk1       ==100) judge++ ;
      if (area2[0].area11.i_wk1==200) judge++ ;
      if (area2[0].area12.i_wk1==300) judge++ ;

      if (area3.area21.i_wk1    == 100) judge++ ;
      if (area4[0].i_wk1        == 100) judge++ ;
      if (area4[1].area21.i_wk1 == 200) judge++ ;
      if (area4[2].area22.i_wk1 == 300) judge++ ;
      ichck("FEA04.07",10,judge,"struct/union member--,int");
  }



  {
#if defined(msp)|defined(uxp)
      int judge = 0 ;
      struct tag1 {
               long long int  i_wk1;
               struct tag11 {long long int i_wk1;}  area11;
               union  tag12 {long long int i_wk1;float fl_wk1;}area12;
               } ;
      union  tag2 {
               long long int  i_wk1;
               struct tag21 {long long int i_wk1;}  area21;
               union  tag22 {long long int i_wk1;float fl_wk1;}area22;
               } ;
      volatile struct tag1 area1={10LL,20LL,30LL} ;
      volatile struct tag1 area2[5]={100LL,200LL,300LL};
      volatile union  tag2 area3 ={100LL};
      volatile union  tag2 area4[5]={100LL,200LL,300LL,400LL,500LL} ;

      if (area1.i_wk1++           ==10LL)  judge++ ;
      if (area1.area11.i_wk1++    ==20LL)  judge++ ;
      if (area1.area12.i_wk1++    ==30LL)  judge++ ;
      if (area2[0].i_wk1++        ==100LL) judge++ ;
      if (area2[0].area11.i_wk1++ ==200LL) judge++ ;
      if (area2[0].area12.i_wk1++ ==300LL) judge++ ;

      if (area3.area21.i_wk1++    == 100LL) judge++ ;
      if (area4[0].i_wk1++        == 100LL) judge++ ;
      if (area4[1].area21.i_wk1++ == 200LL) judge++ ;
      if (area4[2].area22.i_wk1++ == 300LL) judge++ ;
      ichck("FEA04.08",10,judge,"struct/union member++,long long int");
#endif
  }



  {
      int judge = 0 ;
      struct tag1 {
                       int i_wk1;
                       char c_wk1;
                       enum etag {e0,e1,e2,e3,e4} earea ;
                       float fl_wk1;
                      };
      volatile struct tag1 area ={1,2,9,1.0f} ;
      if ((area.earea++) ==  9) judge++ ;
      if (area.earea     == 10) judge++ ;

      ichck("FEA04.09",2,judge,"struct/union member++,enum");
  }



  {
      int judge = 0 ;
      volatile struct tag1 {
                 double  d_wk1;
                 struct tag11 {double d_wk1;} area11;
                 union  tag12 {double d_wk1;float fl_wk1;} area12;
               } area1={9.0,99.0,199.0};
      volatile struct tag1   *parea1 ;
      volatile struct tag11  *pa1 ;
      volatile union  tag12  *pa2 ;
      parea1 = &area1 ;
      pa1 = &area1.area11 ;
      pa2 = &area1.area12 ;

      if (parea1->d_wk1++ == 9.0e+0)   judge++ ;
      if (pa1->d_wk1++    == 99.0e+0)  judge++ ;
      if (pa2->d_wk1++    == 199.0e+0) judge++ ;

      if (parea1->d_wk1        == 10.0)  judge++ ;
      if (parea1->area11.d_wk1 == 100.0) judge++ ;
      if (parea1->area12.d_wk1 == 200.0) judge++ ;
      ichck("FEA04.10",6,judge,"struct/union member++,double");
  }



  {
#if !defined(os2)
      int judge = 0 ;
      struct tag1 {
             wchar_t w_wk1;
             struct tag11 {wchar_t w_wk1;} area11;
             union  tag12 {wchar_t w_wk1;float fl_wk1;} area12;
            } area1={0x1111,0x2222,0x3333};
      struct tag1   *parea1 ;
      struct tag11  *pa1 ;
      union  tag12  *pa2 ;
      parea1 = &area1 ;
      pa1 = &area1.area11 ;
      pa2 = &area1.area12 ;

      parea1->w_wk1++ ;
      pa1->w_wk1++ ;
      pa2->w_wk1++ ;

      if (parea1->w_wk1++ == 0x1112) judge++ ;
      if (pa1->w_wk1++    == 0x2223) judge++ ;
      if (pa2->w_wk1++    == 0x3334) judge++ ;
      ichck("FEA04.11",3,judge,"struct/union member++,wchar_t");
#endif
  }

  header("","OPERAND++; OR OPERAND--; TEST");
  }
