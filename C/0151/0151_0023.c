#include <math.h>

















  #include "001.h"





int main()
  {

  header("","STRUCT/UNION MEMBER TEST") ;




  {
      int judge=0 ;
      struct tag1 {
             int  i_wk1;
             char c_wk1;
             long li_wk1;
             struct tag11 {int i_wk1;}  area11;
             union  tag12 {int i_wk1;float fl_wk1;}  area12;
             } ;
      struct tag1 area1 ;
      struct tag1 area2[5];

      area1.i_wk1    = 111 ;
      area2[0].i_wk1 = 222 ;
      if (area1.i_wk1    == 111) judge++ ;
      if (area2[0].i_wk1 == 222) judge++ ;
      if ((&area1)->i_wk1    == 111) judge++ ;
      if ((&area2[0])->i_wk1 == 222) judge++ ;

      area1.area11.i_wk1 = 444 ;
      area1.area12.i_wk1 = 666 ;
      if (area1.area11.i_wk1 == 444) judge++ ;
      if (area1.area12.i_wk1 == 666) judge++ ;
      if ((&area1)->area11.i_wk1 == 444) judge++ ;
      if ((&area1)->area12.i_wk1 == 666) judge++ ;

      area2[1].area11.i_wk1 = 444 ;
      area2[1].area12.i_wk1 = 666 ;
      if (area2[1].area11.i_wk1 == 444) judge++ ;
      if (area2[1].area12.i_wk1 == 666) judge++ ;
      if ((&area2[1])->area11.i_wk1 == 444) judge++ ;
      if ((&area2[1])->area12.i_wk1 == 666) judge++ ;

      ichck("FEA03.01",12,judge,"struct non-pointer(.)");
  }



  {
      int judge=0;
      const volatile struct atag2 {
             int  i_wk2;
             char c_wk2;
             long li_wk2;
             struct at1 {int i_wk2;} area21;
             union  at2 {int i_wk2;float fl_wk2;} area22;
             } area1={1,'a',2L,3,4};
      const volatile struct btag2 {
             int  i_wk2;
             struct bt1 {int i_wk2;} area21[2];
             union  bt2 {int i_wk2;float fl_wk2;} area22[2];
             } sarray[3]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
      const volatile struct atag2 *parea1 ;
      const volatile struct at1 *pa1 ;
      const volatile union  at2 *pa2 ;
      const volatile struct btag2 *parea2;
      const volatile struct bt1 *pb1 ;
      const volatile union  bt2 *pb2 ;
      parea1 = &area1 ;
      pa1 = &area1.area21 ;
      pa2 = &area1.area22 ;
      parea2 = sarray;
      pb1 = sarray[0].area21 ;
      pb2 = sarray[0].area22 ;

      if (parea1->i_wk2==1)   judge++ ; 
      if (parea1->c_wk2=='a') judge++ ; 
      if (parea1->li_wk2==2L) judge++ ; 
      if (pa1->i_wk2   ==3)   judge++ ; 
      if (pa2->i_wk2   ==4)   judge++ ; 
      if (parea2->i_wk2==1)   judge++ ; 
      if (pb1->i_wk2   ==2)   judge++ ; 
      if (pb2->i_wk2   ==4)   judge++ ; 

      ichck("FEA03.02",8,judge,"struct pointer(->)");
  }



  {
      int judge = 0 ;
      union  tag1 {
             int  i_wk1;
             char c_wk1;
             long li_wk1;
             struct tag11 {int i_wk1;}  area11;
             union  tag12 {int i_wk1;float fl_wk1;}  area12;
             } ;
      volatile union tag1 area1 ;
      volatile union tag1 area2[5];

      area1.i_wk1    = 111 ;
      if (area1.i_wk1    == 111) judge++ ;
      area1.area11.i_wk1 = 222 ;
      if (area1.area11.i_wk1 == 222) judge++ ;

      area2[0].i_wk1 = 111 ;
      area2[1].i_wk1 = 222 ;
      area2[2].i_wk1 = 333 ;
      area2[3].i_wk1 = 444 ;
      area2[4].i_wk1 = 555 ;
      if (area2[0].i_wk1 == 111) judge++ ;
      if (area2[1].i_wk1 == 222) judge++ ;
      if (area2[2].i_wk1 == 333) judge++ ;
      if (area2[3].i_wk1 == 444) judge++ ;
      if (area2[4].i_wk1 == 555) judge++ ;
      area2[0].area11.i_wk1 = 111 ;
      area2[2].area11.i_wk1 = 222 ;
      if (area2[0].area11.i_wk1 == 111) judge++ ;
      if (area2[1].area11.i_wk1 == 222) judge++ ;

      ichck("FEA03.03",9,judge,"union non-pointer(.)");
  }



  {
      int judge=0;
      const union {int a;float b;} uni;
      union  tag1 {
             int  i_wk1;
             char c_wk1;
             long li_wk1;
             double d_wk1;
             long double ld_wk1;
             } area1;
      union tag1 *parea1 ;
      parea1 = &area1 ;

      area1.i_wk1 = 1 ;
      if (parea1->i_wk1==1)   judge++ ;       
      area1.c_wk1 = 'a' ;
      if (parea1->c_wk1=='a') judge++ ;       
      area1.li_wk1 = 2L ;
      if (parea1->li_wk1==2L) judge++ ;       
      area1.d_wk1 = 3.14e+2 ;
      if (parea1->d_wk1==3.14E+2) judge++ ;   
      area1.ld_wk1 = 6.28e+4L;
      if (parea1->ld_wk1==6.28E+4L) judge++ ; 

      ichck("FEA03.04",5,judge,"union pointer(->)");
  }



  {
      int judge = 0 ;
      union tag1 {
                  int         i_wk1;
                  short       si_wk1;
                  char        c_wk1;
                  long int    li_wk1;
                  float       fl_wk1;
                  double      d_wk1;
                  long double ld_wk1;
                 } area={1};
      area.fl_wk1 = 1.0f ;
      if (area.i_wk1 ==1.0) ;
      if (area.si_wk1==1.0) ;
      if (area.c_wk1 ==1.0) ;
      if (area.li_wk1==1.0) ;
      if (area.fl_wk1==1.0f) judge++ ;
      if (area.d_wk1 ==1.0) ;
      if (area.ld_wk1==1.0) ;
      ichck("FEA03.05",1,judge,"reference ,other member");
  }



  {
      int judge = 0 ;
      union {
             struct {int alltype;}n;
             struct {int type ;int intnode ;float fl;} n1;
             struct {int type ;double doublenode;char c_tbl[20];} nf;
             struct {int i_wk1;long li[10];}ni;
            } u;
      u.nf.type = 1 ;
      u.nf.doublenode = 3.14 ;
      if (u.n.alltype == 1) judge++ ;
      sin(u.nf.doublenode) ;
      ichck("FEA03.06",1,judge,"reference ,union first member same");
  }

  header("","STRUCT/UNION MEMBER TEST") ;
  }
