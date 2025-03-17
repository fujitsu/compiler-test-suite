





#include <stdio.h>

int a = 0, b = 0;

class X {
    private:
        int x;
    public:
        X(int i) : x(i) { }
        X(const X&xr) {x = xr.x; }
        void f() const { a += x; }
        void f() { x += 2; b += x; }
};

void func(const X cx, X x)
{
    cx.f();
    x.f();
}

int g(char *s)
{
    int i;
    for( i=0 ; *s++ ; i++ );
    return i;
}
int main()
{
    X xobj = X(10);
    const X cxobj(3);

    char *s = "abcde";
    char data[10];

    for( int i=0 ; i<10 ; i++ ) data[i] = i+1;
    data[9] = 0;

    func(cxobj, xobj);

    if( a == 3 && b == 12 && g( s ) == 5 && g( data ) == 9 )
        printf("ok\n");
    else
        printf("ng\n");
}
