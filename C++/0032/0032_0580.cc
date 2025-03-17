





#include <stdio.h>

struct A {
    char                      c;    
    int                       i;    
    short int                 shi;   
    long int                  li;   
    long long int             lli;  
    signed char               sc;           
    signed int                si;           
    signed short int          sshi;          
    signed long int           sli;          
    signed long long int      slli;         
    unsigned char             uc;             
    unsigned int              ui;             
    unsigned short int        ushi;            
    unsigned long int         uli;            
    unsigned long long int    ulli;           
  public:
    void                      f_set(char);
    void                      f_set(int);
    void                      f_set(short);
    void                      f_set(long);
    void                      f_set(long long);
    friend int                f_cmp(A&, A&);
};

void A::f_set( char x )
{
    c   = sc   = uc   = x;          
}

void A::f_set( int x )
{
    i   = si   = ui   = x;      
}

void A::f_set( short x )
{
    shi  = sshi  = ushi  = x;        

}

void A::f_set( long int x )
{
    li  = sli  = uli  = x;
}

void A::f_set( long long int x )
{
    lli = slli = ulli = x;
}

int f_cmp( A &x, A &y )
{
    return x.c == y.c && x.sc == y.sc && x.uc == y.uc &&
           x.i == y.i && x.si == y.si && x.ui == y.ui &&
           x.shi == y.shi && x.sshi == y.sshi && x.ushi == y.ushi &&
           x.li == y.li && x.sli == y.sli && x.uli == y.uli &&
           x.lli == y.lli && x.slli == y.slli && x.ulli == y.ulli;
}
int main()
{
    A xobj, yobj;

    xobj.f_set('A');
    xobj.f_set( 1 );
    xobj.f_set( (short)2 );
    xobj.f_set( 3L );
    xobj.f_set( 4LL );

    yobj.f_set('A');
    yobj.f_set( 1 );
    yobj.f_set( (short)2 );
    yobj.f_set( 3L );
    yobj.f_set( 4LL );

    if( f_cmp( xobj, yobj ) )
        printf("ok\n");
    else
        printf("ng\n");
}
