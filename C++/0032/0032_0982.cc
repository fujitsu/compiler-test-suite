





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
int main()
{
    X xobj(1);
    X &rxobj = xobj;

    if( xobj.val() == 1 && xobj->val() == 2 && rxobj->val() == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
