





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i, int j) : x1(i), x2(j) { }
        int operator==(int);
        int operator!=(int);
        int operator<(int);
        int operator>(int);
        int operator<=(int);
        int operator>=(int);
	void set(int i, int j) { x1 = i; x2 = j; }
        int val1() { return x1; }
        int val2() { return x2; }
};

int X::operator==(int i)
{
    return val1() == i && val2() == i;
}

int X::operator!=(int i)
{
    return val1() != i && val2() != i;
}

int X::operator<(int i)
{
    return val1() < i && val2() < i;
}

int X::operator>(int i)
{
    return val1() > i && val2() > i;
}

int X::operator<=(int i)
{
    return val1() <= i && val2() <= i;
}

int X::operator>=(int i)
{
    return val1() >= i && val2() >= i;
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
    Y yobj1(1,1), yobj2(1,2), yobj3(2,1), yobj4(2,2), yobj5(1,1);

    if( yobj1 == 1 ) i++;
    if( yobj2 == 2 ) ; else i++;
    if( yobj3 != 3 ) i++;
    if( yobj4 != 2 ) ; else i++;
    if( yobj2 < 5 )  i++;
    if( yobj3 < 0 )  ; else i++;
    if( yobj1 > -3 ) i++;
    if( yobj4 > 2 )  ; else i++;
    if( yobj2 <= 2 ) i++;
    if( yobj4 <= 1 ) ; else i++;
    if( yobj3 >= 1 ) i++;
    if( yobj1 >= 3 ) ; else i++;

    if( i == 12 )
        return 1;
    else
        return 0;
}

int funcz()
{
    int i = 0;
    Z zobj1(1,1), zobj2(1,2), zobj3(2,1), zobj4(2,2), zobj5(1,1);

    if( zobj1 == 1 ) i++;
    if( zobj2 == 2 ) ; else i++;
    if( zobj3 != 3 ) i++;
    if( zobj4 != 2 ) ; else i++;
    if( zobj2 < 5 )  i++;
    if( zobj3 < 0 )  ; else i++;
    if( zobj1 > -3 ) i++;
    if( zobj4 > 2 )  ; else i++;
    if( zobj2 <= 2 ) i++;
    if( zobj4 <= 1 ) ; else i++;
    if( zobj3 >= 1 ) i++;
    if( zobj1 >= 3 ) ; else i++;

    if( i == 12 )
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
