                                                             
#include <stdio.h>                                              

union BUHD00JB03 {
	unsigned long long m1;
	unsigned char   :3;
} buhd00jb03 = { 1 };

union BUHD00JB05 {
	unsigned long long m1;
	unsigned char   :5;
} buhd00jb05 = { 1 };

union BUHD00JB00 {
	unsigned long long m1;
	unsigned char   :0;
} buhd00jb00 = { 1 };

union BUHD00JH03 {
	unsigned long long m1;
	unsigned short   :3;
} buhd00jh03 = { 1 };

union BUHD00JH13 {
	unsigned long long m1;
	unsigned short   :13;
} buhd00jh13 = { 1 };

union BUHD00JH00 {
	unsigned long long m1;
	unsigned short   :0;
} buhd00jh00 = { 1 };

union BUHD00JW03 {
	unsigned long long m1;
	unsigned long   :3;
} buhd00jw03 = { 1 };

union BUHD00JW29 {
	unsigned long long m1;
	unsigned long   :29;
} buhd00jw29 = { 1 };

union BUHD00JW00 {
	unsigned long long m1;
	unsigned long   :0;
} buhd00jw00 = { 1 };

union BUHD00JD03 {
	unsigned long long m1;
	unsigned long long   :3;
} buhd00jd03 = { 1 };

union BUHD00JD61 {
	unsigned long long m1;
	unsigned long long   :61;
} buhd00jd61 = { 1 };

union BUHD00JD00 {
	unsigned long long m1;
	unsigned long long   :0;
} buhd00jd00 = { 1 };

int main() {

	printf("%llu\n", buhd00jb03.m1);
	printf("\n");

	printf("%llu\n", buhd00jb05.m1);
	printf("\n");

	printf("%llu\n", buhd00jb00.m1);
	printf("\n");

	printf("%llu\n", buhd00jh03.m1);
	printf("\n");

	printf("%llu\n", buhd00jh13.m1);
	printf("\n");

	printf("%llu\n", buhd00jh00.m1);
	printf("\n");

	printf("%llu\n", buhd00jw03.m1);
	printf("\n");

	printf("%llu\n", buhd00jw29.m1);
	printf("\n");

	printf("%llu\n", buhd00jw00.m1);
	printf("\n");

	printf("%llu\n", buhd00jd03.m1);
	printf("\n");

	printf("%llu\n", buhd00jd61.m1);
	printf("\n");

	printf("%llu\n", buhd00jd00.m1);
	printf("\n");

	return 0;
}
