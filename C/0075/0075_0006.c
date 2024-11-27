#include <stdio.h>
int foo( int p ) {
    unsigned int  i,u ;
    signed int  is ;

    if ( p == 2 ) {
        u=10 ;
        for ( is = 0 ; is < 10 ; is++ ) puts(".") ;
        for ( i = 0 ; i < u ; i++ ) puts(".") ;
    }
    return 0 ;
}
int main() { foo(3) ; puts(" ok") ;}
