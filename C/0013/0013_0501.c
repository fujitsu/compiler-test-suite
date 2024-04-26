                                                             
#include <stdio.h>                                              

struct BSHD00JB03 {
	unsigned long long m1;
	unsigned char   :3;
} bshd00jb03 = { 1 };

struct BSHD00JB05 {
	unsigned long long m1;
	unsigned char   :5;
} bshd00jb05 = { 1 };

struct BSHD00JB00 {
	unsigned long long m1;
	unsigned char   :0;
} bshd00jb00 = { 1 };

struct BSHD00JH03 {
	unsigned long long m1;
	unsigned short   :3;
} bshd00jh03 = { 1 };

struct BSHD00JH13 {
	unsigned long long m1;
	unsigned short   :13;
} bshd00jh13 = { 1 };

struct BSHD00JH00 {
	unsigned long long m1;
	unsigned short   :0;
} bshd00jh00 = { 1 };

struct BSHD00JW03 {
	unsigned long long m1;
	unsigned long   :3;
} bshd00jw03 = { 1 };

struct BSHD00JW29 {
	unsigned long long m1;
	unsigned long   :29;
} bshd00jw29 = { 1 };

struct BSHD00JW00 {
	unsigned long long m1;
	unsigned long   :0;
} bshd00jw00 = { 1 };

struct BSHD00JD03 {
	unsigned long long m1;
	unsigned long long   :3;
} bshd00jd03 = { 1 };

struct BSHD00JD61 {
	unsigned long long m1;
	unsigned long long   :61;
} bshd00jd61 = { 1 };

struct BSHD00JD00 {
	unsigned long long m1;
	unsigned long long   :0;
} bshd00jd00 = { 1 };

int main() {

	printf("%llu\n", bshd00jb03.m1);
	printf("\n");

	printf("%llu\n", bshd00jb05.m1);
	printf("\n");

	printf("%llu\n", bshd00jb00.m1);
	printf("\n");

	printf("%llu\n", bshd00jh03.m1);
	printf("\n");

	printf("%llu\n", bshd00jh13.m1);
	printf("\n");

	printf("%llu\n", bshd00jh00.m1);
	printf("\n");

	printf("%llu\n", bshd00jw03.m1);
	printf("\n");

	printf("%llu\n", bshd00jw29.m1);
	printf("\n");

	printf("%llu\n", bshd00jw00.m1);
	printf("\n");

	printf("%llu\n", bshd00jd03.m1);
	printf("\n");

	printf("%llu\n", bshd00jd61.m1);
	printf("\n");

	printf("%llu\n", bshd00jd00.m1);
	printf("\n");

	return 0;
}
