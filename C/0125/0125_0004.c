#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#if 0
#else
   printf(" *** O K (19-01) *** \n");
#endif
 
#if 1
#endif
   printf(" *** O K (19-02) *** \n");
 
   printf(" TEST END \n");
 
}
