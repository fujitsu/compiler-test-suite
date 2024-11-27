#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main(  )                             
    { 
    {
  static int  i101,
    ipt2 = 0 ,*ip2 = &ipt2  ;    
   ipt2 = 30000 ;
   i101= ((*ip2)/1000+2*10);
   ipt2 = 30000 - i101 ;
   printf("%d\n",ipt2);
    }
exit (0);
   }
