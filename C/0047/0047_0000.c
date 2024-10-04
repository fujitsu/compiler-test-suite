#include <stdlib.h>                    
#include <stdio.h>                
int main()                                
  {                                  
#if __NO_WC || defined(__hal)
      printf("loop\n");
      printf("loop\n");
#else
    int bsit0601,bsit0602,            
        bsit0603,bsit0604;            
    wchar_t   *bslc0601,*bslc0602; 
    bsit0601 = 100;                    
    bsit0602 = 200;                    
    bsit0603 = 0;                      
#if !defined(__no_eucJP)
    bslc0601 = L"先先週";
    bslc0602 = L"先";
#else
    bslc0601 = L"ssensensyu"; 
    bslc0602 = L"sen"; 
#endif
    while (*(bslc0601 + bsit0603) == *bslc0602 ?
           (bsit0601 < bsit0602) :     
           (bsit0601 > bsit0602))      
    {                                 
      bsit0603 ++;                
      printf("loop\n");
      if (bsit0603 < 2)                
      {                               
        continue;                 
      }                               
      if (bsit0603 >= 1)           
         ;
    }                                
#endif
  }                               
