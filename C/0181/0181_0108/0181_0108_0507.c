
	
	
	

#include <stdio.h>                                              

union BUIH03JB03 {
	unsigned short m1:3;
	unsigned char   :3;
} buih03jb03 = { 1 };

union BUIH03JB05 {
	unsigned short m1:3;
	unsigned char   :5;
} buih03jb05 = { 1 };

union BUIH03JB00 {
	unsigned short m1:3;
	unsigned char   :0;
} buih03jb00 = { 1 };

union BUIH03JH03 {
	unsigned short m1:3;
	unsigned short   :3;
} buih03jh03 = { 1 };

union BUIH03JH13 {
	unsigned short m1:3;
	unsigned short   :13;
} buih03jh13 = { 1 };

union BUIH03JH00 {
	unsigned short m1:3;
	unsigned short   :0;
} buih03jh00 = { 1 };

union BUIH03JW03 {
	unsigned short m1:3;
	unsigned long   :3;
} buih03jw03 = { 1 };

union BUIH03JW29 {
	unsigned short m1:3;
	unsigned long   :29;
} buih03jw29 = { 1 };

union BUIH03JW00 {
	unsigned short m1:3;
	unsigned long   :0;
} buih03jw00 = { 1 };

union BUIH03JD03 {
	unsigned short m1:3;
	unsigned long long   :3;
} buih03jd03 = { 1 };

union BUIH03JD61 {
	unsigned short m1:3;
	unsigned long long   :61;
} buih03jd61 = { 1 };

union BUIH03JD00 {
	unsigned short m1:3;
	unsigned long long   :0;
} buih03jd00 = { 1 };

int lto_sub_522() {

	printf("%u\n"  , buih03jb03.m1);
	printf("\n");

	printf("%u\n"  , buih03jb05.m1);
	printf("\n");

	printf("%u\n"  , buih03jb00.m1);
	printf("\n");

	printf("%u\n"  , buih03jh03.m1);
	printf("\n");

	printf("%u\n"  , buih03jh13.m1);
	printf("\n");

	printf("%u\n"  , buih03jh00.m1);
	printf("\n");

	printf("%u\n"  , buih03jw03.m1);
	printf("\n");

	printf("%u\n"  , buih03jw29.m1);
	printf("\n");

	printf("%u\n"  , buih03jw00.m1);
	printf("\n");

	printf("%u\n"  , buih03jd03.m1);
	printf("\n");

	printf("%u\n"  , buih03jd61.m1);
	printf("\n");

	printf("%u\n"  , buih03jd00.m1);
	printf("\n");

	return 0;
}
