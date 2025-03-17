





#include <stdio.h>

int x = 0;

int f(char c)         { x += c; return x; }
int f(int i)          { x += i; return x; }
int f(unsigned u)     { x += u; return x; }
int f(long l)         { x += (int)l; return x; }
int f(float f)        { x += (int)f; return x; }
int f(double d)       { x += (int)d; return x; }
int f(long double ld) { x += (int)ld; return x; }

int gc(int(*pf)(char))         { return pf('1'); }
int gi(int(*pf)(int))          { return pf(2); }  
int gu(int(*pf)(unsigned))     { return pf(3u); } 
int gl(int(*pf)(long))         { return pf(4L); } 
int gf(int(*pf)(float))        { return pf(5.0f); } 
int gd(int(*pf)(double))       { return pf(6.0); } 
int gld(int(*pf)(long double)) { return pf(7.0l); } 
int main()
{
    if( gc(&f) == 49 )
        if( gi(&f) == 51 )
            if( gu(&f) == 54 )
                if( gl(&f) == 58 )
                    if( gf(&f) == 63 )
                        if( gd(&f) == 69 )
                            if( gld(&f) == 76 )
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
