                                                          
#include <stdio.h>                                              

enum tag { num = 16 };

struct JSHB00HH00HW00HD00 {
	signed char        m01:5;
	signed char           :0;
	signed char        m03;
	signed short       m04:5;
	signed short          :0;
	signed short       m06;
	signed long        m07:5;
	signed long           :0;
	signed long        m09;
	signed int         m10:5;
	signed int            :0;
	signed int         m12;
	signed long long   m13:5;
	signed long long      :0;
	signed long long   m15;
	enum tag           m16;
	float              m17;
	int*               m18;
	double             m19;
	long double        m20;
} jshb00hh00hw00hd00
 = 
{
	-1,
	-3,
	-4,
	-6,
	-7,
	-9,
	-10l,
	-12l,
	-13ll,
	-15ll,
	num,
	1.7f,
	(int*)18,
	1.9,
	2.0l
};

int lto_sub_672() {

	printf("%d\n"  ,jshb00hh00hw00hd00.m01);
	printf("%d\n"  ,jshb00hh00hw00hd00.m03);
	printf("%d\n"  ,jshb00hh00hw00hd00.m04);
	printf("%d\n"  ,jshb00hh00hw00hd00.m06);
#ifndef _LP64
	printf("%ld\n" ,jshb00hh00hw00hd00.m07);
#else
	printf("%ld\n" ,(signed long)jshb00hh00hw00hd00.m07);
#endif
	printf("%ld\n" ,jshb00hh00hw00hd00.m09);
	printf("%d\n"  ,jshb00hh00hw00hd00.m10);
	printf("%d\n"  ,jshb00hh00hw00hd00.m12);
	printf("%lld\n",(long long)jshb00hh00hw00hd00.m13);
	printf("%lld\n",(long long)jshb00hh00hw00hd00.m15);
	printf("%d\n"  ,jshb00hh00hw00hd00.m16);
	printf("%e\n"  ,jshb00hh00hw00hd00.m17);
	printf("%u\n"  ,jshb00hh00hw00hd00.m18);
	printf("%e\n"  ,jshb00hh00hw00hd00.m19);
	printf("%Le\n" ,jshb00hh00hw00hd00.m20);
	printf("\n");

	return 0;
}
