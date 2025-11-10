
	
	
	

#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

union BUHS00JB03 {
	struct TAGHB00 m1;
	unsigned char   :3;
} buhs00jb03 = { { 1 } };

union BUHS00JB05 {
	struct TAGHB00 m1;
	unsigned char   :5;
} buhs00jb05 = { { 1 } };

union BUHS00JB00 {
	struct TAGHB00 m1;
	unsigned char   :0;
} buhs00jb00 = { { 1 } };

union BUHS00JH03 {
	struct TAGHB00 m1;
	unsigned short   :3;
} buhs00jh03 = { { 1 } };

union BUHS00JH13 {
	struct TAGHB00 m1;
	unsigned short   :13;
} buhs00jh13 = { { 1 } };

union BUHS00JH00 {
	struct TAGHB00 m1;
	unsigned short   :0;
} buhs00jh00 = { { 1 } };

union BUHS00JW03 {
	struct TAGHB00 m1;
	unsigned long   :3;
} buhs00jw03 = { { 1 } };

union BUHS00JW29 {
	struct TAGHB00 m1;
	unsigned long   :29;
} buhs00jw29 = { { 1 } };

union BUHS00JW00 {
	struct TAGHB00 m1;
	unsigned long   :0;
} buhs00jw00 = { { 1 } };

union BUHS00JD03 {
	struct TAGHB00 m1;
	unsigned long long   :3;
} buhs00jd03 = { { 1 } };

union BUHS00JD61 {
	struct TAGHB00 m1;
	unsigned long long   :61;
} buhs00jd61 = { { 1 } };

union BUHS00JD00 {
	struct TAGHB00 m1;
	unsigned long long   :0;
} buhs00jd00 = { { 1 } };

int lto_sub_516() {

	printf("%u\n"  , buhs00jb03.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jb05.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jb00.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jh03.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jh13.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jh00.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jw03.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jw29.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jw00.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jd03.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jd61.m1.m1);
	printf("\n");

	printf("%u\n"  , buhs00jd00.m1.m1);
	printf("\n");

	return 0;
}
