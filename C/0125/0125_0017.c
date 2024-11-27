#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#if  + 1
   printf(" *** O K (38-01) *** \n");
#else
   printf(" *** N G (38-01) *** \n");
#endif
 
#if  - 1
   printf(" *** O K (38-03) *** \n");
#else
   printf(" *** N G (38-03) *** \n");
#endif
 
#if  ~ 1
   printf(" *** O K (38-06) *** \n");
#else
   printf(" *** N G (38-06) *** \n");
#endif
 
#if  ! 1
   printf(" *** N G (38-08) *** \n");
#else
   printf(" *** O K (38-08) *** \n");
#endif
 
#if  (1)
   printf(" *** O K (39-02) *** \n");
#else
   printf(" *** N G (39-02) *** \n");
#endif
 
#if  1
   printf(" *** O K (39-05) *** \n");
#else
   printf(" *** N G (39-05) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
