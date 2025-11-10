
















  #include <stddef.h>
  #include "001.h"





int main()
  {

  header("","CHAR CONSTANT TEST(2 byte string)") ;




#if !defined(os2)
  {
  wchar_t wchar_001 = L'A' ;
  wchar_t wchar_002 = L'B' ;
  wchar_t wchar_003 = L'C' ;
  wchar_t wchar_004 = L'D' ;
  wchar_t wchar_005 = L'E' ;
  wchar_t wchar_006 = L'F' ;
  wchar_t wchar_007 = L'G' ;
  wchar_t wchar_008 = L'H' ;
  wchar_t wchar_009 = L'I' ;
  wchar_t wchar_010 = L'J' ;
  wchar_t wchar_011 = L'K' ;
  wchar_t wchar_012 = L'L' ;
  wchar_t wchar_013 = L'M' ;
  wchar_t wchar_014 = L'N' ;
  wchar_t wchar_015 = L'O' ;
  wchar_t wchar_016 = L'P' ;
  wchar_t wchar_017 = L'Q' ;
  wchar_t wchar_018 = L'R' ;
  wchar_t wchar_019 = L'S' ;
  wchar_t wchar_020 = L'T' ;
  wchar_t wchar_021 = L'U' ;
  wchar_t wchar_022 = L'V' ;
  wchar_t wchar_023 = L'W' ;
  wchar_t wchar_024 = L'X' ;
  wchar_t wchar_025 = L'Y' ;
  wchar_t wchar_026 = L'Z' ;
  wchar_t wchar_027 = L'a' ;
  wchar_t wchar_028 = L'b' ;
  wchar_t wchar_029 = L'c' ;
  wchar_t wchar_030 = L'd' ;
  wchar_t wchar_031 = L'e' ;
  wchar_t wchar_032 = L'f' ;
  wchar_t wchar_033 = L'g' ;
  wchar_t wchar_034 = L'h' ;
  wchar_t wchar_035 = L'i' ;
  wchar_t wchar_036 = L'j' ;
  wchar_t wchar_037 = L'k' ;
  wchar_t wchar_038 = L'l' ;
  wchar_t wchar_039 = L'm' ;
  wchar_t wchar_040 = L'n' ;
  wchar_t wchar_041 = L'o' ;
  wchar_t wchar_042 = L'p' ;
  wchar_t wchar_043 = L'q' ;
  wchar_t wchar_044 = L'r' ;
  wchar_t wchar_045 = L's' ;
  wchar_t wchar_046 = L't' ;
  wchar_t wchar_047 = L'u' ;
  wchar_t wchar_048 = L'v' ;
  wchar_t wchar_049 = L'w' ;
  wchar_t wchar_050 = L'x' ;
  wchar_t wchar_051 = L'y' ;
  wchar_t wchar_052 = L'z' ;
  wchar_t wchar_053 = L'0' ;
  wchar_t wchar_054 = L'1' ;
  wchar_t wchar_055 = L'2' ;
  wchar_t wchar_056 = L'3' ;
  wchar_t wchar_057 = L'4' ;
  wchar_t wchar_058 = L'5' ;
  wchar_t wchar_059 = L'6' ;
  wchar_t wchar_060 = L'7' ;
  wchar_t wchar_061 = L'8' ;
  wchar_t wchar_062 = L'9' ;
  wchar_t wchar_063 = L'!' ;
  wchar_t wchar_064 = L'"' ;
  wchar_t wchar_065 = L'#' ;
  wchar_t wchar_066 = L'%' ;
  wchar_t wchar_067 = L'&' ;
  wchar_t wchar_068 = L'\'';
  wchar_t wchar_069 = L'(' ;
  wchar_t wchar_070 = L')' ;
  wchar_t wchar_071 = L'*' ;
  wchar_t wchar_072 = L'+' ;
  wchar_t wchar_073 = L',' ;
  wchar_t wchar_074 = L'-' ;
  wchar_t wchar_075 = L'.' ;
  wchar_t wchar_076 = L'/' ;
  wchar_t wchar_077 = L':' ;
  wchar_t wchar_078 = L';' ;
  wchar_t wchar_079 = L'<' ;
  wchar_t wchar_080 = L'=' ;
  wchar_t wchar_081 = L'>' ;
  wchar_t wchar_082 = L'?' ;
  wchar_t wchar_083 = L'[' ;
  wchar_t wchar_084 = L'\\';
  wchar_t wchar_085 = L']' ;
  wchar_t wchar_086 = L'^' ;
  wchar_t wchar_087 = L'_' ;
  wchar_t wchar_088 = L'{' ;
  wchar_t wchar_089 = L'|' ;
  wchar_t wchar_090 = L'}' ;
  wchar_t wchar_091 = L' ' ;
  int  judge = 0 ;
  if (wchar_001==L'A') judge++ ;
  ichck("TKC04.14",1,judge,
         "2 byte char constant source string test") ;
  }



  {
  wchar_t wchar_a = L'\a' ;
  int  judge = 0 ;
  if (wchar_a==L'\a') judge++ ;
  ichck("TKC04.15",1,judge,"2 byte char constant \a test") ;
  }



  {
  wchar_t wchar_b = L'\b' ;
  int  judge = 0 ;
  if (wchar_b==L'\b') judge++ ;
  ichck("TKC04.16",1,judge,"2 byte char constant \b test") ;
  }



  {
  wchar_t wchar_f = L'\f' ;
  int  judge = 0 ;
  if (wchar_f==L'\f') judge++ ;
  ichck("TKC04.17",1,judge,"2 byte char constant \f test") ;
  }



  {
  wchar_t wchar_n = L'\n' ;
  int  judge = 0 ;
  if (wchar_n==L'\n') judge++ ;
  ichck("TKC04.18",1,judge,"2 byte char constant \n test") ;
  }



  {
  wchar_t wchar_r = L'\r' ;
  int  judge = 0 ;
  if (wchar_r==L'\r') judge++ ;
  ichck("TKC04.19",1,judge,"2 byte char constant \r test") ;
  }



  {
  wchar_t wchar_tt = L'\t' ;
  int  judge = 0 ;
  if (wchar_tt==L'\t') judge++ ;
  ichck("TKC04.20",1,judge,"2 byte char constant \t test") ;
  }



  {
  wchar_t wchar_0 = L'\0' ;
  int  judge = 0 ;
  if (wchar_0==L'\0') judge++ ;
  ichck("TKC04.21",1,judge,"2 byte char constant \0 test") ;
  }



  {
#if defined(msp)
  wchar_t wchar_oct = L'\201' ;
#else
  wchar_t wchar_oct = L'\141' ;
#endif
  int  judge = 0 ;
  if (wchar_oct==L'a') judge++ ;
  ichck("TKC04.22",1,judge,"2 byte char constant oct test") ;
  }



  {
#if defined(solaris1) || defined(_WIN32) || defined(__i386__) || defined(__x86_64__) || defined(__aarch64__)
  wchar_t wchar_oct = L'\141' ;
#else
  wchar_t wchar_oct = L'\1419' ;
#endif
  int  judge = 0 ;
  if (wchar_oct==L'a') judge++ ;
  ichck("TKC04.23",1,judge,"2 byte char constant oct test") ;
  }



  {
#if defined(msp)
  wchar_t wchar_hex = L'\x81' ;
#else
  wchar_t wchar_hex = L'\x61' ;
#endif
  int  judge = 0 ;
  if (wchar_hex==L'a') judge++ ;
  ichck("TKC04.24",1,judge,"2 byte char constant hex test") ;
  }

  header("","CHAR CONSTANT TEST(2 byte string)") ;
#endif
  }
