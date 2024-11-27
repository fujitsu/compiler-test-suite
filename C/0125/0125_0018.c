#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#if  0x0
   printf(" *** N G (42-01) *** \n");
#else
   printf(" *** O K (42-01) *** \n");
#endif
 
#if  0xff
   printf(" *** O K (42-02) *** \n");
#else
   printf(" *** N G (42-02) *** \n");
#endif
 
#if  0x7fffffff
   printf(" *** O K (42-03) *** \n");
#else
   printf(" *** N G (42-03) *** \n");
#endif
 
#if  0xffffffffff
   printf(" *** O K (42-04) *** \n");
#else
   printf(" *** N G (42-04) *** \n");
#endif
 
#if  07
   printf(" *** O K (42-05) *** \n");
#else
   printf(" *** N G (42-05) *** \n");
#endif
 
#if  077
   printf(" *** O K (42-06) *** \n");
#else
   printf(" *** N G (42-06) *** \n");
#endif
 
#if  07777777777
   printf(" *** O K (42-07) *** \n");
#else
   printf(" *** N G (42-07) *** \n");
#endif
 
#if  0
   printf(" *** N G (42-08) *** \n");
#else
   printf(" *** O K (42-08) *** \n");
#endif
 
#if  9
   printf(" *** O K (42-09) *** \n");
#else
   printf(" *** N G (42-09) *** \n");
#endif
 
#if  99
   printf(" *** O K (42-10) *** \n");
#else
   printf(" *** N G (42-10) *** \n");
#endif
 
#if  2147483647
   printf(" *** O K (42-11) *** \n");
#else
   printf(" *** N G (42-11) *** \n");
#endif
 
 
   printf(" TEST END \n");
 
}
