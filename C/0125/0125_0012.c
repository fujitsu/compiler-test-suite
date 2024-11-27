#include <string.h>
#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#undef a
#define a(x) x
#if a(1) == 1
   printf(" *** TEST01 O K (30-02) *** \n");
#else
   printf(" *** TEST01 N G (30-02) *** \n");
#endif
 
#undef a
#define a(x) 'x'
#if a(1) == '1'
   printf(" *** TEST02 O K (30-03) *** \n");
#else
   printf(" *** TEST02 N G (30-03) *** \n");
#endif
 
#undef a
#define a(x) "x"
  if (!memcmp(a(abc),"abc",3))
   printf(" *** TEST03 O K (30-04) *** \n");
  else
   printf(" *** TEST03 N G (30-04) *** \n");
 
   printf(" TEST END \n");
 
}
