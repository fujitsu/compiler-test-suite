#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#undef  a
#define a 100
#undef  a
#ifndef a
         printf(" *** O K (31-02) *** \n");
#else
         printf(" *** N G (31-02) *** \n");
#endif
 
#undef  b
#ifndef b
         printf(" *** O K (31-03) *** \n");
#else
         printf(" *** N G (31-03) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
