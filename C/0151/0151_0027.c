
















  #include "001.h"





int main()
  {

  header("","ASSIGNMENT EXPRESSION TEST");



  {
      struct tag1 {int a;
                   int b;
                   struct tag11 {int a;
                                 int b;
                                } sarea11;
                   long c;
                   } ;
      struct tag1   sarea1={777,2,3,4,5};
      struct tag1   sarea2 ;
      struct tag1   sarea3 ;
      struct tag1   sarea4 ;
      struct tag1   sarea5 ;

      sarea2 = sarea1 ;
      sarea3 = sarea2 ;
      sarea4 = sarea3 ;
      sarea5 = sarea4 ;
      ichck("fed01.02",1,(sarea1.a == 777 &&
                          sarea2.a == 777 &&
                          sarea3.a == 777 &&
                          sarea4.a == 777 &&
                          sarea5.a == 777 ),"struct assignment");
  }



  {
      union  tag1 {int a;
                   int b;
                   struct tag11 {int a;
                                 int b;
                                } sarea11;
                   long c;
                   } ;
      union  tag1   uarea1={777};
      union  tag1   uarea2 ;
      union  tag1   uarea3 ;
      union  tag1   uarea4 ;
      union  tag1   uarea5 ;

      uarea2 = uarea1 ;
      uarea3 = uarea2 ;
      uarea4 = uarea3 ;
      uarea5 = uarea4 ;
      ichck("fed01.03",1,(uarea1.a == 777 &&
                          uarea2.a == 777 &&
                          uarea3.a == 777 &&
                          uarea4.a == 777 &&
                          uarea5.a == 777 ),"union assignment");
  }



  {
      int         i_wk1 = 777 ;
      volatile int        *i_ptr11 ;
      volatile signed     *i_ptr12 ;
      signed int volatile *i_ptr13 ;

      i_ptr11 = &i_wk1 ;
      i_ptr12 = i_ptr11 ;
      i_ptr13 = i_ptr12 ;
      ichck("fed01.04",1,(*i_ptr11 == 777 &&
                          *i_ptr12 == 777 &&
                          *i_ptr13 == 777 ),"pointer assignment");

  }



  {
      const int           *i_ptr;
      volatile short      *s_ptr;
      float               *f_ptr;
      volatile double     *d_ptr;
      int        i_wk=111;
      short      s_wk=222;
      float      f_wk=333.0f;
      double     d_wk=444.0f;
      const    void       *v_ptri;
      volatile void       *v_ptrs;
               void       *v_ptrf;
      const volatile void *v_ptrd;

      i_ptr = &i_wk ;
      s_ptr = &s_wk ;
      f_ptr = &f_wk ;
      d_ptr = &d_wk ;
      v_ptri = i_ptr ;
      v_ptrs = s_ptr ;
      v_ptrf = f_ptr ;
      v_ptrd = d_ptr ;
      ichck("fed01.05-1",1,v_ptri == &i_wk &&
                         v_ptrs == &s_wk &&
                         v_ptrf == &f_wk &&
                         v_ptrd == &d_wk, 
                         "pointer assignment");

  }



  {
      struct tag1 {int a;int b;int c;} ;
      volatile const struct tag1 *parea ;
      volatile const void  *v_ptr ;
      extern  int i_tbl[] ;
      struct tag1 sarea ={1,2,3} ;
      v_ptr = &sarea ;
      parea = v_ptr ;
      ichck("fed01.06",1,parea->a,"pointer assignment");
  }



  {
      int  *i_ptr ;
      i_ptr = 0 ;
      ichck("fed01.07",0,(int)i_ptr,"null pointer assignment");
  }

  header("","ASSIGNMENT EXPRESSION TEST");
  }
