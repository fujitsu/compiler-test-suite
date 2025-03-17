





#include <stdio.h>
#include <string.h>

class X {
    private:
        char *str;
        int   size;
    public:
        X(const char *);
        ~X() { delete str; }
        char &operator[](int);
        char *strp() { return str; }
        int len() { return size; }
};

X::X(const char *s)
{
    size = strlen(s) + 1;
    str = new char[size];
    memset(str,0,size);
    strcpy(str,s);
}

char zero = 0;

char &X::operator[](int i)
{
    if( i <= size )
        return *(str+i);
    else
        return zero;
}

class Y : public X {
    public:
        Y(const char *s) : X(s) { }
};

class Z : public Y {
    public:
        Z(const char *s) : Y(s) { }
};

int funcy()
{
    Y yobj1 = "a";
    Y yobj2 = "abc";
    Y yobj3 = "12345";
    Y yobj4 = "c-plusplus";
    char c1,c2;

    c1 = yobj1[3];
    c2 = yobj2[2];
    yobj3[0] = yobj3[4];
    yobj3[1] = yobj3[3];
    yobj3[3] = '2';
    yobj3[4] = '1';

    for( int i=6 ; i<10 ; i++ )
        yobj4[i] = 0;

    if( yobj1.len() == 2 && yobj2.len() == 4 &&
        yobj3.len() == 6 && yobj4.len() == 11 &&
        c1 == 0 && c2 == 'c' &&
        !strcmp(yobj3.strp(), "54321") &&
        !strcmp(yobj4.strp(), "c-plus") )
        return 1;
    else
        return 0;
}

int funcz()
{
    Z zobj1 = "a";
    Z zobj2 = "abc";
    Z zobj3 = "12345";
    Z zobj4 = "c-plusplus";
    char c1,c2;

    c1 = zobj1[3];
    c2 = zobj2[2];
    zobj3[0] = zobj3[4];
    zobj3[1] = zobj3[3];
    zobj3[3] = '2';
    zobj3[4] = '1';

    for( int i=6 ; i<10 ; i++ )
        zobj4[i] = 0;

    if( zobj1.len() == 2 && zobj2.len() == 4 &&
        zobj3.len() == 6 && zobj4.len() == 11 &&
        c1 == 0 && c2 == 'c' &&
        !strcmp(zobj3.strp(), "54321") &&
        !strcmp(zobj4.strp(), "c-plus") )
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
