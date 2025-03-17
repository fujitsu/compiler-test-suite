





#include <stdio.h>

class A {
    float                     f;         
    double                    d;         
    long double               ld;        
    char                      array[10]; 
    int                      *p;         
    int             	     &r;         
  public:
    int                       i;
    A():r(i){ }
    void                      f_set(int);
    void                      f_set(float);
    void                      f_set(double);
    void                      f_set(long double);
    void                      f_set(int *);
    friend int                f_cmp(A&, A&);
};

void A::f_set( int x )
{
    for(int i=0; i<10 ; i++ )
        array[i] = x;
}

void A::f_set( float x )
{
    f = x;
}

void A::f_set( double x )
{
    d = x;
}

void A::f_set( long double x )
{
    ld = x;
}

void A::f_set( int *x )
{
    p = x;
}

int f_cmp( A &x, A &y )
{
    int i,j=0;
    for( i=0; i<10 ; i++ )
      if( x.array[i] == y.array[i] ) j++;
    return x.f == y.f && x.d == y.d && x.ld == y.ld &&
           j == 10 && x.p == y.p && x.r == y.r;
}

int g_i;
int main()
{
    A xobj, yobj;

    xobj.f_set(1.0f);
    xobj.f_set(1.0e-1);
    xobj.f_set(0.001L);
    xobj.f_set(3);
    xobj.f_set(&g_i);
    xobj.i = 10;

    yobj.f_set(0.1e+1f);
    yobj.f_set(0.1);
    yobj.f_set(1.0e-3L);
    yobj.f_set(3);
    yobj.f_set(&g_i);
    yobj.i = 10;

    if( f_cmp( xobj, yobj ) )
        printf("ok\n");
    else
        printf("ng\n");
}
