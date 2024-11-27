#include <stdio.h>
int main() {
   auto float a124, *a125=&a124 ;
   int sum=0;
   for( a124=0; a124<10;  a124++  ) sum=sum+ a124;
   for(*a125=0;*a125<10;(*a125)++ ) sum=sum+*a125;
   puts("OK") ;
}
