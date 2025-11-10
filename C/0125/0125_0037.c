#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#define ah  "021.h"
#include ah
#ifdef AAA
   printf(" *** O K (23-01) *** \n");
#else
   printf(" *** N G (23-01) *** \n");
#endif
 
#include "023.h"
#ifdef AAABBB
   printf(" *** O K (23-03) *** \n");
#else
   printf(" *** N G (23-03) *** \n");
#endif
 
#undef AAA
 
#define bh  "021.h"
#include bh
#ifdef AAA
   printf(" *** O K (23-04) *** \n");
#else
   printf(" *** N G (23-04) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
