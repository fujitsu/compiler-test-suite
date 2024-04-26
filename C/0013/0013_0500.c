                                                             
#include <stdio.h>                                              

struct BSHB00JB03 {
	unsigned char m1;
	unsigned char   :3;
} bshb00jb03 = { 1 };

struct BSHB00JB05 {
	unsigned char m1;
	unsigned char   :5;
} bshb00jb05 = { 1 };

struct BSHB00JB00 {
	unsigned char m1;
	unsigned char   :0;
} bshb00jb00 = { 1 };

struct BSHB00JH03 {
	unsigned char m1;
	unsigned short   :3;
} bshb00jh03 = { 1 };

struct BSHB00JH13 {
	unsigned char m1;
	unsigned short   :13;
} bshb00jh13 = { 1 };

struct BSHB00JH00 {
	unsigned char m1;
	unsigned short   :0;
} bshb00jh00 = { 1 };

struct BSHB00JW03 {
	unsigned char m1;
	unsigned long   :3;
} bshb00jw03 = { 1 };

struct BSHB00JW29 {
	unsigned char m1;
	unsigned long   :29;
} bshb00jw29 = { 1 };

struct BSHB00JW00 {
	unsigned char m1;
	unsigned long   :0;
} bshb00jw00 = { 1 };

struct BSHB00JD03 {
	unsigned char m1;
	unsigned long long   :3;
} bshb00jd03 = { 1 };

struct BSHB00JD61 {
	unsigned char m1;
	unsigned long long   :61;
} bshb00jd61 = { 1 };

struct BSHB00JD00 {
	unsigned char m1;
	unsigned long long   :0;
} bshb00jd00 = { 1 };

int main() {

	printf("%u\n"  , bshb00jb03.m1);
	printf("\n");

	printf("%u\n"  , bshb00jb05.m1);
	printf("\n");

	printf("%u\n"  , bshb00jb00.m1);
	printf("\n");

	printf("%u\n"  , bshb00jh03.m1);
	printf("\n");

	printf("%u\n"  , bshb00jh13.m1);
	printf("\n");

	printf("%u\n"  , bshb00jh00.m1);
	printf("\n");

	printf("%u\n"  , bshb00jw03.m1);
	printf("\n");

	printf("%u\n"  , bshb00jw29.m1);
	printf("\n");

	printf("%u\n"  , bshb00jw00.m1);
	printf("\n");

	printf("%u\n"  , bshb00jd03.m1);
	printf("\n");

	printf("%u\n"  , bshb00jd61.m1);
	printf("\n");

	printf("%u\n"  , bshb00jd00.m1);
	printf("\n");

	return 0;
}
