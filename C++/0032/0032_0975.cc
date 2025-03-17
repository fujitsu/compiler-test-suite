





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

class Y : public X {
    public:
        Y() { }
        Y(int i, int j) : X(i,j) { }
        Y(X xobj) { set(xobj.val1(), xobj.val2()); }
        Y operator=(int);
        Y operator=(Y);
};

Y Y::operator=(int i)
{
    set(i,i);
    return *this;
}

Y Y::operator=(Y yobj)
{
    set(yobj.val1(), yobj.val2());
    return *this;
}

class Z : public Y {
    public:
        Z() { }
        Z(int i, int j) : Y(i,j) { }
        Z(X xobj) { set(xobj.val1(), xobj.val2()); }
        Z operator=(int);
        Z operator=(Z);
};

Z Z::operator=(int i)
{
    set(i,i);
    return *this;
}

Z Z::operator=(Z zobj)
{
    set(zobj.val1(), zobj.val2());
    return *this;
}

int funcy()
{
    int i = 0;
    Y yobj1,yobj2,yobj3,yobj4(2,3),yobj5(10,20),yobj6(25,43);

    yobj1 = 3;
    yobj2 = 2;    yobj2 += 4;
    yobj3 = 10;   yobj3 -= 4;
    yobj4 *= 5;
    yobj5 /= 3;
    yobj6 %= 4;

    Y yobj7,yobj8,yobj9,yobj10,yobj11,yobj12;

    yobj7 = yobj1;
    yobj8 = yobj2;    yobj8 += yobj4;
    yobj9 = yobj3;    yobj9 -= yobj5;
    yobj10 = yobj4;   yobj10 *= yobj6;
    yobj11 = yobj4;   yobj11 /= yobj5;
    yobj12 = yobj3;   yobj12 %= yobj6;

    if( yobj1.val1() == 3 && yobj1.val2() == 3 &&
        yobj2.val1() == 6 && yobj2.val2() == 6 &&
        yobj3.val1() == 6 && yobj3.val2() == 6 &&
        yobj4.val1() == 10 && yobj4.val2() == 15 &&
        yobj5.val1() == 3 && yobj5.val2() == 6 &&
        yobj6.val1() == 1 && yobj6.val2() == 3 &&
        yobj7.val1() == 3 && yobj7.val2() == 3 &&
        yobj8.val1() == 16 && yobj8.val2() == 21 &&
        yobj9.val1() == 3 && yobj9.val2() == 0 &&
        yobj10.val1() == 10 && yobj10.val2() == 45 &&
        yobj11.val1() == 3 && yobj11.val2() == 2 &&
        yobj12.val1() == 0 && yobj12.val2() == 0 )
        return 1;
    else
        return 0;
}

int funcz()
{
    int i = 0;
    Z zobj1,zobj2,zobj3,zobj4(2,3),zobj5(10,20),zobj6(25,43);

    zobj1 = 3;
    zobj2 = 2;    zobj2 += 4;
    zobj3 = 10;   zobj3 -= 4;
    zobj4 *= 5;
    zobj5 /= 3;
    zobj6 %= 4;

    Z zobj7,zobj8,zobj9,zobj10,zobj11,zobj12;

    zobj7 = zobj1;
    zobj8 = zobj2;    zobj8 += zobj4;
    zobj9 = zobj3;    zobj9 -= zobj5;
    zobj10 = zobj4;   zobj10 *= zobj6;
    zobj11 = zobj4;   zobj11 /= zobj5;
    zobj12 = zobj3;   zobj12 %= zobj6;

    if( zobj1.val1() == 3 && zobj1.val2() == 3 &&
        zobj2.val1() == 6 && zobj2.val2() == 6 &&
        zobj3.val1() == 6 && zobj3.val2() == 6 &&
        zobj4.val1() == 10 && zobj4.val2() == 15 &&
        zobj5.val1() == 3 && zobj5.val2() == 6 &&
        zobj6.val1() == 1 && zobj6.val2() == 3 &&
        zobj7.val1() == 3 && zobj7.val2() == 3 &&
        zobj8.val1() == 16 && zobj8.val2() == 21 &&
        zobj9.val1() == 3 && zobj9.val2() == 0 &&
        zobj10.val1() == 10 && zobj10.val2() == 45 &&
        zobj11.val1() == 3 && zobj11.val2() == 2 &&
        zobj12.val1() == 0 && zobj12.val2() == 0 )
        return 1;
    else
        return 0;
}
int main()
{
    if( funcy() && funcz() )
        printf("ok\n");
    else
        printf("ng\n");
}
