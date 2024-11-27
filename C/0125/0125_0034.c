#include <stdio.h>
int main() {
 
   printf(" TEST START \n");

#if  +4294967296U
   printf(" *** O K (02-01) *** \n");
#else
   printf(" *** N G (02-01)A *** \n");
#endif

#if  -4294967296u
   printf(" *** O K (02-02) *** \n");
#else
   printf(" *** N G (02-02)B *** \n");
#endif
 
#if  ~ 4294967295123u
   printf(" *** O K (02-03) *** \n");
#else
   printf(" *** N G (02-03) *** \n");
#endif
 
#if  ! 4294967295123456u
   printf(" *** N G (02-04) *** \n");
#else
   printf(" *** O K (02-04) *** \n");
#endif
 
#if  (4294967299u)
   printf(" *** O K (02-05) *** \n");
#else
   printf(" *** N G (02-05) *** \n");
#endif
 
#if  -4294967296u
   printf(" *** O K (02-06) *** \n");
#else
   printf(" *** N G (02-06) *** \n");
#endif

   printf(" TEST END \n");
 
}
