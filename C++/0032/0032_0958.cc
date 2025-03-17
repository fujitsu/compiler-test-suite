





#include <stdio.h>

class X {
    private:
        int x;
        int y;
    public:
        X() { }
        X(int i, int j) : x(i), y(j) { }
        void set(int i, int j) { x = i; y = j; }
        int xval() { return x; }
        int yval() { return y; }
};

X operator+(X x)
{
    X xobj;
    xobj.set(+x.xval(),+x.yval());
    return xobj;
}

X operator-(X x)
{
    X xobj;
    xobj.set(-x.xval(),-x.yval());
    return xobj;
}

X operator~(X x)
{
    X xobj;
    xobj.set(~x.xval(),~x.yval());
    return xobj;
}

X operator!(X x)
{
    X xobj;
    xobj.set(!x.xval(),!x.yval());
    return xobj;
}
int main()
{
    X xobj1(5,-5);
    X xobj2 = operator+(xobj1);
    X xobj3 = operator-(xobj1);

    X xobj4(-1,0);
    X xobj5 = operator!(xobj4);
    X xobj6 = operator~(xobj4);

    if( xobj2.xval() == 5 && xobj2.yval() == -5 &&
        xobj3.xval() == -5 && xobj3.yval() == 5 &&
        xobj5.xval() == 0 && xobj5.yval() == 1 &&
        xobj6.xval() == 0 && xobj6.yval() == -1 )
        printf("ok\n");
    else
        printf("ng\n");
}
