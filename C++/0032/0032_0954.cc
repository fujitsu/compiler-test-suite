





#include <stdio.h>

int x = 0;

int f(char c)         { x += c; return x; }
int f(int i)          { x += i; return x; }
int f(unsigned u)     { x += u; return x; }
int f(long l)         { x += (int)l; return x; }
int f(float f)        { x += (int)f; return x; }
int f(double d)       { x += (int)d; return x; }
int f(long double ld) { x += (int)ld; return x; }

int (*gc())(char)         { return &f; }
int (*gi())(int)          { return &f; }
int (*gu())(unsigned)     { return &f; }
int (*gl())(long)         { return &f; }
int (*gf())(float)        { return &f; }
int (*gd())(double)       { return &f; }
int (*gld())(long double) { return &f; }
int main()
{
    if( (gc())('1') == 49 )
        if( (gi())(2) == 51 )
            if( (gu())(3u) == 54 )
                if( (gl())(4L) == 58 )
                    if( (gf())(5.0f) == 63 )
                        if( (gd())(6.0) == 69 )
                            if( (gld())(7.0l) == 76 )
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
