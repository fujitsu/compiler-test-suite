
	
	
	

#include <stdio.h>                                              

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union HUHU00JW03 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
};

union HUHU00JW03 huhu00jw03_0[2] = {{ { 1 } },{ { 2 } }};
union HUHU00JW03 huhu00jw03_1[2] = {{ { 1 } }};

union HUHU00JW29 {
	union SUB_UHB00HW00 m1;
	unsigned long   :29;
};

union HUHU00JW29 huhu00jw29_0[2] = {{ { 1 } },{ { 2 } }};
union HUHU00JW29 huhu00jw29_1[2] = {{ { 1 } }};

union HUHU00JW00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :0;
};

union HUHU00JW00 huhu00jw00_0[2] = {{ { 1 } },{ { 2 } }};
union HUHU00JW00 huhu00jw00_1[2] = {{ { 1 } }};

int lto_sub_665() {

	printf("%u\n"  , huhu00jw03_0[0].m1.m1);
	printf("%u\n"  , huhu00jw03_0[1].m1.m1);
	printf("\n");
	printf("%u\n"  , huhu00jw03_1[0].m1.m1);
	printf("\n");

	printf("%u\n"  , huhu00jw29_0[0].m1.m1);
	printf("%u\n"  , huhu00jw29_0[1].m1.m1);
	printf("\n");
	printf("%u\n"  , huhu00jw29_1[0].m1.m1);
	printf("\n");

	printf("%u\n"  , huhu00jw00_0[0].m1.m1);
	printf("%u\n"  , huhu00jw00_0[1].m1.m1);
	printf("\n");
	printf("%u\n"  , huhu00jw00_1[0].m1.m1);
	printf("\n");

	return 0;
}
