





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
        void set(int i, int j) { x1 = i; x2 = j; }
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

class Y : public X {
    public:
        Y() { }
        Y(X xobj) { set(xobj.val1(), xobj.val2()); }
        Y(int i, int j) : X(i,j) { }
};

class Z : public Y {
    public:
        Z() { }
        Z(X xobj) { set(xobj.val1(), xobj.val2()); }
        Z(int i, int j) : Y(i,j) { }
};

int funcy()
{
    Y yobj1(5,-5);
    Y *py = (Y*)&yobj1;
    Y yobj2 = *yobj1;

    if( a == 1 && b == 1 && 
        py->val1() == 5 && py->val2() == -5 &&
        yobj2.val1() == 5 && yobj2.val2() == -5 )
        return 1;
    else
        return 0;
}

int funcz()
{
    Z zobj1(2,-2);
    Z *pz = (Z*)&zobj1;
    Z zobj2 = *zobj1;

    if( a == 2 && b == 2 && 
        pz->val1() == 2 && pz->val2() == -2 &&
        zobj2.val1() == 2 && zobj2.val2() == -2 )
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
