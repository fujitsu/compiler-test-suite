
	
	
	

#include <stdio.h>                                              

struct HSIW29JW03 {
	unsigned long m1:29;
	unsigned long   :3;
};

struct HSIW29JW03 hsiw29jw03_0[2] = {{ 1 },{ 2 }};
struct HSIW29JW03 hsiw29jw03_1[2] = {{ 1 }};

struct HSIW29JW29 {
	unsigned long m1:29;
	unsigned long   :29;
};

struct HSIW29JW29 hsiw29jw29_0[2] = {{ 1 },{ 2 }};
struct HSIW29JW29 hsiw29jw29_1[2] = {{ 1 }};

struct HSIW29JW00 {
	unsigned long m1:29;
	unsigned long   :0;
};

struct HSIW29JW00 hsiw29jw00_0[2] = {{ 1 },{ 2 }};
struct HSIW29JW00 hsiw29jw00_1[2] = {{ 1 }};

int lto_sub_661() {

	printf("%lu\n" , hsiw29jw03_0[0].m1);
	printf("%lu\n" , hsiw29jw03_0[1].m1);
	printf("\n");
	printf("%lu\n" , hsiw29jw03_1[0].m1);
	printf("\n");

	printf("%lu\n" , hsiw29jw29_0[0].m1);
	printf("%lu\n" , hsiw29jw29_0[1].m1);
	printf("\n");
	printf("%lu\n" , hsiw29jw29_1[0].m1);
	printf("\n");

	printf("%lu\n" , hsiw29jw00_0[0].m1);
	printf("%lu\n" , hsiw29jw00_0[1].m1);
	printf("\n");
	printf("%lu\n" , hsiw29jw00_1[0].m1);
	printf("\n");

	return 0;
}
