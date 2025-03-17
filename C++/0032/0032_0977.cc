





#include <stdio.h>

class X {
    private:
        int sum;
    public:
        int start, end;
        X() { start = 0; end = 0; sum = 0; }
        X operator()(int, int j);
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
int main()
{
    X xobj1, xobj2, xobj3, xobj4;

    xobj1.operator()(10,1);
    xobj2.operator()(20,1);
    xobj3.operator()(30,21);
    xobj4.operator()(100,0);

    if( xobj1.start ==  1 && xobj1.end ==  10 && xobj1.val() ==   55 &&
        xobj2.start ==  1 && xobj2.end ==  20 && xobj2.val() ==  210 &&
        xobj3.start == 21 && xobj3.end ==  30 && xobj3.val() ==  255 &&
        xobj4.start ==  0 && xobj4.end == 100 && xobj4.val() == 5050 )
        printf("ok\n");
    else
        printf("ng\n");
}  
