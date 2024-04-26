                                                             
#include <stdio.h>                                              

struct BSID61JB03 {
	unsigned long long m1:61;
	unsigned char   :3;
} bsid61jb03 = { 1 };

struct BSID61JB05 {
	unsigned long long m1:61;
	unsigned char   :5;
} bsid61jb05 = { 1 };

struct BSID61JB00 {
	unsigned long long m1:61;
	unsigned char   :0;
} bsid61jb00 = { 1 };

struct BSID61JH03 {
	unsigned long long m1:61;
	unsigned short   :3;
} bsid61jh03 = { 1 };

struct BSID61JH13 {
	unsigned long long m1:61;
	unsigned short   :13;
} bsid61jh13 = { 1 };

struct BSID61JH00 {
	unsigned long long m1:61;
	unsigned short   :0;
} bsid61jh00 = { 1 };

struct BSID61JW03 {
	unsigned long long m1:61;
	unsigned long   :3;
} bsid61jw03 = { 1 };

struct BSID61JW29 {
	unsigned long long m1:61;
	unsigned long   :29;
} bsid61jw29 = { 1 };

struct BSID61JW00 {
	unsigned long long m1:61;
	unsigned long   :0;
} bsid61jw00 = { 1 };

struct BSID61JD03 {
	unsigned long long m1:61;
	unsigned long long   :3;
} bsid61jd03 = { 1 };

struct BSID61JD61 {
	unsigned long long m1:61;
	unsigned long long   :61;
} bsid61jd61 = { 1 };

struct BSID61JD00 {
	unsigned long long m1:61;
	unsigned long long   :0;
} bsid61jd00 = { 1 };

int main() {

	printf("%llu\n", (unsigned long long)bsid61jb03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jb05.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jb00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jh03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jh13.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jh00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jw03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jw29.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jw00.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jd03.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jd61.m1);
	printf("\n");

	printf("%llu\n", (unsigned long long)bsid61jd00.m1);
	printf("\n");

	return 0;
}
