





#include <stdio.h>

class X {
    private:
        int sum;
    public:
        int start, end;
        X() { start = 0; end = 0; sum = 0; }
        X operator()(int, int j );
        int val() { return sum; }
};

X X::operator()(int i, int j)
{
    start = j;
    end   = i;
    for( int k=j ; k<=i ; k++ )
        sum += k;
    return *this;
}

class Y : public X {
    public:
        Y() { }
};

class Z : public Y {
    public:
        Z() { }
};

int funcy()
{
    Y yobj1, yobj2, yobj3, yobj4;

    yobj1(10,1);
    yobj2(20,1);
    yobj3(30,21);
    yobj4(100,0);

    if( yobj1.start ==  1 && yobj1.end ==  10 && yobj1.val() ==   55 &&
        yobj2.start ==  1 && yobj2.end ==  20 && yobj2.val() ==  210 &&
        yobj3.start == 21 && yobj3.end ==  30 && yobj3.val() ==  255 &&
        yobj4.start ==  0 && yobj4.end == 100 && yobj4.val() == 5050 )
        return 1;
    else
        return 0;
}

int funcz()
{
    Z zobj1, zobj2, zobj3, zobj4;

    zobj1(10,1);
    zobj2(20,1);
    zobj3(30,21);
    zobj4(100,0);

    if( zobj1.start ==  1 && zobj1.end ==  10 && zobj1.val() ==   55 &&
        zobj2.start ==  1 && zobj2.end ==  20 && zobj2.val() ==  210 &&
        zobj3.start == 21 && zobj3.end ==  30 && zobj3.val() ==  255 &&
        zobj4.start ==  0 && zobj4.end == 100 && zobj4.val() == 5050 )
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
