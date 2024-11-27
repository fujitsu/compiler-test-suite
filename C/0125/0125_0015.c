#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#undef   a
#define  a  1
#if  defined  a
   printf(" *** O K (33-01) *** \n");
#else
   printf(" *** N G (33-01) *** \n");
#endif
 
#if  defined  (a)
   printf(" *** O K (33-03) *** \n");
#else
   printf(" *** N G (33-03) *** \n");
#endif
 
#if  1 ? 1 : 0
   printf(" *** O K (34-01) *** \n");
#else
   printf(" *** N G (34-01) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
