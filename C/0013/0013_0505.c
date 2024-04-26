                                                             
#include <stdio.h>                                              

struct BSIB03JB03 {
	unsigned char m1:3;
	unsigned char   :3;
} bsib03jb03 = { 1 };

struct BSIB03JB05 {
	unsigned char m1:3;
	unsigned char   :5;
} bsib03jb05 = { 1 };

struct BSIB03JB00 {
	unsigned char m1:3;
	unsigned char   :0;
} bsib03jb00 = { 1 };

struct BSIB03JH03 {
	unsigned char m1:3;
	unsigned short   :3;
} bsib03jh03 = { 1 };

struct BSIB03JH13 {
	unsigned char m1:3;
	unsigned short   :13;
} bsib03jh13 = { 1 };

struct BSIB03JH00 {
	unsigned char m1:3;
	unsigned short   :0;
} bsib03jh00 = { 1 };

struct BSIB03JW03 {
	unsigned char m1:3;
	unsigned long   :3;
} bsib03jw03 = { 1 };

struct BSIB03JW29 {
	unsigned char m1:3;
	unsigned long   :29;
} bsib03jw29 = { 1 };

struct BSIB03JW00 {
	unsigned char m1:3;
	unsigned long   :0;
} bsib03jw00 = { 1 };

struct BSIB03JD03 {
	unsigned char m1:3;
	unsigned long long   :3;
} bsib03jd03 = { 1 };

struct BSIB03JD61 {
	unsigned char m1:3;
	unsigned long long   :61;
} bsib03jd61 = { 1 };

struct BSIB03JD00 {
	unsigned char m1:3;
	unsigned long long   :0;
} bsib03jd00 = { 1 };

int main() {

	printf("%u\n"  , bsib03jb03.m1);
	printf("\n");

	printf("%u\n"  , bsib03jb05.m1);
	printf("\n");

	printf("%u\n"  , bsib03jb00.m1);
	printf("\n");

	printf("%u\n"  , bsib03jh03.m1);
	printf("\n");

	printf("%u\n"  , bsib03jh13.m1);
	printf("\n");

	printf("%u\n"  , bsib03jh00.m1);
	printf("\n");

	printf("%u\n"  , bsib03jw03.m1);
	printf("\n");

	printf("%u\n"  , bsib03jw29.m1);
	printf("\n");

	printf("%u\n"  , bsib03jw00.m1);
	printf("\n");

	printf("%u\n"  , bsib03jd03.m1);
	printf("\n");

	printf("%u\n"  , bsib03jd61.m1);
	printf("\n");

	printf("%u\n"  , bsib03jd00.m1);
	printf("\n");

	return 0;
}
