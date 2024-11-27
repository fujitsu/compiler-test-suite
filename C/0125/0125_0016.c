#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#if  1 || 2
   printf(" *** O K (35-01) *** \n");
#else
   printf(" *** N G (35-01) *** \n");
#endif
 
#if  1 && 2
   printf(" *** O K (35-03) *** \n");
#else
   printf(" *** N G (35-03) *** \n");
#endif
 
#if  (10 | 7) == 15
   printf(" *** O K (35-05) *** \n");
#else
   printf(" *** N G (35-05) *** \n");
#endif
 
#if  (3 ^ 10) == 9
   printf(" *** O K (35-07) *** \n");
#else
   printf(" *** N G (35-07) *** \n");
#endif
 
#if  (5 & 12) == 4
   printf(" *** O K (35-09) *** \n");
#else
   printf(" *** N G (35-09) *** \n");
#endif
 
#if  1 == 2
   printf(" *** N G (35-11) *** \n");
#else
   printf(" *** O K (35-11) *** \n");
#endif
 
#if  1 != 2
   printf(" *** O K (35-13) *** \n");
#else
   printf(" *** N G (35-13) *** \n");
#endif
 
#if  1 <= 2
   printf(" *** O K (36-01) *** \n");
#else
   printf(" *** N G (36-01) *** \n");
#endif
 
#if  1 < 2
   printf(" *** O K (36-03) *** \n");
#else
   printf(" *** N G (36-03) *** \n");
#endif
 
#if  1 >= 2
   printf(" *** N G (36-05) *** \n");
#else
   printf(" *** O K (36-05) *** \n");
#endif
 
#if  1 > 2
   printf(" *** N G (36-07) *** \n");
#else
   printf(" *** O K (36-07) *** \n");
#endif
 
#if  (5 << 2) == 20
   printf(" *** O K (36-09) *** \n");
#else
   printf(" *** N G (36-09) *** \n");
#endif
 
#if  (15 >> 2) == 3
   printf(" *** O K (36-11) *** \n");
#else
   printf(" *** N G (36-11) *** \n");
#endif
 
#if  (11 + 34) == 45
   printf(" *** O K (36-13) *** \n");
#else
   printf(" *** N G (36-13) *** \n");
#endif
 
#if  (12 - 21) == -9
   printf(" *** O K (37-02) *** \n");
#else
   printf(" *** N G (37-02) *** \n");
#endif
 
#if  (3 * 11) == 33
   printf(" *** O K (37-05) *** \n");
#else
   printf(" *** N G (37-05) *** \n");
#endif
 
#if  1987654321 * 1987654321
   printf(" *** O K (37-06) *** \n");
#else
   printf(" *** N G (37-06) *** \n");
#endif
 
#if  (120 / 6) == 20
   printf(" *** O K (37-08) *** \n");
#else
   printf(" *** N G (37-08) *** \n");
#endif
 
#if  (15 % 9) == 6
   printf(" *** O K (37-11) *** \n");
#else
   printf(" *** N G (37-11) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
