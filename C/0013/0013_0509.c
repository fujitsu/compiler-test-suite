                                                             
#include <stdio.h>                                              

struct BSIH03JB03 {
	unsigned short m1:3;
	unsigned char   :3;
} bsih03jb03 = { 1 };

struct BSIH03JB05 {
	unsigned short m1:3;
	unsigned char   :5;
} bsih03jb05 = { 1 };

struct BSIH03JB00 {
	unsigned short m1:3;
	unsigned char   :0;
} bsih03jb00 = { 1 };

struct BSIH03JH03 {
	unsigned short m1:3;
	unsigned short   :3;
} bsih03jh03 = { 1 };

struct BSIH03JH13 {
	unsigned short m1:3;
	unsigned short   :13;
} bsih03jh13 = { 1 };

struct BSIH03JH00 {
	unsigned short m1:3;
	unsigned short   :0;
} bsih03jh00 = { 1 };

struct BSIH03JW03 {
	unsigned short m1:3;
	unsigned long   :3;
} bsih03jw03 = { 1 };

struct BSIH03JW29 {
	unsigned short m1:3;
	unsigned long   :29;
} bsih03jw29 = { 1 };

struct BSIH03JW00 {
	unsigned short m1:3;
	unsigned long   :0;
} bsih03jw00 = { 1 };

struct BSIH03JD03 {
	unsigned short m1:3;
	unsigned long long   :3;
} bsih03jd03 = { 1 };

struct BSIH03JD61 {
	unsigned short m1:3;
	unsigned long long   :61;
} bsih03jd61 = { 1 };

struct BSIH03JD00 {
	unsigned short m1:3;
	unsigned long long   :0;
} bsih03jd00 = { 1 };

int main() {

	printf("%u\n"  , bsih03jb03.m1);
	printf("\n");

	printf("%u\n"  , bsih03jb05.m1);
	printf("\n");

	printf("%u\n"  , bsih03jb00.m1);
	printf("\n");

	printf("%u\n"  , bsih03jh03.m1);
	printf("\n");

	printf("%u\n"  , bsih03jh13.m1);
	printf("\n");

	printf("%u\n"  , bsih03jh00.m1);
	printf("\n");

	printf("%u\n"  , bsih03jw03.m1);
	printf("\n");

	printf("%u\n"  , bsih03jw29.m1);
	printf("\n");

	printf("%u\n"  , bsih03jw00.m1);
	printf("\n");

	printf("%u\n"  , bsih03jd03.m1);
	printf("\n");

	printf("%u\n"  , bsih03jd61.m1);
	printf("\n");

	printf("%u\n"  , bsih03jd00.m1);
	printf("\n");

	return 0;
}
