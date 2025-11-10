
	
	
	

#include <stdio.h>                                              

union BUIH13JB03 {
	unsigned short m1:13;
	unsigned char   :3;
} buih13jb03 = { 1 };

union BUIH13JB05 {
	unsigned short m1:13;
	unsigned char   :5;
} buih13jb05 = { 1 };

union BUIH13JB00 {
	unsigned short m1:13;
	unsigned char   :0;
} buih13jb00 = { 1 };

union BUIH13JH03 {
	unsigned short m1:13;
	unsigned short   :3;
} buih13jh03 = { 1 };

union BUIH13JH13 {
	unsigned short m1:13;
	unsigned short   :13;
} buih13jh13 = { 1 };

union BUIH13JH00 {
	unsigned short m1:13;
	unsigned short   :0;
} buih13jh00 = { 1 };

union BUIH13JW03 {
	unsigned short m1:13;
	unsigned long   :3;
} buih13jw03 = { 1 };

union BUIH13JW29 {
	unsigned short m1:13;
	unsigned long   :29;
} buih13jw29 = { 1 };

union BUIH13JW00 {
	unsigned short m1:13;
	unsigned long   :0;
} buih13jw00 = { 1 };

union BUIH13JD03 {
	unsigned short m1:13;
	unsigned long long   :3;
} buih13jd03 = { 1 };

union BUIH13JD61 {
	unsigned short m1:13;
	unsigned long long   :61;
} buih13jd61 = { 1 };

union BUIH13JD00 {
	unsigned short m1:13;
	unsigned long long   :0;
} buih13jd00 = { 1 };

int lto_sub_523() {

	printf("%u\n"  , buih13jb03.m1);
	printf("\n");

	printf("%u\n"  , buih13jb05.m1);
	printf("\n");

	printf("%u\n"  , buih13jb00.m1);
	printf("\n");

	printf("%u\n"  , buih13jh03.m1);
	printf("\n");

	printf("%u\n"  , buih13jh13.m1);
	printf("\n");

	printf("%u\n"  , buih13jh00.m1);
	printf("\n");

	printf("%u\n"  , buih13jw03.m1);
	printf("\n");

	printf("%u\n"  , buih13jw29.m1);
	printf("\n");

	printf("%u\n"  , buih13jw00.m1);
	printf("\n");

	printf("%u\n"  , buih13jd03.m1);
	printf("\n");

	printf("%u\n"  , buih13jd61.m1);
	printf("\n");

	printf("%u\n"  , buih13jd00.m1);
	printf("\n");

	return 0;
}
