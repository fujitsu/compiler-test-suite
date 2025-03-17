





#include <stdio.h>

union A {
    char  c;
    int   i;
    float f;
    A() { i = 0; }
    ~A() { }
    int func(char);
    int func(int);
    int func(float);
};

int A::func(char x) { return !( c == x ); }
int A::func(int x) { return !( i == x ); }
int A::func(float x) { return !( f == x ); }
int main()
{
    A aobj;

    aobj.c = 'a';

    for( int i=0 ; i<3 ; i++ )
    {
        switch( i )
        {   
            case 0 : if( aobj.func('a') ) break;
                     aobj.i = 100;
                     continue;
            case 1 : if( aobj.func(100) ) break;
                     aobj.f = 1.0f;
                     continue;
 	    case 2 : if( aobj.func(1.0f) ) break;
                     aobj.i = 0;
                     continue;
	    default: break;
        }
        printf("ng\n");
    }
    printf("ok\n");
}
