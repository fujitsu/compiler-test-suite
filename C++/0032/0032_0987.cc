





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i,int j) : x1(i), x2(j) { }
        X operator++();
        X operator++(int);
        X operator--();
        X operator--(int);
        int val1() { return x1; }
        int val2() { return x2; }
};

X X::operator++()
{
    x1++;
    x2 += 2;
    return *this;
}

X X::operator++(int i)
{
    x1 += i+3;
    x2 += i+4;
    return *this;
}

X X::operator--()
{
    x1--;
    x2 -= 2;
    return *this;
}

X X::operator--(int i)
{
    x1 -= i+3;
    x2 -= i+4;
    return *this;
}

class Y : public X {
    public:
        Y(int i, int j) : X(i,j) { }
};

class Z : public Y {
    public:
        Z(int i, int j) : Y(i,j) { }
};

int funcy()
{
    Y yobj1(1,4), yobj2(2,2), yobj3(10,10), yobj4(5,3);

    if( (++yobj1).val1() == 2 && yobj1.val2() == 6 &&
        yobj2++.val1() == 5 && yobj2.val2() == 6 &&
        (--yobj3).val1() == 9 && yobj3.val2() == 8 &&
        yobj4--.val1() == 2 && yobj4.val2() == -1 )
        return 1;
    else
        return 0;
}

int funcz()
{
    Z zobj1(1,4), zobj2(2,2), zobj3(10,10), zobj4(5,3);

    if( (++zobj1).val1() == 2 && zobj1.val2() == 6 &&
        zobj2++.val1() == 5 && zobj2.val2() == 6 &&
        (--zobj3).val1() == 9 && zobj3.val2() == 8 &&
        zobj4--.val1() == 2 && zobj4.val2() == -1 )
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
