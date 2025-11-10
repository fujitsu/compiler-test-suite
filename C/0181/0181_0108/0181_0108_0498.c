
	
	
	

#include <stdio.h>                                              

union BUHB00JB03 {
	unsigned char m1;
	unsigned char   :3;
} buhb00jb03 = { 1 };

union BUHB00JB05 {
	unsigned char m1;
	unsigned char   :5;
} buhb00jb05 = { 1 };

union BUHB00JB00 {
	unsigned char m1;
	unsigned char   :0;
} buhb00jb00 = { 1 };

union BUHB00JH03 {
	unsigned char m1;
	unsigned short   :3;
} buhb00jh03 = { 1 };

union BUHB00JH13 {
	unsigned char m1;
	unsigned short   :13;
} buhb00jh13 = { 1 };

union BUHB00JH00 {
	unsigned char m1;
	unsigned short   :0;
} buhb00jh00 = { 1 };

union BUHB00JW03 {
	unsigned char m1;
	unsigned long   :3;
} buhb00jw03 = { 1 };

union BUHB00JW29 {
	unsigned char m1;
	unsigned long   :29;
} buhb00jw29 = { 1 };

union BUHB00JW00 {
	unsigned char m1;
	unsigned long   :0;
} buhb00jw00 = { 1 };

union BUHB00JD03 {
	unsigned char m1;
	unsigned long long   :3;
} buhb00jd03 = { 1 };

union BUHB00JD61 {
	unsigned char m1;
	unsigned long long   :61;
} buhb00jd61 = { 1 };

union BUHB00JD00 {
	unsigned char m1;
	unsigned long long   :0;
} buhb00jd00 = { 1 };

int lto_sub_513() {

	printf("%u\n"  , buhb00jb03.m1);
	printf("\n");

	printf("%u\n"  , buhb00jb05.m1);
	printf("\n");

	printf("%u\n"  , buhb00jb00.m1);
	printf("\n");

	printf("%u\n"  , buhb00jh03.m1);
	printf("\n");

	printf("%u\n"  , buhb00jh13.m1);
	printf("\n");

	printf("%u\n"  , buhb00jh00.m1);
	printf("\n");

	printf("%u\n"  , buhb00jw03.m1);
	printf("\n");

	printf("%u\n"  , buhb00jw29.m1);
	printf("\n");

	printf("%u\n"  , buhb00jw00.m1);
	printf("\n");

	printf("%u\n"  , buhb00jd03.m1);
	printf("\n");

	printf("%u\n"  , buhb00jd61.m1);
	printf("\n");

	printf("%u\n"  , buhb00jd00.m1);
	printf("\n");

	return 0;
}
