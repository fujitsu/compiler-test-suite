
	
	
	

#include <stdio.h>                                              

struct BSIH13JB03 {
	unsigned short m1:13;
	unsigned char   :3;
} bsih13jb03 = { 1 };

struct BSIH13JB05 {
	unsigned short m1:13;
	unsigned char   :5;
} bsih13jb05 = { 1 };

struct BSIH13JB00 {
	unsigned short m1:13;
	unsigned char   :0;
} bsih13jb00 = { 1 };

struct BSIH13JH03 {
	unsigned short m1:13;
	unsigned short   :3;
} bsih13jh03 = { 1 };

struct BSIH13JH13 {
	unsigned short m1:13;
	unsigned short   :13;
} bsih13jh13 = { 1 };

struct BSIH13JH00 {
	unsigned short m1:13;
	unsigned short   :0;
} bsih13jh00 = { 1 };

struct BSIH13JW03 {
	unsigned short m1:13;
	unsigned long   :3;
} bsih13jw03 = { 1 };

struct BSIH13JW29 {
	unsigned short m1:13;
	unsigned long   :29;
} bsih13jw29 = { 1 };

struct BSIH13JW00 {
	unsigned short m1:13;
	unsigned long   :0;
} bsih13jw00 = { 1 };

struct BSIH13JD03 {
	unsigned short m1:13;
	unsigned long long   :3;
} bsih13jd03 = { 1 };

struct BSIH13JD61 {
	unsigned short m1:13;
	unsigned long long   :61;
} bsih13jd61 = { 1 };

struct BSIH13JD00 {
	unsigned short m1:13;
	unsigned long long   :0;
} bsih13jd00 = { 1 };

int lto_sub_510() {

	printf("%u\n"  , bsih13jb03.m1);
	printf("\n");

	printf("%u\n"  , bsih13jb05.m1);
	printf("\n");

	printf("%u\n"  , bsih13jb00.m1);
	printf("\n");

	printf("%u\n"  , bsih13jh03.m1);
	printf("\n");

	printf("%u\n"  , bsih13jh13.m1);
	printf("\n");

	printf("%u\n"  , bsih13jh00.m1);
	printf("\n");

	printf("%u\n"  , bsih13jw03.m1);
	printf("\n");

	printf("%u\n"  , bsih13jw29.m1);
	printf("\n");

	printf("%u\n"  , bsih13jw00.m1);
	printf("\n");

	printf("%u\n"  , bsih13jd03.m1);
	printf("\n");

	printf("%u\n"  , bsih13jd61.m1);
	printf("\n");

	printf("%u\n"  , bsih13jd00.m1);
	printf("\n");

	return 0;
}
