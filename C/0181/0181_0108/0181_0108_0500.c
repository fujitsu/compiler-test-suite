
	
	
	

#include <stdio.h>                                              

union BUHH00JB03 {
	unsigned short m1;
	unsigned char   :3;
} buhh00jb03 = { 1 };

union BUHH00JB05 {
	unsigned short m1;
	unsigned char   :5;
} buhh00jb05 = { 1 };

union BUHH00JB00 {
	unsigned short m1;
	unsigned char   :0;
} buhh00jb00 = { 1 };

union BUHH00JH03 {
	unsigned short m1;
	unsigned short   :3;
} buhh00jh03 = { 1 };

union BUHH00JH13 {
	unsigned short m1;
	unsigned short   :13;
} buhh00jh13 = { 1 };

union BUHH00JH00 {
	unsigned short m1;
	unsigned short   :0;
} buhh00jh00 = { 1 };

union BUHH00JW03 {
	unsigned short m1;
	unsigned long   :3;
} buhh00jw03 = { 1 };

union BUHH00JW29 {
	unsigned short m1;
	unsigned long   :29;
} buhh00jw29 = { 1 };

union BUHH00JW00 {
	unsigned short m1;
	unsigned long   :0;
} buhh00jw00 = { 1 };

union BUHH00JD03 {
	unsigned short m1;
	unsigned long long   :3;
} buhh00jd03 = { 1 };

union BUHH00JD61 {
	unsigned short m1;
	unsigned long long   :61;
} buhh00jd61 = { 1 };

union BUHH00JD00 {
	unsigned short m1;
	unsigned long long   :0;
} buhh00jd00 = { 1 };

int lto_sub_515() {

	printf("%u\n"  , buhh00jb03.m1);
	printf("\n");

	printf("%u\n"  , buhh00jb05.m1);
	printf("\n");

	printf("%u\n"  , buhh00jb00.m1);
	printf("\n");

	printf("%u\n"  , buhh00jh03.m1);
	printf("\n");

	printf("%u\n"  , buhh00jh13.m1);
	printf("\n");

	printf("%u\n"  , buhh00jh00.m1);
	printf("\n");

	printf("%u\n"  , buhh00jw03.m1);
	printf("\n");

	printf("%u\n"  , buhh00jw29.m1);
	printf("\n");

	printf("%u\n"  , buhh00jw00.m1);
	printf("\n");

	printf("%u\n"  , buhh00jd03.m1);
	printf("\n");

	printf("%u\n"  , buhh00jd61.m1);
	printf("\n");

	printf("%u\n"  , buhh00jd00.m1);
	printf("\n");

	return 0;
}
