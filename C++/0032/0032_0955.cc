





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
int main()
{
    X xobj1(5,-5);
    X xobj2 = +xobj1;
    X xobj3 = -xobj1;

    X xobj4(-1,0);
    X xobj5 = !xobj4;
    X xobj6 = ~xobj4;

    if( xobj2.xval() == 5 && xobj2.yval() == -5 &&
        xobj3.xval() == -5 && xobj3.yval() == 5 &&
        xobj5.xval() == 0 && xobj5.yval() == 1 &&
        xobj6.xval() == 0 && xobj6.yval() == -1)
        printf("ok\n");
    else
        printf("ng\n");
}
