





#include <stdio.h>

int a = 0, b = 0;

enum EN { en0, en1 } en = en1;
enum { em0, em1 };

void f(int);
void f(EN);
int main()
{
    f(0);
    
    if( a == 1 && b == 0 )
        f(en0);
    
    if( a == 1 && b == 1 )
        f(en1 + 2);
    
    if( a == 5 && b == 1 )
        f( en );

    if( a == 5 && b == 3 )
        f( em0 );

    if( a == 6 && b == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}

void f(int i) { a++; a += i; }

void f(EN en) { b++; b += en; }
