                                                             
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct BSHS00JB03 {
	struct TAGHB00 m1;
	unsigned char   :3;
} bshs00jb03 = { { 1 } };

struct BSHS00JB05 {
	struct TAGHB00 m1;
	unsigned char   :5;
} bshs00jb05 = { { 1 } };

struct BSHS00JB00 {
	struct TAGHB00 m1;
	unsigned char   :0;
} bshs00jb00 = { { 1 } };

struct BSHS00JH03 {
	struct TAGHB00 m1;
	unsigned short   :3;
} bshs00jh03 = { { 1 } };

struct BSHS00JH13 {
	struct TAGHB00 m1;
	unsigned short   :13;
} bshs00jh13 = { { 1 } };

struct BSHS00JH00 {
	struct TAGHB00 m1;
	unsigned short   :0;
} bshs00jh00 = { { 1 } };

struct BSHS00JW03 {
	struct TAGHB00 m1;
	unsigned long   :3;
} bshs00jw03 = { { 1 } };

struct BSHS00JW29 {
	struct TAGHB00 m1;
	unsigned long   :29;
} bshs00jw29 = { { 1 } };

struct BSHS00JW00 {
	struct TAGHB00 m1;
	unsigned long   :0;
} bshs00jw00 = { { 1 } };

struct BSHS00JD03 {
	struct TAGHB00 m1;
	unsigned long long   :3;
} bshs00jd03 = { { 1 } };

struct BSHS00JD61 {
	struct TAGHB00 m1;
	unsigned long long   :61;
} bshs00jd61 = { { 1 } };

struct BSHS00JD00 {
	struct TAGHB00 m1;
	unsigned long long   :0;
} bshs00jd00 = { { 1 } };

int main() {

	printf("%u\n"  , bshs00jb03.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jb05.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jb00.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jh03.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jh13.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jh00.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jw03.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jw29.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jw00.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jd03.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jd61.m1.m1);
	printf("\n");

	printf("%u\n"  , bshs00jd00.m1.m1);
	printf("\n");

	return 0;
}
