
	
	
	

#include <stdio.h>                                              

union BUHW00JB03 {
	unsigned long m1;
	unsigned char   :3;
} buhw00jb03 = { 1 };

union BUHW00JB05 {
	unsigned long m1;
	unsigned char   :5;
} buhw00jb05 = { 1 };

union BUHW00JB00 {
	unsigned long m1;
	unsigned char   :0;
} buhw00jb00 = { 1 };

union BUHW00JH03 {
	unsigned long m1;
	unsigned short   :3;
} buhw00jh03 = { 1 };

union BUHW00JH13 {
	unsigned long m1;
	unsigned short   :13;
} buhw00jh13 = { 1 };

union BUHW00JH00 {
	unsigned long m1;
	unsigned short   :0;
} buhw00jh00 = { 1 };

union BUHW00JW03 {
	unsigned long m1;
	unsigned long   :3;
} buhw00jw03 = { 1 };

union BUHW00JW29 {
	unsigned long m1;
	unsigned long   :29;
} buhw00jw29 = { 1 };

union BUHW00JW00 {
	unsigned long m1;
	unsigned long   :0;
} buhw00jw00 = { 1 };

union BUHW00JD03 {
	unsigned long m1;
	unsigned long long   :3;
} buhw00jd03 = { 1 };

union BUHW00JD61 {
	unsigned long m1;
	unsigned long long   :61;
} buhw00jd61 = { 1 };

union BUHW00JD00 {
	unsigned long m1;
	unsigned long long   :0;
} buhw00jd00 = { 1 };

int lto_sub_517() {

	printf("%lu\n" , buhw00jb03.m1);
	printf("\n");

	printf("%lu\n" , buhw00jb05.m1);
	printf("\n");

	printf("%lu\n" , buhw00jb00.m1);
	printf("\n");

	printf("%lu\n" , buhw00jh03.m1);
	printf("\n");

	printf("%lu\n" , buhw00jh13.m1);
	printf("\n");

	printf("%lu\n" , buhw00jh00.m1);
	printf("\n");

	printf("%lu\n" , buhw00jw03.m1);
	printf("\n");

	printf("%lu\n" , buhw00jw29.m1);
	printf("\n");

	printf("%lu\n" , buhw00jw00.m1);
	printf("\n");

	printf("%lu\n" , buhw00jd03.m1);
	printf("\n");

	printf("%lu\n" , buhw00jd61.m1);
	printf("\n");

	printf("%lu\n" , buhw00jd00.m1);
	printf("\n");

	return 0;
}
