





#include <stdio.h>

class X {
    private:
        int x;
    public:
        const int &rx;
        X(int i) : x(i), rx(x) { }
};

struct Y {
    private:
        int y;
    public:
        const int &ry;
        Y(int i) : ry(y) { y = i; }
};

X xobj1(3);
Y yobj1(5);
int main()
{
    X xobj2 = X(10);
    Y yobj2 = Y(7);
    X xobj3 = 1;
    Y yobj3 = 2;

    if( xobj1.rx == 3 && xobj2.rx == 10 && xobj3.rx == 1 &&
        yobj1.ry == 5 && yobj2.ry ==  7 && yobj3.ry == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}
   
