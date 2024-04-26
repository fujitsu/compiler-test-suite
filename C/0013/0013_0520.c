                                                             
#include <stdio.h>                                              

union BUID03JB03 {
	unsigned long long m1:3;
	unsigned char   :3;
} buid03jb03 = { 1 };

union BUID03JB05 {
	unsigned long long m1:3;
	unsigned char   :5;
} buid03jb05 = { 1 };

union BUID03JB00 {
	unsigned long long m1:3;
	unsigned char   :0;
} buid03jb00 = { 1 };

union BUID03JH03 {
	unsigned long long m1:3;
	unsigned short   :3;
} buid03jh03 = { 1 };

union BUID03JH13 {
	unsigned long long m1:3;
	unsigned short   :13;
} buid03jh13 = { 1 };

union BUID03JH00 {
	unsigned long long m1:3;
	unsigned short   :0;
} buid03jh00 = { 1 };

union BUID03JW03 {
	unsigned long long m1:3;
	unsigned long   :3;
} buid03jw03 = { 1 };

union BUID03JW29 {
	unsigned long long m1:3;
	unsigned long   :29;
} buid03jw29 = { 1 };

union BUID03JW00 {
	unsigned long long m1:3;
	unsigned long   :0;
} buid03jw00 = { 1 };

union BUID03JD03 {
	unsigned long long m1:3;
	unsigned long long   :3;
} buid03jd03 = { 1 };

union BUID03JD61 {
	unsigned long long m1:3;
	unsigned long long   :61;
} buid03jd61 = { 1 };

union BUID03JD00 {
	unsigned long long m1:3;
	unsigned long long   :0;
} buid03jd00 = { 1 };

int main() {

	printf("%llu\n", (unsigned long long)buid03jb03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jb05.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jb00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jh03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jh13.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jh00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jw03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jw29.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jw00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jd03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jd61.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid03jd00.m1);
	printf("\n");

	return 0;
}
