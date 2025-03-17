





#include <stdio.h>
#include <string.h>

class X {
    private:
        char data[10];
    public:
        X(char *s);
        operator char() { return *data; }
};

X::X(char *s)
{
    memset(data,0,10);
    if( strlen(s) >= 10 )
        memcpy(data,s,10);
    else
        strcpy(data,s);
}

char *sweets[4] = { "candy", "chocolate", "cookie", "cake" };
int main()
{
    X x1(sweets[0]);
    X x2(sweets[1]);
    X x3 = X(sweets[2]);
    X x4 = sweets[3];

    char c1 = (char)x1;
    char c2 = char(x2);
    char c3, c4;

    c3 = x3;
    c4 = x4;

    if( c1 == 'c' && c2 == 'c' && c3 == 'c' && c4 == 'c' )
        printf("ok\n");
    else
        printf("ng\n");
}    
