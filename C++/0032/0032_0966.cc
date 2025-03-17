





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

int operator==(X xobj1, X xobj2)
{
    return xobj1.val1() == xobj2.val1() && xobj1.val2() == xobj2.val2();
}

int operator!=(X xobj1, X xobj2)
{
    return xobj1.val1() != xobj2.val1() && xobj1.val2() != xobj2.val2();
}

int operator<(X xobj1, X xobj2)
{
    return xobj1.val1() < xobj2.val1() && xobj1.val2() < xobj2.val2();
}

int operator>(X xobj1, X xobj2)
{
    return xobj1.val1() > xobj2.val1() && xobj1.val2() > xobj2.val2();
}

int operator<=(X xobj1, X xobj2)
{
    return xobj1.val1() <= xobj2.val1() && xobj1.val2() <= xobj2.val2();
}

int operator>=(X xobj1, X xobj2)
{
    return xobj1.val1() >= xobj2.val1() && xobj1.val2() >= xobj2.val2();
}
int main()
{
    int i = 0;
    X xobj1(1,1), xobj2(1,2), xobj3(2,1), xobj4(2,2), xobj5(1,1);

    if( xobj1.operator==(1) ) i++;
    if( xobj2.operator==(2) ) ; else i++;
    if( xobj3.operator!=(3) ) i++;
    if( xobj4.operator!=(2) ) ; else i++;
    if( xobj2.operator<(5) )  i++;
    if( xobj3.operator<(0) )  ; else i++;
    if( xobj1.operator>(-3) ) i++;
    if( xobj4.operator>(2) )  ; else i++;
    if( xobj2.operator<=(2) ) i++;
    if( xobj4.operator<=(1) ) ; else i++;
    if( xobj3.operator>=(1) ) i++;
    if( xobj1.operator>=(3) ) ; else i++;

    if( operator==(xobj1,xobj5) ) i++;
    if( operator==(xobj2,xobj3) ) ; else i++;
    if( operator!=(xobj1,xobj4) ) i++;
    if( operator!=(xobj5,xobj1) ) ; else i++;
    if( operator<(xobj1,xobj4) )  i++;
    if( operator<(xobj4,xobj5) )  ; else i++;
    if( operator>(xobj4,xobj5) )  i++;
    if( operator>(xobj3,xobj2) )  ; else i++;
    if( operator<=(xobj1,xobj3) ) i++;
    if( operator<=(xobj2,xobj5) ) ; else i++;
    if( operator>=(xobj4,xobj2) ) i++;
    if( operator>=(xobj1,xobj3) ) ; else i++;

    if( i == 24 )
        printf("ok\n");
    else
        printf("ng\n");
}
