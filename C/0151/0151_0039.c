
















  #include <stdio.h>
  #include "001.h"







int main()
{



  char                *ans="   ";
  int                 int_wk1=0;
  unsigned       int  uint_wk1=0;
  signed         int  int_01=0;
  signed   short int  sint_01=0;
  unsigned short int  usint_01=0;
  signed   char       chr_01=0;
  unsigned char       uchr_01=0;

  struct {
          unsigned b_04:4;
          unsigned b_08:8; 
          unsigned b_16:16;
         } bit_01; 

#if defined os2
  enum etag_01 {en_01_01=-32768,en_01_02,en_01_03};
  enum etag_02 {en_02_01=-1,en_02_02,en_02_03};
#else
  enum etag_01 {en_01_01=-2147483648,en_01_02,en_01_03};
  enum etag_02 {en_02_01=-1,en_02_02,en_02_03};
#endif 



  header("","integral promotion test.") ;






  chr_01=-128;                    
  int_wk1=chr_01-1;               
  ichck("mac01_01_01",-129,int_wk1,"mac01_01_01");



  chr_01=+127;                    
  int_wk1=chr_01+1;               
  ichck("mac01_01_02",128,int_wk1,"mac01_01_02");



  uchr_01=255;                    
  int_wk1=uchr_01+1;              
  ichck("mac01_01_03",256,int_wk1,"mac01_01_03");



  uchr_01=0xff;                   
  if (uchr_01==0x000000ff) ans="ok";
  else                     ans="ng";
  schck("mac01_01_04","ok",ans,"mac01_01_04");



  chr_01=0xff;                    
#if INT64
  if (chr_01==0xffffffffffffffff) ans="ok";
#else
  if (chr_01==0xffffffff) ans="ok";
#endif
  else                    ans="ng";
  schck("mac01_01_05","ok",ans,"mac01_01_05");






  sint_01=-32768;                 
  int_wk1=sint_01;                
  if (int_wk1==-32768) ans="ok";
  else                 ans="ng"; 
  schck("mac01_02_01","ok",ans,"mac01_02_01");



  sint_01=+32767;                 
  int_wk1=sint_01;                
  if (int_wk1==32767) ans="ok";
  else                ans="ng";
  schck("mac01_02_02","ok",ans,"mac01_02_02");



  usint_01=65535;                 
  uint_wk1=usint_01;              
  if (uint_wk1==65535) ans="ok";
  else                 ans="ng";
  schck("mac01_02_03","ok",ans,"mac01_02_03");



  usint_01=0xffff;                
  if (usint_01==0x0000ffff) ans="ok";
  else                      ans="ng";
  schck("mac01_02_04","ok",ans,"mac01_02_04");



  sint_01=0xffff;                 
#if INT64
  if (sint_01==0xffffffffffffffff) ans="ok";
#else
  if (sint_01==0xffffffff) ans="ok";
#endif
  else                     ans="ng";
  schck("mac01_02_05","ok",ans,"mac01_02_05");






  bit_01.b_04=15;                 
  int_wk1=bit_01.b_04+1;          
  ichck("mac01_03_01",16,int_wk1,"mac01_03_01");



  bit_01.b_04=0xf;                
  if (bit_01.b_04==0x0000000f) ans="ok";
  else                         ans="ng";
  schck("mac01_03_02","ok",ans,"mac01_03_02");



  bit_01.b_08=255;                
  int_wk1=bit_01.b_08+1;          
  ichck("mac01_03_03",256,int_wk1,"mac01_03_03");



  bit_01.b_08=0xff;               
  if (bit_01.b_08==0x000000ff) ans="ok";
  else                         ans="ng";
  schck("mac01_03_04","ok",ans,"mac01_03_04");






#if defined os2
  int_wk1=en_01_01;               
  if (int_wk1==-32768) ans="ok";
  else                 ans="ng";
  schck("mac01_04_01","ok",ans,"mac01_04_01");
#else
  int_wk1=en_01_01;               
  if (int_wk1==-2147483648) ans="ok";
  else                      ans="ng";
  schck("mac01_04_01","ok",ans,"mac01_04_01");
#endif 



#if defined os2 
                                  
  if (en_02_01==0xffff) ans="ok";
  else                  ans="ng";
  schck("mac01_04_02","ok",ans,"mac01_04_02");
#else
                                  
#if INT64
  if (en_02_01==0xffffffffffffffff) ans="ok";
#else
  if (en_02_01==0xffffffff) ans="ok";
#endif
  else                      ans="ng";
  schck("mac01_04_02","ok",ans,"mac01_04_02");
#endif 



  header("","integral promotion test") ;
  }
