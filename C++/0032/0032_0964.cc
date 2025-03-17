





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i, int j) : x1(i), x2(j) { }
        X operator+(int);
        X operator-(int);
        X operator*(int);
        X operator/(int);
        X operator%(int);
        void set(int i, int j) { x1 = i; x2 = j; }
        int val1() { return x1; }
        int val2() { return x2; }
};

X X::operator+(int i)
{
    X xobj;
    xobj.set(x1 + i, x2 + i);
    return xobj;
}

X X::operator-(int i)
{
    X xobj;
    xobj.set(x1 - i, x2 - i);
    return xobj;
}

X X::operator*(int i)
{
    X xobj;
    xobj.set(x1 * i, x2 * i);
    return xobj;
}

X X::operator/(int i)
{
    X xobj;
    xobj.set(x1 / i, x2 / i);
    return xobj;
}

X X::operator%(int i)
{
    X xobj;
    xobj.set(x1 % i, x2 % i);
    return xobj;
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
    Y yobj1(2,4);
    Y yobj2 = yobj1 + 3;
    Y yobj3 = yobj1 - 2;
    Y yobj4 = yobj2 * 3;
    Y yobj5 = yobj4 / 4;
    Y yobj6 = yobj2 % 3;

    if( yobj2.val1() == 5 && yobj2.val2() == 7 &&
        yobj3.val1() == 0 && yobj3.val2() == 2 &&
        yobj4.val1() == 15 && yobj4.val2() == 21 &&
        yobj5.val1() == 3 && yobj5.val2() == 5 &&
        yobj6.val1() == 2 && yobj6.val2() == 1 )
        return 1;
    else
        return 0;
}

int funcz()
{
    Z zobj1(2,4);
    Z zobj2 = zobj1 + 3;
    Z zobj3 = zobj1 - 2;
    Z zobj4 = zobj2 * 3;
    Z zobj5 = zobj4 / 4;
    Z zobj6 = zobj2 % 3;

    if( zobj2.val1() == 5 && zobj2.val2() == 7 &&
        zobj3.val1() == 0 && zobj3.val2() == 2 &&
        zobj4.val1() == 15 && zobj4.val2() == 21 &&
        zobj5.val1() == 3 && zobj5.val2() == 5 &&
        zobj6.val1() == 2 && zobj6.val2() == 1 )
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
