#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#if  1u || 2U
   printf(" *** O K (01-01) *** \n");
#else
   printf(" *** N G (01-01) *** \n");
#endif
 
#if  1U && 2u
   printf(" *** O K (01-02) *** \n");
#else
   printf(" *** N G (01-02) *** \n");
#endif
 
#if  (10u | 7u) == 15l
   printf(" *** O K (01-03) *** \n");
#else
   printf(" *** N G (01-03) *** \n");
#endif
 
#if  (3u ^ 10u) == 9ul
   printf(" *** O K (01-04) *** \n");
#else
   printf(" *** N G (01-04) *** \n");
#endif
 
#if  (5u & 12u) == 4lu
   printf(" *** O K (01-05) *** \n");
#else
   printf(" *** N G (01-05) *** \n");
#endif
 
#if  4294967295u == 4294967294U
   printf(" *** N G (01-06) *** \n");
#else
   printf(" *** O K (01-06) *** \n");
#endif
 
#if  2147483647u != 2147483648u
   printf(" *** O K (01-07) *** \n");
#else
   printf(" *** N G (01-07) *** \n");
#endif
 
#if  2147483647l <= 2147483648u
   printf(" *** O K (01-08) *** \n");
#else
   printf(" *** N G (01-08) *** \n");
#endif
 
#if  4294967294u < 4294967295u
   printf(" *** O K (01-09) *** \n");
#else
   printf(" *** N G (01-09) *** \n");
#endif
 
#if  3333333333u >= 3333333334u
   printf(" *** N G (01-10) *** \n");
#else
   printf(" *** O K (01-10) *** \n");
#endif
 
#if  1l > (-1u)
   printf(" *** N G (01-11) *** \n");
#else
   printf(" *** O K (01-11) *** \n");
#endif
 
#if  5u << 2u == 20
   printf(" *** O K (01-12) *** \n");
#else
   printf(" *** N G (01-12) *** \n");
#endif
 
#if  4294967295u >> 31 == 1
   printf(" *** O K (01-13) *** \n");
#else
   printf(" *** N G (01-13) *** \n");
#endif
 
#if  2147483647u + 2147483648u == 4294967295u
   printf(" *** O K (01-14) *** \n");
#else
   printf(" *** N G (01-14) *** \n");
#endif
 
#if __STDC_VERSION__ >= 199901L
#if  12u - 13u == 18446744073709551615u
   printf(" *** O K (01-15) *** \n");
#else
   printf(" *** N G (01-15) *** \n");
#endif
#else
#if  12u - 13u == 4294967295u
   printf(" *** O K (01-15) *** \n");
#else
   printf(" *** N G (01-15) *** \n");
#endif
#endif
 
#if  3u * 11 == 33
   printf(" *** O K (01-16) *** \n");
#else
   printf(" *** N G (01-16) *** \n");
#endif
 
#if  1987654321u * 1987654321u
   printf(" *** O K (01-17) *** \n");
#else
   printf(" *** N G (01-17) *** \n");
#endif
 
#if  4294967295u / 5 == 0x33333333
   printf(" *** O K (01-18) *** \n");
#else
   printf(" *** N G (01-18) *** \n");
#endif
 
#if  4294967295u % 15 == 0
   printf(" *** O K (01-19) *** \n");
#else
   printf(" *** N G (01-19) *** \n");
#endif
 
#if  4294967295u ? 1u : 0u
   printf(" *** O K (01-20) *** \n");
#else
   printf(" *** N G (01-20) *** \n");
#endif
 
#if __STDC_VERSION__ >= 199901L
#if  2147483648u - (-2147483648) == 4294967296
   printf(" *** O K (01-21) *** \n");
#else
   printf(" *** N G (01-21) *** \n");
#endif
#else
#if  2147483648u - (-2147483648) == 0
   printf(" *** O K (01-21) *** \n");
#else
   printf(" *** N G (01-21) *** \n");
#endif
#endif
 
#if  2147483648u - 2147483648u == 0
   printf(" *** O K (01-22) *** \n");
#else
   printf(" *** N G (01-22) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
