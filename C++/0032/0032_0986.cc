





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
int main()
{
    X xobj1(1,4), xobj2(2,2), xobj3(10,10), xobj4(5,3);

    if( xobj1.operator++().val1() == 2 && xobj1.val2() == 6 &&
        xobj2.operator++(0).val1() == 5 && xobj2.val2() == 6 &&
        xobj2.operator++(3).val1() == 11 && xobj2.val2() == 13 &&
        xobj3.operator--().val1() == 9 && xobj3.val2() == 8 &&
        xobj4.operator--(0).val1() == 2 && xobj4.val2() == -1 &&
        xobj3.operator--(3).val1() == 3 && xobj3.val2() == 1 )
        printf("ok\n");
    else
        printf("ng\n");
}    
