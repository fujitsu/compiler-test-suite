#include <stdio.h>
  extern int ier =2147483647     ;  
  extern int ienr=0              ;  
  static char isr =127           ;  
  static char isnr=0             ;  
         long int insr =2147483647; 
         long int insnr=0        ;  
  extern int nier                ;  
  extern int nienr               ;  
  static char nisr               ;  
  static char nisnr              ;  
         long int ninsr          ;  
         long int ninsnr         ;  
int main()
{
  printf("START\n") ;
    if (ier != 2147483647 ||
        isr != 127        ||
        insr!= 2147483647 )
      printf("NG\n");
  printf("NORMAL END\n");
}
