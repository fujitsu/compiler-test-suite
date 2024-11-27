#include <stdio.h>
#include <stdarg.h>

void sub1(int,...);
void sub2(double,...);
#ifndef NO_LONG_DOUBLE
void sub3(long double,...);
#endif
void sub4(int*,...);
int b1=1, b2=2, b3=3, b4=4, b5=5, b6=6, b7=7, b8=8, b9=9,
b10=10, b11=11, b12=12, b13=13, b14=14, b15=15, b16=16, b17=17, b18=18, b19=19;
int main()
{
	sub1(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19);
	sub2( 1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,
	10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0
	);
#ifndef NO_LONG_DOUBLE
	sub3(
	1.0L,2.0L,3.0L,4.0L,5.0L,6.0L,7.0L,8.0L,9.0L,
	10.0L,11.0L,12.0L,13.0L,14.0L,15.0L,16.0L,17.0L,18.0L,19.0L
	);
#endif
	sub4(&b1,&b2,&b3,&b4,&b5,&b6,&b7,&b8,&b9,&b10,
	&b11,&b12,&b13,&b14,&b15,&b16,&b17,&b18,&b19);
}
void sub1(int a1,...)
{
	int a2,a3,a4,a5,a6,a7,a8,a9,a10,
	a11,a12,a13,a14,a15,a16,a17,a18,a19 ;

	va_list ap;
#ifndef OBE
	va_start(ap,&a1);
#else
	va_start(ap,a1);
#endif
	a2=va_arg(ap,int);
	a3=va_arg(ap,int);
	a4=va_arg(ap,int);
	a5=va_arg(ap,int);
	a6=va_arg(ap,int);
	a7=va_arg(ap,int);
	a8=va_arg(ap,int);
	a9=va_arg(ap,int);
	a10=va_arg(ap,int);
	a11=va_arg(ap,int);
	a12=va_arg(ap,int);
	a13=va_arg(ap,int);
	a14=va_arg(ap,int);
	a15=va_arg(ap,int);
	a16=va_arg(ap,int);
	a17=va_arg(ap,int);
	a18=va_arg(ap,int);
	a19=va_arg(ap,int);

	if(a1 == 1) printf("ok"); else printf("ng");
	if(a2 == 2) printf("ok"); else printf("ng");
	if(a3 == 3) printf("ok"); else printf("ng");
	if(a4 == 4) printf("ok"); else printf("ng");
	if(a5 == 5) printf("ok"); else printf("ng");
	if(a6 == 6) printf("ok"); else printf("ng");
	if(a7 == 7) printf("ok"); else printf("ng");
	if(a8 == 8) printf("ok"); else printf("ng");
	if(a9 == 9) printf("ok"); else printf("ng");

	if(a10 == 10) printf("ok"); else printf("ng");
	if(a11 == 11) printf("ok"); else printf("ng");
	if(a12 == 12) printf("ok"); else printf("ng");
	if(a13 == 13) printf("ok"); else printf("ng");
	if(a14 == 14) printf("ok"); else printf("ng");
	if(a15 == 15) printf("ok"); else printf("ng");
	if(a16 == 16) printf("ok"); else printf("ng");
	if(a17 == 17) printf("ok"); else printf("ng");
	if(a18 == 18) printf("ok"); else printf("ng");
	if(a19 == 19) printf("ok"); else printf("ng");
	printf("\n");
}
void sub2(double a1,...)
{
	double 
	a2,a3,a4,a5,a6,a7,a8,a9 ,
	a10,a11,a12,a13,a14,a15,a16,a17,a18,a19 ;

	va_list ap;
#ifndef OBE
	va_start(ap,&a1);
#else
	va_start(ap,a1);
#endif

	a2=va_arg(ap,double);
	a3=va_arg(ap,double);
	a4=va_arg(ap,double);
	a5=va_arg(ap,double);
	a6=va_arg(ap,double);
	a7=va_arg(ap,double);
	a8=va_arg(ap,double);
	a9=va_arg(ap,double);

	a10=va_arg(ap,double);
	a11=va_arg(ap,double);
	a12=va_arg(ap,double);
	a13=va_arg(ap,double);
	a14=va_arg(ap,double);
	a15=va_arg(ap,double);
	a16=va_arg(ap,double);
	a17=va_arg(ap,double);
	a18=va_arg(ap,double);
	a19=va_arg(ap,double);

	if(a1 == 1.0) printf("ok"); else printf("ng");
	if(a2 == 2.0) printf("ok"); else printf("ng");
	if(a3 == 3.0) printf("ok"); else printf("ng");
	if(a4 == 4.0) printf("ok"); else printf("ng");
	if(a5 == 5.0) printf("ok"); else printf("ng");
	if(a6 == 6.0) printf("ok"); else printf("ng");
	if(a7 == 7.0) printf("ok"); else printf("ng");
	if(a8 == 8.0) printf("ok"); else printf("ng");
	if(a9 == 9.0) printf("ok"); else printf("ng");
		
	if(a10 == 10.0) printf("ok"); else printf("ng");
	if(a11 == 11.0) printf("ok"); else printf("ng");
	if(a12 == 12.0) printf("ok"); else printf("ng");
	if(a13 == 13.0) printf("ok"); else printf("ng");
	if(a14 == 14.0) printf("ok"); else printf("ng");
	if(a15 == 15.0) printf("ok"); else printf("ng");
	if(a16 == 16.0) printf("ok"); else printf("ng");
	if(a17 == 17.0) printf("ok"); else printf("ng");
	if(a18 == 18.0) printf("ok"); else printf("ng");
	if(a19 == 19.0) printf("ok"); else printf("ng");
	printf("\n");
}
#ifndef NO_LONG_DOUBLE
void sub3(long double a1,...)
{
	long double 
	a2,a3,a4,a5,a6,a7,a8,a9 ,
	a10,a11,a12,a13,a14,a15,a16,a17,a18,a19 ;

	va_list ap;
#ifndef OBE
	va_start(ap,&a1);
#else
	va_start(ap,a1);
#endif
	a2=va_arg(ap,long double);
	a3=va_arg(ap,long double);
	a4=va_arg(ap,long double);
	a5=va_arg(ap,long double);
	a6=va_arg(ap,long double);
	a7=va_arg(ap,long double);
	a8=va_arg(ap,long double);
	a9=va_arg(ap,long double);

	a10=va_arg(ap,long double);
	a11=va_arg(ap,long double);
	a12=va_arg(ap,long double);
	a13=va_arg(ap,long double);
	a14=va_arg(ap,long double);
	a15=va_arg(ap,long double);
	a16=va_arg(ap,long double);
	a17=va_arg(ap,long double);
	a18=va_arg(ap,long double);
	a19=va_arg(ap,long double);

	if(a1 == 1.0L) printf("ok"); else printf("ng");
	if(a2 == 2.0L) printf("ok"); else printf("ng");
	if(a3 == 3.0L) printf("ok"); else printf("ng");
	if(a4 == 4.0L) printf("ok"); else printf("ng");
	if(a5 == 5.0L) printf("ok"); else printf("ng");
	if(a6 == 6.0L) printf("ok"); else printf("ng");
	if(a7 == 7.0L) printf("ok"); else printf("ng");
	if(a8 == 8.0L) printf("ok"); else printf("ng");
	if(a9 == 9.0L) printf("ok"); else printf("ng");

	if(a10 == 10.0L) printf("ok"); else printf("ng");
	if(a11 == 11.0L) printf("ok"); else printf("ng");
	if(a12 == 12.0L) printf("ok"); else printf("ng");
	if(a13 == 13.0L) printf("ok"); else printf("ng");
	if(a14 == 14.0L) printf("ok"); else printf("ng");
	if(a15 == 15.0L) printf("ok"); else printf("ng");
	if(a16 == 16.0L) printf("ok"); else printf("ng");
	if(a17 == 17.0L) printf("ok"); else printf("ng");
	if(a18 == 18.0L) printf("ok"); else printf("ng");
	if(a19 == 19.0L) printf("ok"); else printf("ng");
	printf("\n");

}
#endif
void sub4(int *a1,...)
{
	int *a2,*a3,*a4,*a5,*a6,*a7,*a8,*a9,*a10,
	*a11,*a12,*a13,*a14,*a15,*a16,*a17,*a18,*a19 ;

	va_list ap;
	va_start(ap,a1);
	a2=va_arg(ap,int*);
	a3=va_arg(ap,int*);
	a4=va_arg(ap,int*);
	a5=va_arg(ap,int*);
	a6=va_arg(ap,int*);
	a7=va_arg(ap,int*);
	a8=va_arg(ap,int*);
	a9=va_arg(ap,int*);
	a10=va_arg(ap,int*);
	a11=va_arg(ap,int*);
	a12=va_arg(ap,int*);
	a13=va_arg(ap,int*);
	a14=va_arg(ap,int*);
	a15=va_arg(ap,int*);
	a16=va_arg(ap,int*);
	a17=va_arg(ap,int*);
	a18=va_arg(ap,int*);
	a19=va_arg(ap,int*);

	if(*a1 == 1) printf("ok"); else printf("ng");
	if(*a2 == 2) printf("ok"); else printf("ng");
	if(*a3 == 3) printf("ok"); else printf("ng");
	if(*a4 == 4) printf("ok"); else printf("ng");
	if(*a5 == 5) printf("ok"); else printf("ng");
	if(*a6 == 6) printf("ok"); else printf("ng");
	if(*a7 == 7) printf("ok"); else printf("ng");
	if(*a8 == 8) printf("ok"); else printf("ng");
	if(*a9 == 9) printf("ok"); else printf("ng");

	if(*a10 == 10) printf("ok"); else printf("ng");
	if(*a11 == 11) printf("ok"); else printf("ng");
	if(*a12 == 12) printf("ok"); else printf("ng");
	if(*a13 == 13) printf("ok"); else printf("ng");
	if(*a14 == 14) printf("ok"); else printf("ng");
	if(*a15 == 15) printf("ok"); else printf("ng");
	if(*a16 == 16) printf("ok"); else printf("ng");
	if(*a17 == 17) printf("ok"); else printf("ng");
	if(*a18 == 18) printf("ok"); else printf("ng");
	if(*a19 == 19) printf("ok"); else printf("ng");
	printf("\n");
}
