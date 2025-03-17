





#include <stdio.h>

union X {
    private:
        int x1, x2;
    public:
        X() { x1 = x2 = 0; }
        X(int i) { x1 = i; x2 = i+1; }
        X(int i, int j) { x1 = i; x2 = j; }
        int func() { return x1 + x2; }
        friend X mult(X, X);
};

X mult( X xobj1, X xobj2 )
{
    xobj1.x1 *= xobj2.x1;
    xobj1.x2 *= xobj2.x2;
    return xobj1;
}
int main()
{
    X a(5);
    X b = a;
    X c;
    X d(3,5);
    X e = X(2);
    X f = X(4,8);
    X g = mult(a,b);
    X h = 10;

    if( a.func() == 12 && b.func() == 12 && c.func() == 0 &&
        d.func() == 10 && e.func() == 6 && f.func() == 16 &&
        g.func() == 432 && h.func() == 22 )
        printf("ok\n");
    else
        printf("ng\n");
}
