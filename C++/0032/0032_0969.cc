





#include <stdio.h>

class X {
    private:
        int x1;
        int x2;
    public:
        X() { }
        X(int i, int j) : x1(i), x2(j) { }
        int operator&&(int);
        int operator||(int);
        int operator,(int);
        int operator->*(int);
        int val1() { return x1; }
        int val2() { return x2; }
        int *pval1() { return &x1; }
        int *pval2() { return &x2; }
};

int X::operator&&(int i)
{
    return val1() && val2() && i;
}

int X::operator||(int i)
{
    return val1() || val2() || i;
}

int X::operator,(int i)
{
    return val1() + val2() + i;
}

int X::operator->*(int i)
{
    switch( i )
    {
    case 1 : return val1();
    case 2 : return val2();
    default: return 0;
    }
}

int operator&&(X xobj1, X xobj2)
{
    return xobj1.val1() && xobj1.val2() && xobj2.val1() && xobj2.val2();
}

int operator||(X xobj1, X xobj2)
{
    return xobj1.val1() || xobj1.val2() || xobj2.val1() || xobj2.val2();
}

int operator,(X xobj1, X xobj2)
{
    return xobj1.val1() + xobj1.val2() + xobj2.val1() + xobj2.val2();
}

int operator->*(X xobj, int *p)
{
    if( xobj.val1() == *p )
        return *p;
    if( xobj.val2() == *p )
        return *p;
    return 0;
}
int main()
{
    int i = 0;
    int *pi = &i;
    X xobj1(2,3), xobj2(5,0), xobj3(0,8), xobj4(0,0), xobj5(5,5), xobj6(0,0);

    if( xobj1.operator&&(10) ) i++;
    if( xobj1.operator&&( 0) ) ; else i++;
    if( xobj2.operator&&(10) ) ; else i++;
    if( xobj3.operator&&(10) ) ; else i++;
    if( xobj4.operator&&(10) ) ; else i++;
    if( xobj1.operator||(10) ) i++;
    if( xobj2.operator||(10) ) i++;
    if( xobj3.operator||(10) ) i++;
    if( xobj4.operator||(10) ) i++;
    if( xobj4.operator||( 0) ) ; else i++;
    if( (xobj1.operator,(5)) == 10 ) i++;
    if( xobj2.operator->*(1) == 5 ) i++;
    if( xobj3.operator->*(2) == 8 ) i++;
    if( xobj4.operator->*(3) == 0 ) i++ ;
    
    if( operator&&(xobj1,xobj5) ) i++;
    if( operator&&(xobj2,xobj3) ) ; else i++;
    if( operator||(xobj4,xobj5) ) i++;
    if( operator||(xobj4,xobj6) ) ; else i++; 
    if( operator,(xobj1,xobj2) == 10 ) i++;
    if( operator->*(xobj1,xobj1.pval1()) == 2 ) i++; 
    if( operator->*(xobj1,xobj1.pval2()) == 3 ) i++;
    if( operator->*(xobj1,pi) == 0 ) i++;

    if( i == 22 )
        printf("ok\n");
    else
        printf("ng\n");
}
