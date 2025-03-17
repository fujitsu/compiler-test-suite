





#include <stdio.h>

int a = 0, b = 0, c = 0, d = 0;

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i, int j) : x1(i), x2(j) { }
        X *operator&();
        X operator*();
        int val1() { return x1; }
        int val2() { return x2; }
};

X *X::operator&()
{
    a++;
    return this;
}

X X::operator*()
{
    b++;
    return *this;
}

class Y {
    private:
        int y1;
        int y2;
    public:
        Y() { }
        Y(int i, int j) : y1(i), y2(j) { }
        int val1() { return y1; }
        int val2() { return y2; }
};

Y g_yobj(3,3);

Y *operator&(Y yobj)
{
    Y *py = new Y(2,2);
    c += yobj.val1();
    c += yobj.val2();
    return py;
}

Y operator*(Y yobj)
{
    d += yobj.val1();
    d += yobj.val2();
    return g_yobj;
}

int func1()
{
    X xobj1(5,-5);
    X *px = &xobj1;
    X xobj2 = *xobj1;

    Y yobj1(2,2);
    Y *py = &yobj1;
    Y yobj2 = *yobj1;

    if( a == 1 && b == 1 && c == 4 && d == 4 &&
        px->val1() == 5 && px->val2() == -5 &&
        xobj2.val1() == 5 && xobj2.val2() == -5 &&
        py->val1() == 2 && py->val2() == 2 &&
        yobj2.val1() == 3 && yobj2.val2() == 3 )
        return 1;
    else
        return 0;
}

int func2()
{
    X xobj1(5,-5);
    X *px = xobj1.operator&();
    X xobj2 = xobj1.operator*();

    Y yobj1(4,8);
    Y *py = operator&(yobj1);
    Y yobj2 = operator*(yobj1);

    if( a == 2 && b == 2 && c == 16 && d == 16 &&
        px->val1() == 5 && px->val2() == -5 &&
        xobj2.val1() == 5 && xobj2.val2() == -5 &&
        py->val1() == 2 && py->val2() == 2 &&
        yobj2.val1() == 3 && yobj2.val2() == 3 )
        return 1;
    else
        return 0;
}
int main()
{
    if( func1() && func2() )
        printf("ok\n");
    else
        printf("ng\n");
}
