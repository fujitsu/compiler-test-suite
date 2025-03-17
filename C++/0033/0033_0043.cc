#include <stdio.h>
int main(){
 long long i=0x7fffffffffffffab;
 long long j;

 printf("%llx\n",i >> 4);
#pragma omp parallel
 j = i >> 4;

 if ( j == 0x7fffffffffffffa)
   printf("ok\n");
 else
   printf("ng %llx\n",i );
}
