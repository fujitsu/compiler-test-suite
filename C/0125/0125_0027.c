#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#if  +4294967295U
  #if  +2147483648U
     printf(" *** O K (02-01) *** \n");
  #else
     printf(" *** N G (02-01)A *** \n");
  #endif
#else
   printf(" *** N G (02-01)B *** \n");
#endif
 
#if  -4141414141u
  #if  -0u
     printf(" *** N G (02-02)A *** \n");
  #else
     printf(" *** O K (02-02) *** \n");
  #endif
#else
   printf(" *** N G (02-02)B *** \n");
#endif
 
#if  ~ 3333333333u
   printf(" *** O K (02-03) *** \n");
#else
   printf(" *** N G (02-03) *** \n");
#endif
 
#if  ! 4294967295u
   printf(" *** N G (02-04) *** \n");
#else
   printf(" *** O K (02-04) *** \n");
#endif
 
#if  (2147483648u)
   printf(" *** O K (02-05) *** \n");
#else
   printf(" *** N G (02-05) *** \n");
#endif
 
#if  1u
   printf(" *** O K (02-06) *** \n");
#else
   printf(" *** N G (02-06) *** \n");
#endif
 
#if  -2147483648u
   printf(" *** O K (02-07) *** \n");
#else
   printf(" *** N G (02-07) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
