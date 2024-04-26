                                                             
#include <stdio.h>                                              

struct BSID03JB03 {
	unsigned long long m1:3;
	unsigned char   :3;
} bsid03jb03 = { 1 };

struct BSID03JB05 {
	unsigned long long m1:3;
	unsigned char   :5;
} bsid03jb05 = { 1 };

struct BSID03JB00 {
	unsigned long long m1:3;
	unsigned char   :0;
} bsid03jb00 = { 1 };

struct BSID03JH03 {
	unsigned long long m1:3;
	unsigned short   :3;
} bsid03jh03 = { 1 };

struct BSID03JH13 {
	unsigned long long m1:3;
	unsigned short   :13;
} bsid03jh13 = { 1 };

struct BSID03JH00 {
	unsigned long long m1:3;
	unsigned short   :0;
} bsid03jh00 = { 1 };

struct BSID03JW03 {
	unsigned long long m1:3;
	unsigned long   :3;
} bsid03jw03 = { 1 };

struct BSID03JW29 {
	unsigned long long m1:3;
	unsigned long   :29;
} bsid03jw29 = { 1 };

struct BSID03JW00 {
	unsigned long long m1:3;
	unsigned long   :0;
} bsid03jw00 = { 1 };

struct BSID03JD03 {
	unsigned long long m1:3;
	unsigned long long   :3;
} bsid03jd03 = { 1 };

struct BSID03JD61 {
	unsigned long long m1:3;
	unsigned long long   :61;
} bsid03jd61 = { 1 };

struct BSID03JD00 {
	unsigned long long m1:3;
	unsigned long long   :0;
} bsid03jd00 = { 1 };

int main() {

	printf("%llu\n", (unsigned long long)bsid03jb03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jb05.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jb00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jh03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jh13.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jh00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jw03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jw29.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jw00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jd03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jd61.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid03jd00.m1);
	printf("\n");

	return 0;
}
