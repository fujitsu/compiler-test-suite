#include <stdlib.h>

class Two {
private:
    int i, j, k;
public:
    static int count;
    Two( int ii, int jj ) { i = ii; j = jj; k = count++; };
    Two( void )           { i =  0; j =  0; k = count++; };
    int eye( void ) { return i; };
    int jay( void ) { return j; };
    int kay( void ) { return k; };
};

extern Two foo_2;
extern Two goo_2;
extern Two coo_2[];
extern Two koo_2[];

Two foo_2 __attribute__((init_priority(1005))) ( 5, 6 );

Two goo_2 __attribute__((init_priority(1007))) = Two( 7, 8 );

Two doo_2[ 3 ];

Two hoo_2[ 3 ] = {
    Two( 11, 12 ),
    Two( 13, 14 ),
    Two( 15, 16 )
};

Two coo_2[ 3 ] __attribute__((init_priority(1000)));

Two koo_2[ 3 ] __attribute__((init_priority(1000))) = {
    Two( 21, 22 ),
    Two( 23, 24 ),
    Two( 25, 26 )
};

Two xoo_2[ 3 ] __attribute__((init_priority(1100)));

Two zoo_2[ 3 ] __attribute__((init_priority(1100))) = {
    Two( 31, 32 ),
    Two( 33, 34 ),
    Two( 35, 36 )
};

int Two::count;

long x = 0;

#ifdef ORIGINAL
#define X( n ) \
  do { if ( x & (1L << (n)) ) return 1; else x |= (1L << (n)); } while (0)

#else
#define X( n ) \
  do { if ( x & (1L << (n)) ) return; else x |= (1L << (n)); } while (0)
#endif

#ifdef ORIGINAL
int main()
{

    X( coo[0].kay() );
    X( coo[1].kay() );
    X( coo[2].kay() );
    X( koo[0].kay() );
    X( koo[1].kay() );
    X( koo[2].kay() );
    if ( 0x3f != x ) abort ();

    X( foo.kay() );
    if ( 0x7f != x ) abort ();

    X( goo.kay() );
    if ( 0xff != x ) abort ();

    X( xoo[0].kay() );
    X( xoo[1].kay() );
    X( xoo[2].kay() );
    X( zoo[0].kay() );
    X( zoo[1].kay() );
    X( zoo[2].kay() );
    if ( 0x3fff != x ) abort ();

    X( doo[0].kay() );
    X( doo[1].kay() );
    X( doo[2].kay() );
    X( hoo[0].kay() );
    X( hoo[1].kay() );
    X( hoo[2].kay() );
    if ( 0xfffff != x ) abort ();

    exit (0);
}
#else
#include <cstdio>

void sub2()
{
    X( coo_2[0].kay() );
    X( coo_2[1].kay() );
    X( coo_2[2].kay() );
    X( koo_2[0].kay() );
    X( koo_2[1].kay() );
    X( koo_2[2].kay() );
    if ( 0x3f != x ) abort ();

    X( foo_2.kay() );
    if ( 0x7f != x ) abort ();

    X( goo_2.kay() );
    if ( 0xff != x ) abort ();

    X( xoo_2[0].kay() );
    X( xoo_2[1].kay() );
    X( xoo_2[2].kay() );
    X( zoo_2[0].kay() );
    X( zoo_2[1].kay() );
    X( zoo_2[2].kay() );
    if ( 0x3fff != x ) abort ();

    X( doo_2[0].kay() );
    X( doo_2[1].kay() );
    X( doo_2[2].kay() );
    X( hoo_2[0].kay() );
    X( hoo_2[1].kay() );
    X( hoo_2[2].kay() );
    if ( 0xfffff != x ) abort ();

    std::puts("sub2");
}
#endif
