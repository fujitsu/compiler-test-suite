#include <string.h>
#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#define  x(x)  # x
#define  y(y)  x(y)
#define  f(x)  x
#define  A  100
 
if (!memcmp(y(f(f(a))) , "a" , 1))
      printf(" *** O K (49-01) ***  \n");
else
      printf(" === N G (49-01) ===  \n");
 
 
#if  f(A) == 100
      printf(" *** O K (49-02) ***  \n");
#else
      printf(" === N G (49-02) ===  \n");
#endif
 
 
#undef  f
#define  f(x)  f(x)
 
if (!memcmp(y(f(a)) ,    "f(a)" , 4))
      printf(" *** O K (49-03) ***  \n");
else
      printf(" === N G (49-03) ===  \n");
 
 
   printf(" TEST END \n");
 
}
