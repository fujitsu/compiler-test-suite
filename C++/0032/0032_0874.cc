





#include <stdio.h>
#include <string.h>

char *data[13] = { 0, "Junuary", "February", "March", "April", "May", "June",
           "July", "August", "September", "October", "November", "December" };

class X {
    private:
        int x;
        char month[10];
    public:
        X(int i);
        X(const char *, int);
        int f(void);
};

X::X(int i)
{
    x = i;
    memset(month,0,10);
    strcpy(month,data[i]);
}

X::X(const char *s, int i=0)
{
    memset(month,0,10);
    strcpy(month,s);
    x = i;
    if( !x )
        for( int j=1 ; j<13 ; j++ )
             if( !strcmp(s,data[j]) )
             {
                 x = j; break;
             }
}

int X::f(void)
{
    return !strcmp(data[x],month);
}
int main()
{
    X x1(1);
    X x2 = X(2);
    X x3 = 3;
    X x4("August",8);
    X x5 = X("October",10);
    X x6 = "December";

    if( x1.f() && x2.f() && x3.f() && x4.f() && x5.f() && x6.f() )
        printf("ok\n");
    else
        printf("ng\n");
} 
