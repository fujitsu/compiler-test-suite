





#include <stdio.h>

int x = 0;

int f(char c)         { x += c; return x; }
int f(int i)          { x += i; return x; }
int f(unsigned u)     { x += u; return x; }
int f(long l)         { x += (int)l; return x; }
int f(float f)        { x += (int)f; return x; }
int f(double d)       { x += (int)d; return x; }
int f(long double ld) { x += (int)ld; return x; }
int main()
{
    int (*pfc)(char)         = &f;
    int (*pfi)(int)          = &f;
    int (*pfu)(unsigned)     = &f;
    int (*pfl)(long)         = &f;
    int (*pff)(float)        = &f;
    int (*pfd)(double)       = &f;
    int (*pfld)(long double) = &f;

    if( pfc('1') == 49 )
        if( pfi(2) == 51 )
            if( pfu(3u) == 54 )
                if( pfl(4L) == 58 )
                    if( pff(5.0f) == 63 )
                        if( pfd(6.0) == 69 )
                            if( pfld(7.0l) == 76 )
                                printf("ok\n");
                            else
			        printf("ng long double\n");
                        else
			    printf("ng double\n");
                    else
             	        printf("ng float\n");
                else
                    printf("ng long\n");
            else
	        printf("ng unsigned\n");
        else
            printf("ng int\n");
    else
	printf("ng char\n");
}
