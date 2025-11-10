
















  #include <stddef.h>
  #include "001.h"

  int  i_wk108;
  int  i_wk208;
  long l_tbl[10];




int main()
  {

  header("","RERATIONAL OPERATOR TEST");




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

      if (parea   >  &sarea           == 0) judge++ ;
      if (i_ptr4  <= i_ptr5           == 1) judge++ ;
      if (i_ptr5  >= &sarea.uarea11.i == 0) judge++ ;
      if (i_ptr3  <= &sarea.i3[0]     == 1) judge++ ;
      if (i_ptr2  <  i_ptr1           == 0) judge++ ;
      ichck("FER01.05",5,judge,"same struct member pointer");
  }



  {
      int judge = 0 ;
      int i_tbl[10] ;
      int  *i_ptr1,*i_ptr2,*i_ptr3 ;
      long l_tbl[5][5][5] ;
      long *l_ptr1,*l_ptr2,*l_ptr3 ;

      i_ptr1 = &i_tbl[5] ;
      i_ptr2 = &i_tbl[6] ;
      if (i_ptr1    < i_ptr2     == 1) judge++ ;
      if (i_ptr2    > i_ptr1     == 1) judge++ ;
      if (&i_tbl[0] <= &i_tbl[9] == 1) judge++ ;
      if (i_ptr1    >= &i_tbl[2] == 1) judge++ ;
      l_ptr1 = &l_tbl[3][3][3];
      l_ptr2 = &l_tbl[4][4][4];
      if (l_ptr1          < l_ptr2           == 1) judge++ ;
      if (&l_tbl[0][0][0] <= &l_tbl[2][2][2] == 1) judge++ ;
      ichck("FER01.06",6,judge,"same array element pointer");
  }



  {
      int     judge = 0 ,i;
      int    *i_ptr1,*i_ptr2,*i_ptr3,*i_ptr4,*i_ptr5;
      union  tag1 {
                   int i1;
                   int i2;
                   union  tag11 {int i;}uarea11;
                   union  tag12 {int i;}uarea12;
                   int i3[5];
                   union  tag13 {int i;}uarea13;
                  }uarea;
      union  tag1 *parea=&uarea ;

      i_ptr1 = &uarea.i1 ;
      i_ptr2 = &uarea.i2 ;
      i_ptr3 = &uarea.i3[0];
      i_ptr4 = &uarea.uarea11.i;
      i_ptr5 = &uarea.uarea12.i;

      if (parea   >  &uarea           == 0) judge++ ;
      if (i_ptr4  <= i_ptr5           == 1) judge++ ;
      if (i_ptr5  >= &uarea.uarea13.i == 1) judge++ ;
      if (i_ptr3  <= &uarea.i3[0]     == 1) judge++ ;
      if (i_ptr2  <  i_ptr1           == 0) judge++ ;
      ichck("FER01.07",5,judge,"same union member pointer");
  }



  {
      int  judge = 0 ;
      int  i_tbl[10] ;
      int  *i_ptr1,*i_ptr2,*i_ptr3 ;

      i_ptr1 = &i_tbl[5] ;
      i_ptr2 = &i_tbl[9] ;
      i_ptr2 = i_ptr2 + 2 ;

      if (i_ptr1 <  i_ptr2 == 1) judge++ ;
      if (i_ptr1 >= i_ptr2 == 0) judge++ ;
      i_ptr1 = &i_wk108;
      i_ptr2 = &i_wk208;
#if defined(solaris1) || defined(_WIN32)
	judge += 2;
#else
      if (i_ptr2 >  i_ptr1 == 1) judge++ ;
      if (i_ptr2 >= i_ptr1 == 1) judge++ ;
#endif
      ichck("FER01.08",4,judge,"other object pointer");
  }



  {
      int judge = 0 ;
      int i_tbl[10];
      int *i_ptr1,*i_ptr2 ;
      i_ptr1 = &i_tbl[9];
      i_ptr2 = &i_tbl[9]+1 ;
      if (i_ptr1 < i_ptr2  == 1) judge++ ;
      if (i_ptr2 >= i_ptr1 == 1) judge++ ;
      ichck("FER01.09",2,judge,"P (Q+1)");
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
      if (i_ptr1 <= i_ptr2  == 1) judge++ ;
      if (i_ptr2 >= i_ptr1  == 1) judge++ ;
      if (l_ptr1 <= l_ptr2  == 1) judge++ ;
      if (l_ptr2 >= l_ptr1  == 1) judge++ ;
      i_ptr1 = &i_tbl[9]+1;
      i_ptr2 = &i_tbl[9]+1;
      l_ptr1 = &l_tbl[9]+1;
      l_ptr2 = &l_tbl[9]+1;
      if (i_ptr1 <= i_ptr2  == 1) judge++ ;
      if (i_ptr2 >= i_ptr1  == 1) judge++ ;
      if (l_ptr1 <= l_ptr2  == 1) judge++ ;
      if (l_ptr2 >= l_ptr1  == 1) judge++ ;
      ichck("FER01.10",8,judge,"same pointer");
  }

  header("","RERATIONAL OPERATOR TEST");
  }
