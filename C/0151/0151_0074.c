
















  #include "001.h"





int main()
  {

  header("","FLOATING POINT TEST") ;




  {
  float fl_01 ;
  fl_01 = 12.345678e+2f ;
  fchck("TKC01.01",12.345678e+2f,fl_01,0.0f,
                            "floating point(#.#e+#f)") ;
  }



  {
  long double ldbl_02 ;
  ldbl_02 = 1.234567890123456789012345678901E12l ;
  ldchck("TKC01.02",1.234567890123456789012345678901E12l,
          ldbl_02,0.0l,"floating point(#.#E#l)") ;
  }



  {
  double dbl_03 ;
  dbl_03 = 9.87654321098765 ;
  dchck("TKC01.03",9.87654321098765,dbl_03,0.0,
                            "floating point(#.#)") ;
  }



  {
  float fl_04 ;
  fl_04 = .9876543e-5F ;
  fchck("TKC01.04",.9876543e-5F,fl_04,0.0f,
                "floating point(#.e-#F)") ;
  }



  {
  long double ldbl_05 ;
  ldbl_05 = 9.87654321098765432109876543210E+5L;
  ldchck("TKC01.05",9.87654321098765432109876543210E+5L,
         ldbl_05,0.0l,"floating point(#.E+#L)") ;
  }

  header("","FLOATING POINT TEST") ;
  }
