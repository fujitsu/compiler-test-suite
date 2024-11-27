#include <stdio.h>

int main() {
 
   printf(" TEST START \n");

#undef  A
#define A 1
#define A 2
 
   printf(" TEST END \n");
 
}
