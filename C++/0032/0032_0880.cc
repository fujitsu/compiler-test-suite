





#include <stdio.h>

class X {
    private:
        int x;
    public:
        X(int i) { x = i; }
        operator int() { return x; }
};

class Y {
    private:
        int y1, y2;
    public:
        Y(int i, int j) { y1 = i; y2 = j; }
        operator X() { X xobj(y1 + y2); return xobj; }
};

class Z {
    private:
        int z1, z2, z3, z4;
    public:
        Z(int i, int j, int k, int l) { z1 = i; z2 = j; z3 = k; z4 = l; }
        operator Y();
};

Z::operator Y()
{
    Y yobj(z1 + z3, z2 + z4);
    return yobj;
}
int main()
{
    X xobj = X(10);
    Y yobj = Y(2,3);
    Z zobj = Z(1,3,5,7);

    int i = xobj;
    int j = X(yobj);
    int k = X(Y(zobj));

    if( i == 10 && j == 5 && k == 16 )
        printf("ok\n");
    else
        printf("ng\n");
}
