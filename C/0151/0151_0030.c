
















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

      int i_extbl[5]={10,20,30,40,50} ;
      long l_tbl[10]={1,2,3,4,5,6,7,8,9,0} ;





int main()
  {

  header("","EQUIVALENCE OPERATOR TEST");



  {
      int   judge = 0 ;
      char  func11(void) ;
      char  func12(void) ;
      float func21(void) ;
      float func22(void) ;
      char  (*cp)() ;
      float (*fp)() ;
      cp = func11 ;
      fp = func21 ;
      if (func11 == cp     == 1) judge++ ;
      if (func11 != func12 == 1) judge++ ;
      if (func21 == fp     == 1) judge++ ;
      if (func21 != func22 == 1) judge++ ;
      ichck("fee01.06",4,judge,"=-,!= operator obj pointer");
  }



  {
      int     judge = 0 ,i;
      int    *i_ptr1,*i_ptr2,*i_ptr3,*i_ptr4,*i_ptr5;
      struct tag1 {
                   int i1;
                   int i2;
                   struct tag11 {int i;}sarea11;
                   struct tag12 {int i;}sarea12;
                   int i3[5];
                   union  tag13 {int i;}uarea11;
                  }sarea;
      struct tag1 *parea=&sarea ;

      i_ptr1 = &sarea.i1 ;
      i_ptr2 = &sarea.i2 ;
      i_ptr3 = &sarea.i3[0];
      i_ptr4 = &sarea.sarea11.i;
      i_ptr5 = &sarea.sarea12.i;

      if (parea   == &sarea           == 1) judge++ ;
      if (i_ptr4  != i_ptr5           == 1) judge++ ;
      if (i_ptr5  == &sarea.uarea11.i == 0) judge++ ;
      if (i_ptr3  != &sarea.i3[0]     == 0) judge++ ;
      if (i_ptr2  == i_ptr1           == 0) judge++ ;
      ichck("fee01.07",5,judge,"same struct member pointer");
  }



  {
      int judge = 0 ;
      int i_tbl[10] ;
      int  *i_ptr1,*i_ptr2,*i_ptr3 ;
      long l_tbl[5][5][5] ;
      long *l_ptr1,*l_ptr2,*l_ptr3 ;

      i_ptr1 = &i_tbl[5] ;
      i_ptr2 = &i_tbl[5] ;
      if (i_ptr1    == i_ptr2    == 1) judge++ ;
      if (i_ptr2    != i_ptr1    == 0) judge++ ;
      if (&i_tbl[0] != &i_tbl[9] == 1) judge++ ;
      if (i_ptr1    == &i_tbl[2] == 0) judge++ ;
      l_ptr1 = &l_tbl[3][3][3];
      l_ptr2 = &l_tbl[4][4][4];
      if (l_ptr1 !=l_ptr2           == 1) judge++ ;
      if (l_ptr2 == &l_tbl[4][4][4] == 1) judge++ ;
      ichck("fee01.08",6,judge,"same array element pointer");
  }



  {
      int     judge = 0 ,i;
      int    *i_ptr1,*i_ptr2,*i_ptr3,*i_ptr4,*i_ptr5;
      union  tag1 {
                   int i1;
                   int i2;
                   struct tag11 {int i;}uarea11;
                   struct tag12 {int i;}uarea12;
                   int i3[5];
                   union  tag13 {int i;}uarea13;
                  }uarea;
      union  tag1 *parea=&uarea ;

      i_ptr1 = &uarea.i1 ;
      i_ptr2 = &uarea.i2 ;
      i_ptr3 = &uarea.i3[0];
      i_ptr4 = &uarea.uarea11.i;
      i_ptr5 = &uarea.uarea12.i;

      if (parea   == &uarea           == 1) judge++ ;
      if (i_ptr4  == i_ptr5           == 1) judge++ ;
      if (i_ptr5  == &uarea.uarea13.i == 1) judge++ ;
      if (i_ptr3  == &uarea.i3[0]     == 1) judge++ ;
      if (i_ptr2  != i_ptr1           == 0) judge++ ;
      ichck("fee01.09",5,judge,"same union member pointer");
  }



  {
      int  judge = 0 ;
      int  i_wk1 ;
      int  i_tbl[10] ;
      int  i_wk2 ;
      int  *i_ptr1,*i_ptr2,*i_ptr3 ;

      i_ptr1 = &i_tbl[5] ; 
      i_ptr2 = &i_tbl[9] ;
      i_ptr2 = i_ptr2 + 2 ;
      if (i_ptr1 != i_ptr2 == 1) judge++ ;
      if (i_ptr1 == i_ptr2 == 0) judge++ ;

      i_ptr1 = &i_wk1 ;
      i_ptr2 = &i_wk2 ;
      if (i_ptr2 != i_ptr1 == 1) judge++ ;
      if (i_ptr2 == i_ptr1 == 0) judge++ ;

      ichck("fee01.10",4,judge,"other object pointer");
  }



  {
      int judge = 0 ;
      int i_tbl[10];
      int *i_ptr1,*i_ptr2 ;
      i_ptr1 = &i_tbl[9];
      i_ptr2 = &i_tbl[9]+1 ;
      if (i_ptr1 != i_ptr2 == 1) judge++ ;
      if (i_ptr2 == i_ptr1 == 0) judge++ ;
      ichck("fee01.11",2,judge,"P (Q+1)");
  }



  {
      int    judge = 0 ;
      extern long l_tbl[];
      int    i_tbl[10];
      int    *i_ptr1,*i_ptr2 ;
      long   *l_ptr1,*l_ptr2 ;
      i_ptr1 = &i_tbl[9];
      i_ptr2 = &i_tbl[9];
      l_ptr1 = &l_tbl[9];
      l_ptr2 = &l_tbl[9];
      if (i_ptr1 == i_ptr2  == 1) judge++ ;
      if (i_ptr2 != i_ptr1  == 0) judge++ ;
      if (l_ptr1 == l_ptr2  == 1) judge++ ;
      if (l_ptr2 != l_ptr1  == 0) judge++ ;
      i_ptr1 = &i_tbl[9]+1;
      i_ptr2 = &i_tbl[9]+1;
      l_ptr1 = &l_tbl[9]+1;
      l_ptr2 = &l_tbl[9]+1;
      if (i_ptr1 == i_ptr2  == 1) judge++ ;
      if (i_ptr2 != i_ptr1  == 0) judge++ ;
      if (l_ptr1 == l_ptr2  == 1) judge++ ;
      if (l_ptr2 != l_ptr1  == 0) judge++ ;
      ichck("fee01.12",8,judge,"same pointer");
  }

  header("","EQUIVALENCE OPERATOR TEST");
  }
