#include <stdio.h>
long long vv();
int main() {
   long long v,i ;
   v = vv() ;
   for ( i=0;i<10;i++ )
     if ( (long long)0x8000000000000000LL <= v )
       if ( (long long)0x7fffffffffffffffLL <= v )
	puts("NG") ;
   puts("TEST END") ;
}
long long vv() { return 0x8000000000000000LL ; }
