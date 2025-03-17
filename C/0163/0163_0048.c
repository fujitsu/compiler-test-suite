#include <stdio.h>
#if defined(__GNUC__) && (defined(i386) || defined(__x86_64__))

void sub();
int main(){
        float a, b ;
        double c, d ;
        float f1[4]__attribute__((aligned(16))) ;
        double d1[2]__attribute__((aligned(16))) ;

        sub() ;

        asm("fst %0" :"=t"(b)) ;
        asm("fst %0" :"=t"(d)) ;

        asm("movups %%xmm0,(%0)" ::"r"(f1)) ;
        asm("movupd %%xmm1,(%0)" ::"r"(d1)) ;

        printf("%f\n",b) ;
        printf("%lf\n",d) ;
        printf("%f %f %f %f\n", f1[0], f1[1], f1[2], f1[3]) ;
        printf("%lf %lf\n", d1[0], d1[1]) ;
}

void sub(){
        float a = 6.0 ;
        double c = 9.0 ;
        float f1[4]__attribute__((aligned(16)))={1.0,2.0,3.0,4.0};
        double d1[2]__attribute__((aligned(16)))={10.0,20.0};

        asm("fld %0" :: "t"(c)) ;
        asm("fld %0" :: "t"(a)) ;

        asm("movups (%0),%%xmm0"::"r"(f1));
        asm("movupd (%0),%%xmm1"::"r"(d1));
}

#else
int main()
{
float b = 6.000000;
double d = 9.000000;
float f1[4] = { 0.000000, 2.531250, 0.000000, 0.000000 };
double d1[2] = { 10.000000, 20.000000 };

        printf("%f\n",b) ;
        printf("%lf\n",d) ;
        printf("%f %f %f %f\n", f1[0], f1[1], f1[2], f1[3]) ;
        printf("%lf %lf\n", d1[0], d1[1]) ;
}

#endif
