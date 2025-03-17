





#include <stdio.h>

class X {
    protected:
        int x;
    public:
        X(int i) { x = i; }
        operator int();
};

X::operator int()
{
    int i = x;

    while( i >= 10 )
        i /= 10;
    return i;
}

class Y : public X {
    public:
        Y(int i) : X(i) { }
        operator char();
};

Y::operator char()
{
    char character[10] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

    return character[x%10];
}
int main()
{
    Y y1(1234);
    Y y2 = Y(350);
    Y y3 = Y(0);

    int ix = int(y1);    char iy = char(y1);
    int jx = (int)y2;    char jy = (char)y2;
    int kx = int(y3);    char ky = (char)y3;

    if( ix == 1 && jx == 3 && kx == 0 &&
        iy == '4' && jy == '0' && ky == '0' )
        printf("ok\n");
    else
        printf("ng\n");
}

