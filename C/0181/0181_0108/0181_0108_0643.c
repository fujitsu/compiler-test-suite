
	
	
	

#include <stdio.h>                                              

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct HSHU00JW03 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
};

struct HSHU00JW03 hshu00jw03_0[2] = {{ { 1 } },{ { 2 } }};
struct HSHU00JW03 hshu00jw03_1[2] = {{ { 1 } }};

struct HSHU00JW29 {
	union SUB_UHB00HW00 m1;
	unsigned long   :29;
};

struct HSHU00JW29 hshu00jw29_0[2] = {{ { 1 } },{ { 2 } }};
struct HSHU00JW29 hshu00jw29_1[2] = {{ { 1 } }};

struct HSHU00JW00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :0;
};

struct HSHU00JW00 hshu00jw00_0[2] = {{ { 1 } },{ { 2 } }};
struct HSHU00JW00 hshu00jw00_1[2] = {{ { 1 } }};

int lto_sub_658() {

	printf("%u\n"  , hshu00jw03_0[0].m1.m1);
	printf("%u\n"  , hshu00jw03_0[1].m1.m1);
	printf("\n");
	printf("%u\n"  , hshu00jw03_1[0].m1.m1);
	printf("\n");

	printf("%u\n"  , hshu00jw29_0[0].m1.m1);
	printf("%u\n"  , hshu00jw29_0[1].m1.m1);
	printf("\n");
	printf("%u\n"  , hshu00jw29_1[0].m1.m1);
	printf("\n");

	printf("%u\n"  , hshu00jw00_0[0].m1.m1);
	printf("%u\n"  , hshu00jw00_0[1].m1.m1);
	printf("\n");
	printf("%u\n"  , hshu00jw00_1[0].m1.m1);
	printf("\n");

	return 0;
}
