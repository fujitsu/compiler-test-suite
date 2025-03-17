





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
int main()
{
    X xobj1 = "a";
    X xobj2 = "abc";
    X xobj3 = "12345";
    X xobj4 = "c-plusplus";
    char c1,c2;

    c1 = xobj1.operator[](3);
    c2 = xobj2.operator[](2);
    xobj3.operator[](0) = xobj3.operator[](4);
    xobj3.operator[](1) = xobj3.operator[](3);
    xobj3.operator[](3) = '2';
    xobj3.operator[](4) = '1';

    for( int i=6 ; i<10 ; i++ )
        xobj4.operator[](i) = 0;

    if( xobj1.len() == 2 && xobj2.len() == 4 &&
        xobj3.len() == 6 && xobj4.len() == 11 &&
        c1 == 0 && c2 == 'c' &&
        !strcmp(xobj3.strp(), "54321") &&
        !strcmp(xobj4.strp(), "c-plus") )
        printf("ok\n");
    else
        printf("ng\n");
}
