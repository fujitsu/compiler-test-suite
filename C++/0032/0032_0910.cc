





#include <stdio.h>

int x1 = 0;
int x2 = 0;
int y_1 = 0;  
int y2 = 0;

class X {
    private:
        int x;
    public:
        X(int i) { x = i; x1++; }
        X(const X&, int = 1);
};

X::X(const X &rx, int i)
{
    x =  rx.x + i;
    x2++;
}

class Y {
    private:
        int y;
    public:
        Y(int i) { y = i; y_1++; }
        Y& operator=(int);
}yy(0);

Y& Y::operator=(int i)
{
    y = i;
    y2++;
    return yy;
}
int main()
{
    X xobj1(1);
    X xobj2(xobj1,0);
    X xobj3 = xobj2;

    Y yobj1 = 1;
    Y yobj2 = yobj1;

    yobj1 = yobj2;
    yobj1 = 2;

    if( x1 == 1 && x2 == 2 && y_1 == 2 && y2 == 1 )
        printf("ok\n");
    else
        printf("ng %d %d %d %d \n", x1, x2, y_1, y2);
}
