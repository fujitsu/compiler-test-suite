
  #include "001.h"

  #define P1 7a7a7a7a
  #define P2 77777777
  #define P3 7_7_7_7_
  #define P4 7.7777a
  #define P5 7.77e+3
  #define P6 7.77e-3
  #define P7 7.77E+3
  #define P8 7.77E-3

  #define P9  .7a7a7a7a
  #define P10 .77777777
  #define P11 .7_7_7_7_
  #define P12 .7777a
  #define P13 .77e+3
  #define P14 .77e-3
  #define P15 .77E+3
  #define P16 .77E-3
int main()
  {
  header("","PRE PROCESS NUMBER TEST") ;
  {
  int judge ;
  #define TKO01 777
  #if TKO01==777
  judge = TKO01 ;
  #endif
  ichck("TKO02.01",777,judge,"integer only test") ;
  }

  {
  float judge ;
  #define TKO021 12.3456
  #ifdef TKO021
  judge = TKO021 ;
  #endif
  fchck("TKO02.02",12.3456f,judge,0.0,"float test") ;
  }

  {
  double judge ;
  #define TKO031 3.14159265e+4
  #ifdef TKO031
  judge = TKO031 ;
  #endif
  dchck("TKO02.03",3.14159265e+4,judge,0.0,"float test") ;
  }

  {
  double judge ;
  #define TKO041 1.41421356E-10
  #ifdef TKO041
  judge = TKO041 ;
  #endif
  dchck("TKO02.04",1.41421356E-10,judge,0.0,"float test") ;
  }

  {
  int    judge ;
  #define TKO051 .abcd1234
  #ifdef TKO051
  judge=555 ;
  #endif
  ichck("TKO02.05",555,judge,"float test") ;
  }

  {
  int    judge;
  #define TKO061 ._B123456789
  #ifdef TKO061
  judge=666 ;
  #endif
  ichck("TKO02.06",666,judge,"float test") ;
  }

  {
  double judge ;
  #define TKO071 .1982e-32
  #ifdef TKO071
  judge = TKO071 ;
  #endif
  fchck("TKO02.07",.1982e-32,judge,0.0,"float test") ;
  }

  {
  double judge ;
  #define TKO08 .8
  #ifdef TKO08
  judge = TKO08 ;
  #endif
  fchck("TKO02.08",.8,judge,0.0,"float test") ;
  }
  header("","PRE PROCESS NUMBER TEST") ;
  }
