#include <string.h>
#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#undef a
#define a(x) "abc"#x
 if (!memcmp(a(abc),"abcabc",6))
   printf(" *** O K (28-01) *** \n");
 else
   printf(" *** N G (28-01) *** \n");
 
#undef a
#define a(x) #x
 if (!memcmp(a(abcdef),"abcdef",6))
   printf(" *** O K (28-02) *** \n");
 else
   printf(" *** N G (28-02) *** \n");
 
   printf(" TEST END \n");
 
}
