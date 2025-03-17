





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i, int j) : x1(i), x2(j) { }
        int operator&&(int);
        int operator||(int);
        int operator,(int);
        int operator->*(int);
        void set(int i, int j) { x1 = i; x2 = j; }
        int val1() { return x1; }
        int val2() { return x2; }
};

int X::operator&&(int i)
{
    return val1() && val2() && i;
}

int X::operator||(int i)
{
    return val1() || val2() || i;
}

int X::operator,(int i)
{
    return val1() + val2() + i;
}

int X::operator->*(int i)
{
    switch( i )
    {
    case 1 : return val1();
    case 2 : return val2();
    default: return 0;
    }
}

class Y : public X {
    public:
        Y() { }
        Y(int i, int j) : X(i,j) { }
        Y(X xobj) { set(xobj.val1(), xobj.val2()); }
};

class Z : public Y {
    public:
        Z() { }
        Z(int i, int j) : Y(i,j) { }
        Z(X xobj) { set(xobj.val1(), xobj.val2()); }
};

int funcy()
{
    int i = 0;
    Y yobj1(2,3), yobj2(5,0), yobj3(0,8), yobj4(0,0);

    if( yobj1 && 10 ) i++;
    if( yobj1 &&  0 ) ; else i++;
    if( yobj2 && 10 ) ; else i++;
    if( yobj3 && 10 ) ; else i++;
    if( yobj4 && 10 ) ; else i++;
    if( yobj1 || 10 ) i++;
    if( yobj2 || 10 ) i++;
    if( yobj3 || 10 ) i++;
    if( yobj4 || 10 ) i++;
    if( yobj4 ||  0 ) ; else i++;
    if( (yobj1,5) == 10 ) i++;
    if( yobj2->*1 == 5 ) i++;
    if( yobj3->*2 == 8 ) i++;
    if( yobj4->*3 == 0 ) i++ ;
    
    if( i == 14 )
        return 1;
    else
        return 0;
}

int funcz()
{
    int i = 0;
    Z zobj1(2,3), zobj2(5,0), zobj3(0,8), zobj4(0,0);

    if( zobj1 && 10 ) i++;
    if( zobj1 &&  0 ) ; else i++;
    if( zobj2 && 10 ) ; else i++;
    if( zobj3 && 10 ) ; else i++;
    if( zobj4 && 10 ) ; else i++;
    if( zobj1 || 10 ) i++;
    if( zobj2 || 10 ) i++;
    if( zobj3 || 10 ) i++;
    if( zobj4 || 10 ) i++;
    if( zobj4 ||  0 ) ; else i++;
    if( (zobj1,5) == 10 ) i++;
    if( zobj2->*1 == 5 ) i++;
    if( zobj3->*2 == 8 ) i++;
    if( zobj4->*3 == 0 ) i++ ;
    
    if( i == 14 )
        return 1;
    else
        return 0;
}
int main()
{
    if( funcy() && funcz() )
        printf("ok\n");
    else
        printf("ng\n");
}
