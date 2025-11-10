
	
	
	

#include <stdio.h>                                              

struct BSIB05JB03 {
	unsigned char m1:5;
	unsigned char   :3;
} bsib05jb03 = { 1 };

struct BSIB05JB05 {
	unsigned char m1:5;
	unsigned char   :5;
} bsib05jb05 = { 1 };

struct BSIB05JB00 {
	unsigned char m1:5;
	unsigned char   :0;
} bsib05jb00 = { 1 };

struct BSIB05JH03 {
	unsigned char m1:5;
	unsigned short   :3;
} bsib05jh03 = { 1 };

struct BSIB05JH13 {
	unsigned char m1:5;
	unsigned short   :13;
} bsib05jh13 = { 1 };

struct BSIB05JH00 {
	unsigned char m1:5;
	unsigned short   :0;
} bsib05jh00 = { 1 };

struct BSIB05JW03 {
	unsigned char m1:5;
	unsigned long   :3;
} bsib05jw03 = { 1 };

struct BSIB05JW29 {
	unsigned char m1:5;
	unsigned long   :29;
} bsib05jw29 = { 1 };

struct BSIB05JW00 {
	unsigned char m1:5;
	unsigned long   :0;
} bsib05jw00 = { 1 };

struct BSIB05JD03 {
	unsigned char m1:5;
	unsigned long long   :3;
} bsib05jd03 = { 1 };

struct BSIB05JD61 {
	unsigned char m1:5;
	unsigned long long   :61;
} bsib05jd61 = { 1 };

struct BSIB05JD00 {
	unsigned char m1:5;
	unsigned long long   :0;
} bsib05jd00 = { 1 };

int lto_sub_506() {

	printf("%u\n"  , bsib05jb03.m1);
	printf("\n");

	printf("%u\n"  , bsib05jb05.m1);
	printf("\n");

	printf("%u\n"  , bsib05jb00.m1);
	printf("\n");

	printf("%u\n"  , bsib05jh03.m1);
	printf("\n");

	printf("%u\n"  , bsib05jh13.m1);
	printf("\n");

	printf("%u\n"  , bsib05jh00.m1);
	printf("\n");

	printf("%u\n"  , bsib05jw03.m1);
	printf("\n");

	printf("%u\n"  , bsib05jw29.m1);
	printf("\n");

	printf("%u\n"  , bsib05jw00.m1);
	printf("\n");

	printf("%u\n"  , bsib05jd03.m1);
	printf("\n");

	printf("%u\n"  , bsib05jd61.m1);
	printf("\n");

	printf("%u\n"  , bsib05jd00.m1);
	printf("\n");

	return 0;
}
