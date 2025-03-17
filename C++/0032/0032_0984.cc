
#include <stdio.h>

class X {
    private:
        int x;
    public:
        X(int i) : x(i) { }
        X *operator->();
        int val() { return x; }
};

X *X::operator->()
{
    x++;
    return this;
}    

class Y : public X {
    public:
        Y(int i) : X(i) { }
};

class Z : public Y {
    public:
        Z(int i) : Y(i) { }
};  
int main()
{
    Y yobj(1);
    Y &ryobj = yobj;
    Z zobj(2);
    Z &rzobj = zobj;

    if( yobj.val() == 1 && yobj->val() == 2 && ryobj->val() == 3 &&
        zobj.val() == 2 && zobj->val() == 3 && rzobj->val() == 4 )
        printf("ok\n");
    else
        printf("ng\n");
}
