#include<stdio.h>

int main()
{
 
   printf(" TEST START \n");
 
#include  "022.h"
#ifdef  ABCABC
   printf(" *** O K (09-02) ***  \n");
#else
   printf(" === N G (09-02) ===  \n");
#endif
 
#include  "020.h"
#ifdef  ABCD
   printf(" *** O K (09-09) ***  \n");
#else
   printf(" === N G (09-09) ===  \n");
#endif
 
   printf(" TEST END \n");
}
