#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#include "023.h"
#ifdef AAABBB
   printf(" *** O K (24-01) *** \n");
#else
   printf(" *** N G (24-01) *** \n");
#endif
 
#include "024.h"
#ifdef T
  #ifdef TT
   printf(" *** O K (24-02) *** \n");
  #else
   printf(" *** N G (24-02)A*** \n");
  #endif
#else
   printf(" *** N G (24-02)B*** \n");
#endif
 
#include "001.h"
#ifdef ABCDEF
   printf(" *** O K (24-03) *** \n");
#else
   printf(" *** N G (24-03) *** \n");
#endif
 
#include "026.h"
#ifdef A
  #ifdef AA
   printf(" *** O K (24-06) *** \n");
  #else
   printf(" *** N G (24-06)A*** \n");
  #endif
#else
   printf(" *** N G (24-06)B*** \n");
#endif
 
#include "027.h"
#ifdef B
  #ifdef BB
   printf(" *** O K (24-08) *** \n");
  #else
   printf(" *** N G (24-08)A*** \n");
  #endif
#else
   printf(" *** N G (24-08)B*** \n");
#endif
 
   printf(" TEST END \n");
 
}
