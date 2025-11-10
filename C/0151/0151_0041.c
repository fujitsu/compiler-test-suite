
















  #include <stdio.h>
  #include "001.h"







int main()
{



  int                 int_wk1=0;
  unsigned int        uint_wk1=0;
  char                *ans="   ";

  signed char         chr_01=0;
  unsigned char       uchr_01=0;
  signed int          int_01=0;
  unsigned int        uint_01=0;
  signed short int    sint_01=0;
  unsigned short int  usint_01=0;
  signed long  int    lint_01=0;
  unsigned long  int  ulint_01=0;

#if (defined msp)||(defined uxp)
  signed   long long int  llint_01=0;
  unsigned long long int  ullint_01=0;
#endif

#if defined os2
  enum etag_01 {en_01_01=-32768,en_01_02,en_01_03};
  enum etag_02 {en_02_01=-1,en_02_02,en_02_03};
#else
  enum etag_01 {en_01_01=-2147483648,en_01_02,en_01_03};
  enum etag_02 {en_02_01=-1,en_02_02,en_02_03};
#endif



  header("","integral promotion test.") ;









#if !defined os2
  lint_01=+2147483647;            
  uint_01=lint_01;                
  if (uint_01==2147483647) ans="ok";
  else                     ans="ng";
  schck("mas01_04_01","ok",ans,"mas01_04_01");



  lint_01=-2147483648;            
  uint_01=lint_01;                
#if LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
  if (uint_01==2147483648) ans="ok";
#else
  if (uint_01==-2147483648) ans="ok";
#endif
  else                      ans="ng";
  schck("mas01_04_02","ok",ans,"mas01_04_02");
#endif 



  lint_01=-1;                     
  int_01=lint_01;                 
                                  
  if (int_01==-1)  ans="ok";
  else             ans="ng";
  schck("mas01_04_03","ok",ans,"mas01_04_03");



#if !defined os2 



  ulint_01=+4294967295;           
  uint_01=ulint_01;               
  if (uint_01==4294967295)  ans="ok";
  else                      ans="ng";
  schck("mas01_04_04","ok",ans,"mas01_04_04");



  lint_01=+2147483648;            
  int_01=lint_01;                 
#if LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
  if (int_01==-2147483648) ans="ok";
#else
  if (int_01==2147483648) ans="ok";
#endif
  else                    ans="ng";
  schck("mas01_04_05","ok",ans,"mas01_04_05");
#endif 



#if (defined msp)||(defined uxp)






  llint_01=0x7fffffffffffffffll;  
  ullint_01=llint_01;             
  if (ullint_01==0x7fffffffffffffffll) ans="ok";
  else                                 ans="ng";
  schck("mas01_05_01","ok",ans,"mas01_05_01");



  llint_01=0x8000000000000000ll;  
  ullint_01=llint_01;             
  if (ullint_01==0x8000000000000000ll) ans="ok";
  else                                 ans="ng";
  schck("mas01_05_02","ok",ans,"mas01_05_02");



  llint_01=-1ll;                  
  ullint_01=llint_01;             
  if (ullint_01==-1ll) ans="ok";
  else                 ans="ng";
  schck("mas01_05_03","ok",ans,"mas01_05_03");






  ullint_01=0x8000000000000000ll; 
  llint_01=ullint_01;             
  if (llint_01==0x8000000000000000ll)  ans="ok";
  else                                 ans="ng";
  schck("mas01_05_04","ok",ans,"mas01_05_04");
#endif









#if !defined os2 
  uint_01=en_01_01;               
#if LONG64 || __x86_64__  || __aarch64__ || defined(_LP64)
  if (uint_01==2147483648) ans="ok"; 
#else
  if (uint_01==-2147483648) ans="ok"; 
#endif
  else                      ans="ng";
  schck("mas01_06_01","ok",ans,"mas01_06_01");
#else
  uint_01=en_01_01;               
  if (uint_01==(unsigned int)-32768) ans="ok";  
                                                
  else                 ans="ng";
  schck("mas01_06_01","ok",ans,"mas01_06_01");
#endif



  int_01=en_02_01;                
  if (int_01==-1) ans="ok";
  else            ans="ng";
  schck("mas01_06_02","ok",ans,"mas01_06_02");



  header("","integral promotion test") ;
  }
