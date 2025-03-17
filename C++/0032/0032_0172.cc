#include <stdio.h>
int main(){
 long long i=0x7fffffffffffffab;


 printf("%llx\n",i >> 4);
 i >>= 4;             
 if ( i == 0x7fffffffffffffa)
   printf("ok\n");
 else
   printf("ng %llx\n",i );
}
