





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

X operator+(X xobj1, X xobj2)
{
    X xobj;
    xobj.set(xobj1.val1() + xobj2.val1(),xobj1.val2() + xobj2.val2());
    return xobj;
}

X operator-(X xobj1, X xobj2)
{
    X xobj;
    xobj.set(xobj1.val1() - xobj2.val1(),xobj1.val2() - xobj2.val2());
    return xobj;
}

X operator*(X xobj1, X xobj2)
{
    X xobj;
    xobj.set(xobj1.val1() * xobj2.val1(),xobj1.val2() * xobj2.val2());
    return xobj;
}

X operator/(X xobj1, X xobj2)
{
    X xobj;
    xobj.set(xobj1.val1() / xobj2.val1(),xobj1.val2() / xobj2.val2());
    return xobj;
}

X operator%(X xobj1, X xobj2)
{
    X xobj;
    xobj.set(xobj1.val1() % xobj2.val1(),xobj1.val2() % xobj2.val2());
    return xobj;
}
int main()
{
    X xobj1(2,4);
    X xobj2 = xobj1 + 3;
    X xobj3 = xobj1 - 2;
    X xobj4 = xobj2 * 3;
    X xobj5 = xobj4 / 4;
    X xobj6 = xobj2 % 3;

    X xobj7 = xobj5 + xobj6;
    X xobj8 = xobj2 + xobj1 - xobj7;
    X xobj9 = xobj4 - xobj1 * xobj3;
    X xobj10 = xobj9 / xobj5 * xobj6;
    X xobj11 = xobj10 % xobj8 - xobj3;

    if( xobj2.val1() == 5 && xobj2.val2() == 7 &&
        xobj3.val1() == 0 && xobj3.val2() == 2 &&
        xobj4.val1() == 15 && xobj4.val2() == 21 &&
        xobj5.val1() == 3 && xobj5.val2() == 5 &&
        xobj6.val1() == 2 && xobj6.val2() == 1 &&
        xobj7.val1() == 5 && xobj7.val2() == 6 &&
        xobj8.val1() == 2 && xobj8.val2() == 5 &&
        xobj9.val1() == 15 && xobj9.val2() == 13 &&
        xobj10.val1() == 10 && xobj10.val2() == 2 &&
        xobj11.val1() == 0 && xobj11.val2() == 0 )
        printf("ok\n");
    else
        printf("ng\n");
}
