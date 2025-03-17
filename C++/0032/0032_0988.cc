





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i,int j) : x1(i), x2(j) { }
        int val1() { return x1; }
        int val2() { return x2; }
	void set(int i, int j) { x1 = i; x2 = j; }
};

X operator++(X xobj)
{
    xobj.set(xobj.val1()+1,xobj.val2()+2);
    return xobj;
}

X operator++(X xobj, int i)
{
    xobj.set(xobj.val1()+i+3,xobj.val2()+i+4);
    return xobj;
}

X operator--(X xobj)
{
    xobj.set(xobj.val1()-1,xobj.val2()-2);
    return xobj;
}

X operator--(X xobj, int i)
{
    xobj.set(xobj.val1()-i-3,xobj.val2()-i-4);
    return xobj;
}
int main()
{
    X xobj1(1,4), xobj2(2,2), xobj3(10,10), xobj4(5,3);

    if( (++xobj1).val1() == 2 && (++xobj1).val2() == 6 &&
        xobj2++.val1() == 5 && xobj2++.val2() == 6 &&
        (--xobj3).val1() == 9 && (--xobj3).val2() == 8 &&
        xobj4--.val1() == 2 && xobj4--.val2() == -1 )
        printf("ok\n");
    else
        printf("ng\n");
}    
