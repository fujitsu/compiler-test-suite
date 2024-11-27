#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#undef a
#define a 100
#if a == 100
   printf(" *** O K (25-02) *** \n");
#else
   printf(" *** N G (25-02) *** \n");
#endif
 
#undef a
#define a
#ifdef a
   printf(" *** O K (25-03) *** \n");
#else
   printf(" *** N G (25-03) *** \n");
#endif
 
#undef a
#define a(x) x
#if a(10) == 10
   printf(" *** O K (25-05) *** \n");
#else
   printf(" *** N G (25-05) *** \n");
#endif
 
#undef a
#define a(x)
#ifdef a
   printf(" *** O K (25-06) *** \n");
#else
   printf(" *** N G (25-06) *** \n");
#endif
 
#undef aaa
#define aaa/* */100
#if aaa == 100
   printf(" *** O K (25-07) *** \n");
#else
   printf(" *** N G (25-07) *** \n");
#endif
 
 
   printf(" TEST END \n");
 
}
