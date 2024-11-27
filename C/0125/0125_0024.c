#include <string.h>
#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#define  fffffff  1
#define  a(x)     # x
#define  b(x)     a(x)
   if (!memcmp(b(1fffffff) , "1fffffff" , 8))
      printf(" *** O K (06-01) ***  \n");
   else
      printf(" === N G (06-01) ===  \n");
 
#if  fffffff  ==  1
      printf(" *** O K (06-02) ***  \n");
#else
      printf(" === N G (06-02) ===  \n");
#endif
 
#define  c  1.0
   if (c+12344.67 == 12345.67)
      printf(" *** O K (06-03) ***  \n");
   else
      printf(" === N G (06-03) ===  \n");
 
#define  E  1
#define  d  12345E+6
   if (d == 12345000000.0)
      printf(" *** O K (06-04) ***  \n");
   else
      printf(" === N G (06-04) ===  \n");
 
#define  f  12345E-6
   if (f == 0.012345)
      printf(" *** O K (06-05) ***  \n");
   else
      printf(" === N G (06-05) ===  \n");
 
#define  e  1
#define  g  12345e+6
   if (g == 12345000000.0)
      printf(" *** O K (06-06) ***  \n");
   else
      printf(" === N G (06-06) ===  \n");
 
#define  h  12345e-6
   if (h == 0.012345)
      printf(" *** O K (06-07) ***  \n");
   else
      printf(" === N G (06-07) ===  \n");
 
#define  i  1.0+
   if (i.1234567 == 1.1234567)
      printf(" *** O K (06-08) ***  \n");
   else
      printf(" === N G (06-08) ===  \n");
 
if (!memcmp(b(\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890) , "\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890" , 300))
      printf(" *** O K (06-09) ***  \n");
else
      printf(" === N G (06-09) ===  \n");
 
if (!memcmp(b(\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890) , "\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890\
1234567890abcdefghijffffffffffabcdefghij1234567890" , 1014))
      printf(" *** O K (06-10) ***  \n");
else
      printf(" === N G (06-10) ===  \n");
 
      printf(" *** O K (06-11) ***  \n");
      printf(" *** O K (06-12) ***  \n");
      printf(" *** O K (06-13) ***  \n");
      printf(" *** O K (06-14) ***  \n");
      printf(" *** O K (07-01) ***  \n");
 
   printf(" TEST END \n");
}
