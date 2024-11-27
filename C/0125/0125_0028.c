#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#define  a  2u
#define  b  1u
 
#if __STDC_VERSION__ >= 199901L
#if  (a - 1) * (-2147483648) == 18446744071562067968u
   printf(" ***O   K(03-01) *** \n");
#else
   printf(" *** N G (03-01) *** \n");
#endif
#else
#if  (a - 1) * (-2147483648) == 2147483648u
   printf(" ***O   K(03-01) *** \n");
#else
   printf(" *** N G (03-01) *** \n");
#endif
#endif
 
#if  ((b || 0) / (-1)) == -1
   printf(" ***O   K(03-02) *** \n");
#else
   printf(" *** N G (03-02) *** \n");
#endif
 
#if  ((b == 1) * (-2)) == -2
   printf(" ***O   K(03-03) *** \n");
#else
   printf(" *** N G (03-03) *** \n");
#endif
 
#if  2147483647u < -2147483648
   printf(" ***O   K(03-04) *** \n");
#else
   printf(" *** N G (03-04) *** \n");
#endif
 
#if  2147483647 < -2147483648u
   printf(" ***O   K(03-05) *** \n");
#else
   printf(" *** N G (03-05) *** \n");
#endif
 
#if __STDC_VERSION__ >= 199901L
#if  4294967295u == 4294967295U
   printf(" ***O   K(03-06) *** \n");
#else
   printf(" *** N G (03-06) *** \n");
#endif
#else
#if  4294967295u == -1U
   printf(" ***O   K(03-06) *** \n");
#else
   printf(" *** N G (03-06) *** \n");
#endif
#endif
 
#if __STDC_VERSION__ >= 199901L
#if  2147483648u == 2147483648u
   printf(" ***O   K(03-07) *** \n");
#else
   printf(" *** N G (03-07) *** \n");
#endif
#else
#if  2147483648u == -2147483648u
   printf(" ***O   K(03-07) *** \n");
#else
   printf(" *** N G (03-07) *** \n");
#endif
#endif
 
#if  2147483648u >> 1 == 0x40000000
   printf(" ***O   K(03-08) *** \n");
#else
   printf(" *** N G (03-08) *** \n");
#endif
 
#if  4294967295u >> 16 == 65535
   printf(" ***O   K(03-09) *** \n");
#else
   printf(" *** N G (03-09) *** \n");
#endif
 
   printf(" TEST END \n");
 
}
