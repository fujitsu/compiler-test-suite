#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
 {
   struct bittag {
            unsigned char         a11: 4;
            unsigned char         a12: 4;
   } ;
   struct bittag bitdata={0xf,0xf};
   if (bitdata.a11==0xf&&bitdata.a12==0xf)
     printf("*** scs001 *** ok ***\n") ;
   else if(bitdata.a11!=0xff)
     printf("### scs001 ### error ###\n") ;
   else if(bitdata.a12==0x00)
     printf("### scs001 ### error ###\n") ;
   else if(bitdata.a12!=0x00)
     printf("### scs001 ### error ###\n") ;
exit (0);
 }
