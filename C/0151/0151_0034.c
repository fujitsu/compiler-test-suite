
  #include <stddef.h>
  #include "001.h"


  void func_v1(void)
  {
  }

  void func_v2(void)
  {
  }
  int i_extbl[5]={10,20,30,40,50} ;


int main()
  {

  header("","CONDITION EXPRESSION TEST");


  {
      int judge = 0 ;
      struct tag1 {int a;int b;int c;int d;int e;};
      union  tag2 {int a;float b;double c;};
      struct tag1 sarea1={10,20,30,40,50} ;
      struct tag1 sarea2={500,400,300,200,100} ;
      struct tag1 sarea3 ;
      union  tag2 uarea1={7} ;
      union  tag2 uarea2={6} ;
      union  tag2 uarea3 ;
      sarea3 = 1 ? sarea1 : sarea2 ;
      if (sarea3.a == 10)            judge++ ;
      sarea3 = 0 ? sarea1 : sarea2 ;
      if (sarea3.a == 500)           judge++ ;
      uarea3 = 1 ? uarea1 : uarea2 ;
      if (uarea3.a == 7)             judge++ ;
      uarea3 = 0 ? uarea1 : uarea2 ;
   printf("test good\n");
      if (uarea3.a == 6)             judge++ ;
      ichck("fej01.02",4,judge,"?: struct/union type");
  }

  {
      int  judge = 0;
      void  *v_ptr1,*v_ptr2,*v_ptr3 ;
      int   i_tbl[10];
      void func_v1(void) ;
      void func_v2(void) ;
      void (*vf)(void) ;

      v_ptr1 = (void *)&i_tbl[0] ;
      v_ptr2 = (void *)&i_tbl[1] ;

      v_ptr3 = 1 ? v_ptr1 : v_ptr2 ;
      if (v_ptr3 == v_ptr1)       judge++ ;
      v_ptr3 = 0 ? v_ptr1 : v_ptr2 ;
      if (v_ptr3 == v_ptr2)       judge++ ;

      vf = 1 ? func_v1 : func_v2 ;
      if (vf == func_v1)          judge++ ;
      vf = 0 ? func_v1 : func_v2 ;
      if (vf == func_v2)             judge++ ;

      ichck("fej01.03",4,judge,"?: void type");
  }

  {
      int             judge = 0 ;
      int             i_wk1=10 ,*i_ptr1 ;
      signed          i_wk2=20 ,*i_ptr2,*i_ptr3 ;
      long            l_wk1=10 ,*l_ptr1 ;
      signed long int l_wk2=20 ,*l_ptr2,*l_ptr3 ;

      i_ptr1 = &i_wk1 ; i_ptr2 = &i_wk2 ;
      l_ptr1 = &l_wk1 ; l_ptr2 = &l_wk2 ;

      i_ptr3 = 1 ? i_ptr1 : i_ptr2 ;
      if (*i_ptr3 == i_wk1) judge++ ;
      i_ptr3 = 0 ? i_ptr1 : i_ptr2 ;
      if (*i_ptr3 == i_wk2) judge++ ;

      l_ptr3 = 1 ? l_ptr1 : l_ptr2 ;
      if (*l_ptr3 == l_wk1) judge++ ;
      l_ptr3 = 0 ? l_ptr1 : l_ptr2 ;
      if (*l_ptr3 == l_wk2) judge++ ;
      ichck("fej01.04",4,judge,"?: conform to object");
  }

  {
      int judge = 0 ;
      int   i_wk1=10,   i_wk2,*i_ptr1,*i_ptr2 ;
      float f_wk1=10.0f,f_wk2,*f_ptr1,*f_ptr2 ;

      i_ptr1 = &i_wk1 ;
      f_ptr1 = &f_wk1 ;

      i_ptr2 = 1 ? i_ptr1 : 0 ;
      if (*i_ptr2 == i_wk1)     judge++ ;
      i_ptr2 = 0 ? i_ptr1 : 0 ;
      if (i_ptr2 == 0)          judge++ ;

      f_ptr2 = 1 ? f_ptr1 : 0 ;
      if (*f_ptr2 == f_wk1)     judge++ ;
      f_ptr2 = 0 ? f_ptr1 : 0 ;
      if (f_ptr2 == 0)          judge++ ;
      ichck("fej01.05",4,judge,"?: pointer : null");
  }

  {
      int      judge = 0 ,i_wk1=10 ,r_val;
      char     c_wk1 = 'a' ;
      const    void *c_vp ;
               void *vp ;
      const    int  *c_ip = &i_wk1;
      volatile int  *v_ip ;
               int  *ip ;
      const    char *c_cp ;

      const          void *v_cp  ;
      volatile       int  *i_vp  ;
      const volatile int  *i_cvp ;
      const          int  *i_cp  ;
                     void *_vp   ;
      v_cp   = 0 ? c_vp : c_ip ;
      if (v_cp == &i_wk1) judge++ ;
      i_vp   = 0 ? v_ip : 0    ;
      if (i_vp == 0) judge++ ;
      v_ip = &i_wk1 ;
      i_cvp  = 0 ? c_ip : v_ip ;
      if (i_cvp == &i_wk1) judge++ ;
      c_ip = &i_wk1 ;
      v_cp   = 0 ? vp   : c_ip ;
      if (v_cp == &i_wk1) judge++ ;
      i_cp   = 0 ? ip   : c_ip ;
      if (i_cp == &i_wk1) judge++ ;
      ip = &i_wk1 ;
      _vp    = 0 ? vp   : ip   ;
      if (_vp == &i_wk1) judge++ ;
      ichck("fej01.06",6,judge,"?: object : void");
  }

  {
      int judge = 0 ;
      void  *v_ptr1 ,*v_ptr2 ;
      extern  int i_extbl[] ;
      int    i_tbl[10]={1,2,3,4,5,6,7,8,9,0} ;
      struct tag1 {int a;} ;
      struct tag1 *sptr ;
      v_ptr1 = (void *)&i_tbl[0] ;

      v_ptr2 = 0 ? sptr : v_ptr1 ;
      if (v_ptr2 == v_ptr1) judge++ ;
      v_ptr2 = 1 ? i_extbl : v_ptr1 ;
      if (v_ptr2 == i_extbl) judge++ ;

      ichck("fej01.07",2,judge,"?: object : void");
  }

  header("","CONDITION EXPRESSION TEST");
  }
