















  #include <stdio.h>
  #include "001.h"

  #define ON 1






  union {
    volatile const float       flt1401;
    volatile const double      bdl1401;
    volatile const long double ldbl1401;
    long double ldbl1402;
    double      dbl1402;
    float       flt1402;
  }uniara14;



  enum season{ spr,sum,aut,win };














int main()
{



  volatile int int_wk1;







  header("","struct or union specifier test proc no.3.") ;



{
  uniara14.flt1402 = 1.2345f;

  fchck("DTS01_14",1.2345f,uniara14.flt1401,0.0000f,
        "union member : float test");
}



{
  static union {
    char array15[2];
    short int sint1501;
    struct {
      unsigned bit15_00 : 1;
      unsigned bit15_01 : 1;
      unsigned bit15_02 : 1;
      unsigned bit15_03 : 1;
      unsigned bit15_04 : 1;
      unsigned bit15_05 : 1;
      unsigned bit15_06 : 1;
      unsigned bit15_07 : 3;
      unsigned          : 0;
    }strflg15;
  }dts15 = {0};

  dts15.strflg15.bit15_01 = ON;
  dts15.strflg15.bit15_00 = dts15.strflg15.bit15_01 ^ 
                            dts15.strflg15.bit15_02;
#if defined(os2) || defined(_WIN32) || defined(__i386__) || defined(__i386) || defined(__x86_64__) || defined(__aarch64__)
  sichck("DTS01_15",0x03,dts15.sint1501,
         "union member : struct bit field test");
#else
  sichck("DTS01_15",0xc000,dts15.sint1501,
         "union member : struct bit field test");
#endif
}



{
  volatile union {
    char charr16[3];
    int  intarr16[2][3];
    volatile enum season seavar;
  }dts16 = {0};

  dts16.seavar = sum;
  int_wk1 = dts16.intarr16[0][0];
  ichck("DTS01_16",1,int_wk1,"union member : struct bit field test");
}



{
  int intbun1;

  struct {
    char c1;
    signed char c2;
    unsigned char c3;
    unsigned short int si1;
    int i1;
    signed long int sli1;
    long double ldbl1;
  }strbun;

  intbun1 = sizeof(strbun);        
#if defined(INT64) || defined(LONG64) || defined(__x86_64__) || defined(__aarch64__) || defined(_LP64)
  ichck("DTS01_xx",48,intbun1,"a boundary line up test");
#elif defined(sxo)  || defined(i386)
  ichck("DTS01_xx",28,intbun1,"a boundary line up test");
#elif defined(uxp)
  ichck("DTS01_xx",32,intbun1,"a boundary line up test");
#elif defined(_WIN32) || defined(__mips)

  ichck("DTS01_xx",24,intbun1,"a boundary line up test");
#else
  ichck("DTS01_xx",32,intbun1,"a boundary line up test");
#endif
}




  header("","struct or union specifier test proc no.3.") ;
}
