
  #include <stdio.h>
  #include "001.h"

int main()
{

  char *defmode="   ";

  header("","#if macro test proc.") ;

  defmode="ok" ;

  schck("pcc01_01","ok",defmode,"test #if 0");
  defmode="   ";

#define _DEF02 0X10
#if _DEF02+1==0X10
  defmode="ng1" ;
#else
  defmode="ng2";
  #if _DEF02+0X01==0X11l
    defmode="ok";
  #else
    defmode="ng3";
  #endif
#endif
  schck("pcc01_02","ok",defmode,"test pcc01.02");
  defmode="   ";

#define _DEF03 'A'

#if (2*_DEF03/2U)=='B'
  defmode="ng1" ;
#else
  #if (_DEF03*2U/2)=='A'
    defmode="ok";
  #else
    defmode="ng2";
  #endif  
#endif
  schck("pcc01_03","ok",defmode,"test pcc01.03");
  defmode="   ";

#define _DEF04 'a'

#if (_DEF04-'a'!=0u)
  defmode="ng1" ;
#else
  #if 'a'-_DEF04==0u
    defmode="ok";
  #else
    defmode="ng2";
  #endif  
#endif
  schck("pcc01_04","ok",defmode,"test pcc01.04");
  defmode="   ";

#define _DEF05 0X20
#define _DEF05_32 32
#if _DEF05<10
  defmode="ng1" ;
#elif _DEF05 > _DEF05_32 
  defmode="ng2";
#elif _DEF05 > 0x30 
  defmode="ng3";
#elif (_DEF05 > 31)&&(_DEF05 < 33)
  defmode="ok";
#else
  defmode="ng4";
#endif
  schck("pcc01_05","ok",defmode,"test pcc01.05");
  defmode="   ";

#define _DEF06 0X00U
#if _DEF06==-1
  defmode="ng1";
#elif _DEF06 == 10 
  defmode="ng2";
#elif _DEF06 == 0x30U
  defmode="ng3";
#elif _DEF06 == 0
  defmode="ok";
#endif
  schck("pcc01_06","ok",defmode,"test pcc01.06");
  defmode="   ";

#define _DEF07 35
#if (_DEF07 & 0xff) == 35
  defmode="ok";
#else
  defmode="ng";
#endif
  schck("pcc01_07","ok",defmode,"test pcc01.07");
  defmode="   ";

#define _DEF08 1u  
#define _DEF08_1 '1' 
#if _DEF08_1==1
  defmode="ng1";
#elif _DEF08_1 == -1
  defmode="ng2";
#elif _DEF08_1 == _DEF08
  defmode="ng3";
#elif _DEF08_1 == 0
  defmode="ng4";
#elif _DEF08_1 != 0
  defmode="ok";
#endif
  schck("pcc01_08","ok",defmode,"test pcc01.08");
  defmode="   ";

#define _DEF09 011UL
#define _DEF09_1 11
#if _DEF09_1==_DEF09
  defmode="ng1";
#elif _DEF09 << 1 == 18
  #if _DEF09 >> 1 == 4
    defmode="ok";
  #else
    defmode="ng2";
  #endif
#else
  defmode="ng3"
#endif
  schck("pcc01_09","ok",defmode,"test pcc01.09");
  defmode="   ";

#define _DEF10 021U
#if _DEF10_1==_DEF10
  defmode="ng1";
#elif (_DEF10 > 1) && (_DEF10-17==0)
  defmode="ok";
#else
  defmode="ng2";
#endif
  schck("pcc01_10","ok",defmode,"test pcc01.10");
  defmode="   ";

#define _DEF11
#define _DEF11_1 a+B
#define _DEF11_2(a)  a*a*100
#if !defined _DEF11_1 
  defmode="ng1";
#elif defined _DEF11_1 && defined _DEF11_X
  defmode="ng2";
#elif !defined _DEF11 
  defmode="ng3";
#elif !defined _DEF11 
  defmode="ng4";
#elif (defined _DEF11_2) && (defined _DEF11)
  defmode="ok";
#elif 
  defmode="ng";
#endif
  schck("pcc01_11","ok",defmode,"test pcc01.11");
  defmode="   ";

#define _DEF12
#define _DEF12_1 a+B
#define _DEF12_2(a)  a*a*100
#if !defined (_DEF12_1) 
  defmode="ng1";
#elif defined (_DEF12_1) && defined (_DEF12_X)
  defmode="ng2";
#elif !defined (_DEF12) 
  defmode="ng3";
#elif !defined (_DEF12) 
  defmode="ng4";
#elif (defined (_DEF12_2)) && (defined (_DEF12))
  defmode="ok";
#elif 
  defmode="ng";
#endif
  schck("pcc01_12","ok",defmode,"test pcc01.12");
  defmode="   ";

#define _DEF13
#if defined (_DEF13_1) 
  defmode="ng1";
#elif 1
  defmode="ok";
#else 
  defmode="ng2";
#endif
  schck("pcc01_13","ok",defmode,"test pcc01.13");
  defmode="   ";

#define _DEF14
#define _DEF14_1
#define _DEF14_2
#define _DEF14_3
#define _DEF14_4
#undef  _DEF14_4
#ifdef _DEF14_4 
  defmode="ng1";
#else
  #ifdef _DEF14_1
    defmode="ok";
  #else 
    defmode="ng2";
  #endif
#endif
  schck("pcc01_14","ok",defmode,"test pcc01.14");
  defmode="   ";

#define _DEF15
#define _DEF15_1 a+B
#define _DEF15_2(a)  a*a*100
#ifndef _DEF15_1 
  defmode="ng1";
#else
  #ifndef _DEF15_1
    defmode="ng2";
  #else
    #ifndef _DEF15 
      defmode="ng3";
    #else
      #ifndef _DEF15_2 
        defmode="ng3";
      #else
        #ifndef _DEF15_0 
          defmode="ok";
        #endif  
      #endif  
    #endif  
  #endif  
#endif
  schck("pcc01_15","ok",defmode,"test pcc01.15");
  defmode="   ";

#define _DEF16(a,b,c) (a+b+c)/3
#if !defined (_DEF16) 
  defmode="ng";
#else
  defmode="ok";
#endif
  schck("pcc01_16","ok",defmode,"test pcc01.16");
  defmode="   ";

#define _DEF17(a,b,c) (a+b+c)/3
#if defined _DEF17 
  #ifdef _DEF17
    defmode="ng";
  #endif
  defmode="ok";
#endif
  schck("pcc01_17","ok",defmode,"test pcc01.17");
  defmode="   ";

  header("","#if macro test proc") ;
  }
