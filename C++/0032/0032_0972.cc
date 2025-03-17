





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i, int j) : x1(i), x2(j) { }
        X operator=(int);
        X operator=(X);
        X operator+=(int);
        X operator+=(X);
        X operator-=(int);
        X operator-=(X);
        X operator*=(int);
        X operator*=(X);
        X operator/=(int);
        X operator/=(X);
        X operator%=(int);
        X operator%=(X);
        void set(int i, int j) { x1 = i; x2 = j; }
        int val1() { return x1; }
        int val2() { return x2; }
};

X X::operator=(int i)
{
    set(i,i);
    return *this;
}

X X::operator=(X xobj)
{
    set(xobj.val1(),xobj.val2());
    return *this;
}

X X::operator+=(int i)
{
    set(val1()+i,val2()+i);
    return *this;
}

X X::operator+=(X xobj)
{
    set(val1()+xobj.val1(),val2()+xobj.val2());
    return *this;
}

X X::operator-=(int i)
{
    set(val1()-i,val2()-i);
    return *this;
}

X X::operator-=(X xobj)
{
    set(val1()-xobj.val1(),val2()-xobj.val2());
    return *this;
}

X X::operator*=(int i)
{
    set(val1()*i,val2()*i);
    return *this;
}

X X::operator*=(X xobj)
{
    set(val1()*xobj.val1(),val2()*xobj.val2());
    return *this;
}

X X::operator/=(int i)
{
    set(val1()/i,val2()/i);
    return *this;
}

X X::operator/=(X xobj)
{
    set(val1()/xobj.val1(),val2()/xobj.val2());
    return *this;
}

X X::operator%=(int i)
{
    set(val1()%i,val2()%i);
    return *this;
}

X X::operator%=(X xobj)
{
    set(val1()%xobj.val1(),val2()%xobj.val2());
    return *this;
}
int main()
{
    int i = 0;
    X xobj1,xobj2,xobj3,xobj4(2,3),xobj5(10,20),xobj6(25,43);

    xobj1.operator=(3);
    xobj2.operator=(2);    xobj2.operator+=(4);
    xobj3.operator=(10);   xobj3.operator-=(4);
    xobj4.operator*=(5);
    xobj5.operator/=(3);
    xobj6.operator%=(4);

    X xobj7,xobj8,xobj9,xobj10,xobj11,xobj12;

    xobj7.operator=(xobj1);
    xobj8.operator=(xobj2);    xobj8.operator+=(xobj4);
    xobj9.operator=(xobj3);    xobj9.operator-=(xobj5);
    xobj10.operator=(xobj4);   xobj10.operator*=(xobj6);
    xobj11.operator=(xobj4);   xobj11.operator/=(xobj5);
    xobj12.operator=(xobj3);   xobj12.operator%=(xobj6);

    if( xobj1.val1() == 3 && xobj1.val2() == 3 &&
        xobj2.val1() == 6 && xobj2.val2() == 6 &&
        xobj3.val1() == 6 && xobj3.val2() == 6 &&
        xobj4.val1() == 10 && xobj4.val2() == 15 &&
        xobj5.val1() == 3 && xobj5.val2() == 6 &&
        xobj6.val1() == 1 && xobj6.val2() == 3 &&
        xobj7.val1() == 3 && xobj7.val2() == 3 &&
        xobj8.val1() == 16 && xobj8.val2() == 21 &&
        xobj9.val1() == 3 && xobj9.val2() == 0 &&
        xobj10.val1() == 10 && xobj10.val2() == 45 &&
        xobj11.val1() == 3 && xobj11.val2() == 2 &&
        xobj12.val1() == 0 && xobj12.val2() == 0 )
        printf("ok\n");
    else
        printf("ng\n");
}
