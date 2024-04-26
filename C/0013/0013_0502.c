                                                             
#include <stdio.h>                                              

struct BSHH00JB03 {
	unsigned short m1;
	unsigned char   :3;
} bshh00jb03 = { 1 };

struct BSHH00JB05 {
	unsigned short m1;
	unsigned char   :5;
} bshh00jb05 = { 1 };

struct BSHH00JB00 {
	unsigned short m1;
	unsigned char   :0;
} bshh00jb00 = { 1 };

struct BSHH00JH03 {
	unsigned short m1;
	unsigned short   :3;
} bshh00jh03 = { 1 };

struct BSHH00JH13 {
	unsigned short m1;
	unsigned short   :13;
} bshh00jh13 = { 1 };

struct BSHH00JH00 {
	unsigned short m1;
	unsigned short   :0;
} bshh00jh00 = { 1 };

struct BSHH00JW03 {
	unsigned short m1;
	unsigned long   :3;
} bshh00jw03 = { 1 };

struct BSHH00JW29 {
	unsigned short m1;
	unsigned long   :29;
} bshh00jw29 = { 1 };

struct BSHH00JW00 {
	unsigned short m1;
	unsigned long   :0;
} bshh00jw00 = { 1 };

struct BSHH00JD03 {
	unsigned short m1;
	unsigned long long   :3;
} bshh00jd03 = { 1 };

struct BSHH00JD61 {
	unsigned short m1;
	unsigned long long   :61;
} bshh00jd61 = { 1 };

struct BSHH00JD00 {
	unsigned short m1;
	unsigned long long   :0;
} bshh00jd00 = { 1 };

int main() {

	printf("%u\n"  , bshh00jb03.m1);
	printf("\n");

	printf("%u\n"  , bshh00jb05.m1);
	printf("\n");

	printf("%u\n"  , bshh00jb00.m1);
	printf("\n");

	printf("%u\n"  , bshh00jh03.m1);
	printf("\n");

	printf("%u\n"  , bshh00jh13.m1);
	printf("\n");

	printf("%u\n"  , bshh00jh00.m1);
	printf("\n");

	printf("%u\n"  , bshh00jw03.m1);
	printf("\n");

	printf("%u\n"  , bshh00jw29.m1);
	printf("\n");

	printf("%u\n"  , bshh00jw00.m1);
	printf("\n");

	printf("%u\n"  , bshh00jd03.m1);
	printf("\n");

	printf("%u\n"  , bshh00jd61.m1);
	printf("\n");

	printf("%u\n"  , bshh00jd00.m1);
	printf("\n");

	return 0;
}
