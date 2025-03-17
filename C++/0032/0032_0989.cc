





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

    if( operator++(xobj1).val1() == 2 && operator++(xobj1).val2() == 6 &&
        operator++(xobj2,0).val1() == 5 && operator++(xobj2,0).val2() == 6 &&
        operator++(xobj2,3).val1() == 8 && operator++(xobj2,3).val2() == 9 &&
        operator--(xobj3).val1() == 9 && operator--(xobj3).val2() == 8 &&
        operator--(xobj4,0).val1() == 2 && operator--(xobj4,0).val2() == -1 &&
        operator--(xobj3,3).val1() == 4 && operator--(xobj3,3).val2() == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}    
