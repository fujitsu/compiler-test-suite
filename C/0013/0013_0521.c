                                                             
#include <stdio.h>                                              

union BUID61JB03 {
	unsigned long long m1:61;
	unsigned char   :3;
} buid61jb03 = { 1 };

union BUID61JB05 {
	unsigned long long m1:61;
	unsigned char   :5;
} buid61jb05 = { 1 };

union BUID61JB00 {
	unsigned long long m1:61;
	unsigned char   :0;
} buid61jb00 = { 1 };

union BUID61JH03 {
	unsigned long long m1:61;
	unsigned short   :3;
} buid61jh03 = { 1 };

union BUID61JH13 {
	unsigned long long m1:61;
	unsigned short   :13;
} buid61jh13 = { 1 };

union BUID61JH00 {
	unsigned long long m1:61;
	unsigned short   :0;
} buid61jh00 = { 1 };

union BUID61JW03 {
	unsigned long long m1:61;
	unsigned long   :3;
} buid61jw03 = { 1 };

union BUID61JW29 {
	unsigned long long m1:61;
	unsigned long   :29;
} buid61jw29 = { 1 };

union BUID61JW00 {
	unsigned long long m1:61;
	unsigned long   :0;
} buid61jw00 = { 1 };

union BUID61JD03 {
	unsigned long long m1:61;
	unsigned long long   :3;
} buid61jd03 = { 1 };

union BUID61JD61 {
	unsigned long long m1:61;
	unsigned long long   :61;
} buid61jd61 = { 1 };

union BUID61JD00 {
	unsigned long long m1:61;
	unsigned long long   :0;
} buid61jd00 = { 1 };

int main() {

	printf("%llu\n", (unsigned long long)buid61jb03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jb05.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jb00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jh03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jh13.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jh00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jw03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jw29.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jw00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jd03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jd61.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)buid61jd00.m1);
	printf("\n");

	return 0;
}
