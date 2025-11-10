
















  #include "001.h"





int main()
  {

  header("","INTEGER(DEC & OCT & HEX) TEST") ;




  {
  unsigned      int etc_01 = 999u ;
  unsigned      int etc_02 = 999U ;
  long          int etc_03 = 999l ;
  long          int etc_04 = 999L ;
  unsigned long int etc_05 = 999ul ;
  unsigned long int etc_06 = 999uL ;
  unsigned long int etc_07 = 999Ul ;
  unsigned long int etc_08 = 999UL ;
  unsigned long int etc_09 = 999lu ;
  unsigned long int etc_10 = 999Lu ;
  unsigned long int etc_11 = 999lU ;
  unsigned long int etc_12 = 999LU ;
#if defined(msp) | defined(uxp)
           long long int etc_13 = 999ll ;
           long long int etc_14 = 999LL ;
  unsigned long long int etc_15 = 999lL ;
           long long int etc_16 = 999Ll ;
#endif


  int judge = 0 ;
  int               int_01max ;
  long int          lint_01max ;
  unsigned long int ulint_01max ;
#if defined(os2)
  int_01max   = 32767 ;
  lint_01max  = 2147483647 ;
  ulint_01max = 4294967295 ;
  if ( int_01max   == 32767        ) judge++ ;
#else
  int_01max   = 2147483647 ;
  lint_01max  = 2147483647 ;
  ulint_01max = 4294967295 ;
  if ( int_01max   == 2147483647   ) judge++ ;
#endif
  if ( lint_01max  == 2147483647   ) judge++ ;
  if ( ulint_01max == 4294967295   ) judge++ ;
  ichck("TKC02.01",3,judge,"decimal litelal test") ;
  }



  {
                int etc_01 = 0777 ;
                int etc_02 = 0777 ;
  unsigned      int etc_03 = 0777u ;
  unsigned      int etc_04 = 0777U ;
  long          int etc_05 = 0777l ;
  long          int etc_06 = 0777L ;
#if defined(msp) | defined(uxp)
           long long int etc_07 = 0777ll ;
           long long int etc_08 = 0777LL ;
  unsigned long long int etc_09 = 0777Ll ;
           long long int etc_10 = 0777lL ;
#endif

  int judge = 0 ;
  unsigned long int ulint_02mid_1 ;
  unsigned long int ulint_02mid_2 ;
  unsigned long int ulint_02mid_3 ;
  unsigned long int ulint_02mid_4 ;
  unsigned long int ulint_02mid_5 ;
  unsigned long int ulint_02mid_6 ;
  unsigned long int ulint_02mid_7 ;
  unsigned long int ulint_02mid_8 ;
  ulint_02mid_1 = 07777777777ul ;
  ulint_02mid_2 = 01234567uL ;
  ulint_02mid_3 = 076543210Ul ;
  ulint_02mid_4 = 00000000001UL ;
  ulint_02mid_5 = 010101010101lu ;
  ulint_02mid_6 = 014321123450Lu ;
  ulint_02mid_7 = 04253762lU ;
  ulint_02mid_8 = 06723626544LU ;
  if ( ulint_02mid_1 == 07777777777ul  ) judge=1000 ;
  if ( ulint_02mid_2 == 01234567uL     ) judge++ ;
  if ( ulint_02mid_3 == 076543210Ul    ) judge++ ;
  if ( ulint_02mid_4 == 00000000001UL  ) judge++ ;
  if ( ulint_02mid_5 == 010101010101lu ) judge++ ;
  if ( ulint_02mid_6 == 014321123450Lu ) judge++ ;
  if ( ulint_02mid_7 == 04253762lU     ) judge++ ;
  if ( ulint_02mid_8 == 06723626544LU  ) judge++ ;
  ichck("TKC02.02",1007,judge,"oct litelal test") ;
  }



  {
                int etc_01 = 0X777 ;
                int etc_02 = 0X777 ;
  unsigned      int etc_03 = 0X777u ;
  unsigned      int etc_04 = 0X777U ;
  long          int etc_05 = 0X777l ;
  long          int etc_06 = 0X777L ;
  unsigned long int etc_07 = 0X1234567uL ;
  unsigned long int etc_08 = 0X76543210Ul ;
  unsigned long int etc_09 = 0X0000000000000000000000000000000001UL ;
  unsigned long int etc_10 = 0X10101011lu ;
  unsigned long int etc_11 = 0X14321124Lu ;
  unsigned long int etc_12 = 0X4253762lU ;
  unsigned long int etc_13 = 0X67236264LU ;
#if defined(msp) | defined(uxp)
           long long int etc_14 = 0X777ll ;
  unsigned long long int etc_15 = 0X777LL ;
           long long int etc_16 = 0X777Ll ;
           long long int etc_17 = 0X777lL ;
#endif

  int judge = 0 ;
  unsigned long int ulint_03min ;
  ulint_03min = 0X00000000000ul ;
  if ( ulint_03min == 0X00000000000ul ) judge=0X111 ;
  ichck("TKC02.03",0X111,judge,"hex litelal test") ;
  }



  {
                int etc_01 = 0X0abcdef ;
                int etc_02 = 0X1abcdef ;
  unsigned      int etc_03 = 0X2abcdefu ;
  unsigned      int etc_04 = 0X3abcdefU ;
  long          int etc_05 = 0X4abcdefl ;
  long          int etc_06 = 0X5abcdefL ;
  unsigned long int etc_07 = 0X6abcdefuL ;
  unsigned long int etc_08 = 0X7abcdefUl ;
  unsigned long int etc_09 = 0X8abcdefUL ;
  unsigned long int etc_10 = 0X9abcdeflu ;
  unsigned long int etc_11 = 0XaabcdefLu ;
  unsigned long int etc_12 = 0XbabcdeflU ;
  unsigned long int etc_13 = 0XcabcdefLU ;
#if defined(msp) | defined(uxp)
  unsigned long long int etc_14 = 0X777LL ;
           long long int etc_15 = 0X777lL ;
           long long int etc_16 = 0X777Ll ;

  int judge = 0 ;
  long long int lli_04 ;
  lli_04 = 0X8000000000000000ll ;
  if ( lli_04 == 0X8000000000000000ll ) judge=0X111 ;
  ichck("TKC02.04",0X111,judge,"hex litelal test") ;
#endif
  }



  {
                int etc_01 = 0x0abcdef ;
                int etc_02 = 0x1abcdef ;
  unsigned      int etc_03 = 0x2abcdefu ;
  unsigned      int etc_04 = 0x3abcdefU ;
  long          int etc_05 = 0x4abcdefl ;
  long          int etc_06 = 0x5abcdefL ;
  unsigned long int etc_07 = 0x6abcdefuL ;
  unsigned long int etc_08 = 0x7abcdefUl ;
  unsigned long int etc_09 = 0x8abcdefUL ;
  unsigned long int etc_10 = 0x9abcdeflu ;
  unsigned long int etc_11 = 0xaabcdefLu ;
  unsigned long int etc_12 = 0xbabcdeflU ;
  unsigned long int etc_13 = 0xcabcdefLU ;
#if defined(msp) | defined(uxp)
  unsigned long long int etc_14 = 0xabcdefll ;
           long long int etc_15 = 0xabcdefLl ;
           long long int etc_16 = 0xabcdeflL ;
  int judge = 0 ;
  long long int lli_05 ;
  lli_05 = 0x7fFFFfffFFffFFfFLL ;
  if ( lli_05 == 0x7fFFFfffFFffFFfFLL ) judge=0x111 ;
  ichck("TKC02.05",0x111,judge,"hex litelal test") ;
#endif
  }



  {
                int etc_01 = 0x0ABCDEF ;
                int etc_02 = 0x1ABCDEF ;
  unsigned      int etc_03 = 0x2ABCDEFu ;
  unsigned      int etc_04 = 0x3ABCDEFU ;
  long          int etc_05 = 0x4ABCDEFl ;
  unsigned long int etc_07 = 0x6ABCDEFul ;
  unsigned long int etc_08 = 0x7ABCDEFuL ;
  unsigned long int etc_09 = 0x8ABCDEFUl ;
  unsigned long int etc_10 = 0x9ABCDEFUL ;
  unsigned long int etc_11 = 0xAABCDEF1lu ;
  unsigned long int etc_12 = 0xBABCDEFLu ;
  unsigned long int etc_13 = 0xCABCDEFlU ;
  unsigned long int etc_14 = 0xABCDEFLU ;
#if defined(msp) | defined(uxp)
           long long int etc_15 = 0xABCDEFll ;
  unsigned long long int etc_16 = 0xABCDEFLL ;
  unsigned long long int etc_17 = 0xABCDEFLl ;
           long long int etc_18 = 0xABCDEFlL ;
#endif

  int judge = 0 ;
  long int lint_06 ;
  lint_06 = 0x7ABCDEFAL ;
  if ( lint_06 == 0X7ABCDEFAL ) judge=0x111 ;
  ichck("TKC02.06",0x111,judge,"hex litelal test") ;
  }

  header("","INTEGER(DEC & OCT & HEX) TEST") ;
  }
