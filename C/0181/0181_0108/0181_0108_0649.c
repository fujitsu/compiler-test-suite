
	
	
	

#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union HUHS00JW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :3;
};

union HUHS00JW03 huhs00jw03_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
union HUHS00JW03 huhs00jw03_1[2] = {{ { 1, 2 } }};
union HUHS00JW03 huhs00jw03_2[2] = {{ { 1 } }};
union HUHS00JW03 huhs00jw03_3[2] = {{ { 1 } }};
union HUHS00JW03 huhs00jw03_4[2] = {{ { 1, 2 } }};

union HUHS00JW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :29;
};

union HUHS00JW29 huhs00jw29_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
union HUHS00JW29 huhs00jw29_1[2] = {{ { 1, 2 } }};
union HUHS00JW29 huhs00jw29_2[2] = {{ { 1 } }};
union HUHS00JW29 huhs00jw29_3[2] = {{ { 1 } }};
union HUHS00JW29 huhs00jw29_4[2] = {{ { 1, 2 } }};

union HUHS00JW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
};

union HUHS00JW00 huhs00jw00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
union HUHS00JW00 huhs00jw00_1[2] = {{ { 1, 2 } }};
union HUHS00JW00 huhs00jw00_2[2] = {{ { 1 } }};
union HUHS00JW00 huhs00jw00_3[2] = {{ { 1 } }};
union HUHS00JW00 huhs00jw00_4[2] = {{ { 1, 2 } }};

int lto_sub_664() {

	printf("%u\n"  , huhs00jw03_0[0].m1.m1);
	printf("%lu\n" , huhs00jw03_0[0].m1.m2);
	printf("%u\n"  , huhs00jw03_0[1].m1.m1);
	printf("%lu\n" , huhs00jw03_0[1].m1.m2);
	printf("\n");
	printf("%u\n"  , huhs00jw03_1[0].m1.m1);
	printf("%lu\n" , huhs00jw03_1[0].m1.m2);
	printf("\n");
	printf("%u\n"  , huhs00jw03_2[0].m1.m1);
	printf("\n");
	printf("%u\n"  , huhs00jw03_3[0].m1.m1);
	printf("\n");
	printf("%u\n"  , huhs00jw03_4[0].m1.m1);
	printf("%lu\n" , huhs00jw03_4[0].m1.m2);
	printf("\n");

	printf("%u\n"  , huhs00jw29_0[0].m1.m1);
	printf("%lu\n" , huhs00jw29_0[0].m1.m2);
	printf("%u\n"  , huhs00jw29_0[1].m1.m1);
	printf("%lu\n" , huhs00jw29_0[1].m1.m2);
	printf("\n");
	printf("%u\n"  , huhs00jw29_1[0].m1.m1);
	printf("%lu\n" , huhs00jw29_1[0].m1.m2);
	printf("\n");
	printf("%u\n"  , huhs00jw29_2[0].m1.m1);
	printf("\n");
	printf("%u\n"  , huhs00jw29_3[0].m1.m1);
	printf("\n");
	printf("%u\n"  , huhs00jw29_4[0].m1.m1);
	printf("%lu\n" , huhs00jw29_4[0].m1.m2);
	printf("\n");

	printf("%u\n"  , huhs00jw00_0[0].m1.m1);
	printf("%lu\n" , huhs00jw00_0[0].m1.m2);
	printf("%u\n"  , huhs00jw00_0[1].m1.m1);
	printf("%lu\n" , huhs00jw00_0[1].m1.m2);
	printf("\n");
	printf("%u\n"  , huhs00jw00_1[0].m1.m1);
	printf("%lu\n" , huhs00jw00_1[0].m1.m2);
	printf("\n");
	printf("%u\n"  , huhs00jw00_2[0].m1.m1);
	printf("\n");
	printf("%u\n"  , huhs00jw00_3[0].m1.m1);
	printf("\n");
	printf("%u\n"  , huhs00jw00_4[0].m1.m1);
	printf("%lu\n" , huhs00jw00_4[0].m1.m2);
	printf("\n");

	return 0;
}
