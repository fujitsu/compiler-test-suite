#include <stdio.h>
unsigned int    Y = 2;
unsigned int    Z = 5;
int main()
{
        if ( (-Y - -Z) != 3 ) puts("ng1-1") ;      
        if ( ((0-Y) - (0-Z)) !=3 ) puts("ng1-2") ; 
        if ( (-Y   +Z) != 3 ) puts("ng2-1") ; 
        if ( ((0-Y)   +Z) != 3 ) puts("ng2-2") ; 
        if ( -(Y- +Z) != 3 ) puts("ng3-1") ;
        if ( -(Y +(0-Z)) != 3 ) puts("ng3-2") ;
        if ( -(Y  -Z) != 3 ) puts("ng4-1") ;
        if ( -(Y -(0 - -Z)) != 3 ) puts("ng4-2") ;
        if ( -(-Z - -Y) != 3 ) puts("ng5-1") ;
        if ( -((0-Z) - (0-Y)) != 3 ) puts("ng5-2") ; 
	puts(" OK") ;
}
