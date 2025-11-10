
















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



  header("","convert signed/unsigned test") ;









  chr_01=127;                     
  uint_wk1=chr_01;                
                                  
  ichck("mas01_01_01",+127,uint_wk1,"mas01_01_01");



  chr_01=-128;                    
  uint_wk1=chr_01;                
  ichck("mas01_01_02",-128,uint_wk1,"mas01_01_02");



  chr_01=+127;                    
  int_wk1=chr_01;                 
  ichck("mas01_01_03",127,int_wk1,"mas01_01_03");



  chr_01=-128;                    
  int_wk1=chr_01;                 
  ichck("mas01_01_04",-128,int_wk1,"mas01_01_04");






  uchr_01=+255;                   
  uint_wk1=uchr_01;               
                                  
  ichck("mas01_01_05",+255,uint_wk1,"mas01_01_05");



  uchr_01=+255;                   
  int_wk1=uchr_01;                
  ichck("mas01_01_06",255,int_wk1,"mas01_01_06");









  int_01=+32767;                  
  usint_01=int_01;                
  if (usint_01==32767) ans="ok";  
  else             ans="ng";      
  schck("mas01_02_01","ok",ans,"mas01_02_01");



  int_01=-32768;                  
  usint_01=int_01;                
  if (usint_01==32768)  ans="ok";
  else                  ans="ng";
  schck("mas01_02_02","ok",ans,"mas01_02_02");



  int_01=-1;                      
  sint_01=int_01;                 
  if (sint_01==-1) ans="ok";
  else             ans="ng";
  schck("mas01_02_03","ok",ans,"mas01_02_03");






  uint_01=+65535;                 
  usint_01=uint_01;               
  if (usint_01==65535) ans="ok";
  else                 ans="ng";
  schck("mas01_02_04","ok",ans,"mas01_02_04");



  uint_01=+65535;                 
  sint_01=uint_01;                
  if (sint_01==-1) ans="ok";
  else             ans="ng";
  schck("mas01_02_05","ok",ans,"mas01_02_05");



#ifndef os2
  uint_01=+65536;                 
  sint_01=uint_01;                
  if (sint_01== 0) ans="ok";
  else             ans="ng";
  schck("mas01_02_06","ok",ans,"mas01_02_06");
#endif









  sint_01=+32767;                 
  int_01=sint_01;                 
  if (int_01==32767) ans="ok";    
  else               ans="ng";    
  schck("mas01_03_01","ok",ans,"mas01_03_01");



  sint_01=-32768;                 
  uint_01=sint_01;                
#if !defined os2
  if (uint_01==-32768) ans="ok";
#else
  if ((int)uint_01==-32768) ans="ok";
#endif
  else                 ans="ng";
  schck("mas01_03_02","ok",ans,"mas01_03_02");



  sint_01=-1;                     
  int_01=sint_01;                 
  if (int_01==-1) ans="ok";
  else            ans="ng";
  schck("mas01_03_03","ok",ans,"mas01_03_03");



  sint_01=+32767;                 
  uint_01=sint_01;                
  if (uint_01==32767) ans="ok";   
  else                ans="ng";
  schck("mas01_03_04","ok",ans,"mas01_03_04");



  sint_01=-32768;                 
  int_01=sint_01;                 
  if (int_01==-32768)  ans="ok";
  else                 ans="ng";
  schck("mas01_03_05","ok",ans,"mas01_03_05");



  sint_01=-1;                     
  uint_01=sint_01;                
  if (uint_01==-1) ans="ok";
  else             ans="ng";
  schck("mas01_03_06","ok",ans,"mas01_03_06");






  usint_01=+65535;                
  uint_01=usint_01;               
  if (uint_01==65535)  ans="ok";
  else                 ans="ng";
  schck("mas01_03_07","ok",ans,"mas01_03_07");



  usint_01=+65535;                
  int_01=usint_01;                
#if defined os2 
  if (int_01==-1)     ans="ok";   
#else
  if (int_01==65535)  ans="ok"; 
#endif
  else                ans="ng";
  schck("mas01_03_08","ok",ans,"mas01_03_08");



  header("","convert signed/unsigned test") ;
  }
