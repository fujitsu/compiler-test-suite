





#include <stdio.h>

struct A {
  private:
    int                 i;    
  protected:
    signed int          si;          
  public:
    unsigned int        ui;             
  public:
    void                f_set(int);
    friend int          f_cmp(A&, A&);
};

void A::f_set( int x )
{
    i   = si   = ui   = x;      
}

int f_cmp( A &x, A &y )
{
    return x.i == y.i && x.si == y.si && x.ui == y.ui;
}
int main()
{
    A xobj, yobj;

    xobj.f_set('A');
    yobj.f_set('A');

    if( f_cmp( xobj, yobj ) )
        printf("ok\n");
    else
        printf("ng\n");
}
