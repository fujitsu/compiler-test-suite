#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  
  

int main()
{


   char  ch1[32767]    ;


   ch1[32766] = 1      ;

   if ( 1 == ch1[32766] )

           printf(" *** \n");
        else
           printf(" *** \n");



exit (0);
}
