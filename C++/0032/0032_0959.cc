





#include <stdio.h>

class X {
    private:
        int x;
        int y;
    public:
        X() { }
        X(int i, int j) : x(i), y(j) { }
        X operator+();
        X operator-();
        X operator~();
        X operator!();
        void set(int i, int j) { x = i; y = j; }
        int xval() { return x; }
        int yval() { return y; }
};

X X::operator+()
{
    X xobj;
    xobj.x = +x;
    xobj.y = +y;
    return xobj;
}

X X::operator-()
{
    X xobj;
    xobj.x = -x;
    xobj.y = -y;
    return xobj;
}

X X::operator~()
{
    X xobj;
    xobj.x = ~x;
    xobj.y = ~y;
    return xobj;
}

X X::operator!()
{
    X xobj;
    xobj.x = !x;
    xobj.y = !y;
    return xobj;
}

class Y : public X {
    public:
        Y() { }
        Y(X xobj) { set(xobj.xval(), xobj.yval()); }
        Y(int i, int j) : X(i,j) { }
};

class Z : public Y {
    public:
        Z() { }
        Z(X xobj) { set(xobj.xval(), xobj.yval()); }
        Z(int i, int j) : Y(i,j) { }
};

int funcy()
{
    Y yobj1(5,-5);
    Y yobj2 = +yobj1;
    Y yobj3 = -yobj1;

    Y yobj4(-1,0);
    Y yobj5 = !yobj4;
    Y yobj6 = ~yobj4;

    if( yobj2.xval() == 5 && yobj2.yval() == -5 &&
        yobj3.xval() == -5 && yobj3.yval() == 5 &&
        yobj5.xval() == 0 && yobj5.yval() == 1 &&
        yobj6.xval() == 0 && yobj6.yval() == -1)
        return 1;
    else
        return 0;
}

int funcz()
{
    Z zobj1(5,-5);
    Z zobj2 = +zobj1;
    Z zobj3 = -zobj1;

    Z zobj4(-1,0);
    Z zobj5 = !zobj4;
    Z zobj6 = ~zobj4;

    if( zobj2.xval() == 5 && zobj2.yval() == -5 &&
        zobj3.xval() == -5 && zobj3.yval() == 5 &&
        zobj5.xval() == 0 && zobj5.yval() == 1 &&
        zobj6.xval() == 0 && zobj6.yval() == -1)
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
