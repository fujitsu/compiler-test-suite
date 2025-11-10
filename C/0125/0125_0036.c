#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#include "000.h"
#ifdef AAA
   printf(" *** O K (22-01) *** \n");
#else
   printf(" *** N G (22-01) *** \n");
#endif
 
#include "022.h"
#ifdef ABCABC
   printf(" *** O K (22-02) *** \n");
#else
   printf(" *** N G (22-02) *** \n");
#endif
 
#undef ABCABC
 
#include "022.h"
#ifdef ABCABC
   printf(" *** O K (22-05) *** \n");
#else
   printf(" *** N G (22-05) *** \n");
#endif
 
#undef ABCABC
 
#include "022.h"
#ifdef ABCABC
   printf(" *** O K (22-07) *** \n");
#else
   printf(" *** N G (22-07) *** \n");
#endif
 
#undef ABCABC
 
#include "022.h"
#ifdef ABCABC
   printf(" *** O K (22-08) *** \n");
#else
   printf(" *** N G (22-08) *** \n");
#endif
 
#include "023.h"
#ifdef AAABBB
   printf(" *** O K (22-09) *** \n");
#else
   printf(" *** N G (22-09) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
