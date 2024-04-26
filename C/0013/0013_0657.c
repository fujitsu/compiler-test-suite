                                                             
#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct HSHS00JW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :3;
};

struct HSHS00JW03 hshs00jw03_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
struct HSHS00JW03 hshs00jw03_1[2] = {{ { 1, 2 } }};
struct HSHS00JW03 hshs00jw03_2[2] = {{ { 1 } }};
struct HSHS00JW03 hshs00jw03_3[2] = {{ { 1 } }};
struct HSHS00JW03 hshs00jw03_4[2] = {{ { 1, 2 } }};

struct HSHS00JW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :29;
};

struct HSHS00JW29 hshs00jw29_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
struct HSHS00JW29 hshs00jw29_1[2] = {{ { 1, 2 } }};
struct HSHS00JW29 hshs00jw29_2[2] = {{ { 1 } }};
struct HSHS00JW29 hshs00jw29_3[2] = {{ { 1 } }};
struct HSHS00JW29 hshs00jw29_4[2] = {{ { 1, 2 } }};

struct HSHS00JW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
};

struct HSHS00JW00 hshs00jw00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
struct HSHS00JW00 hshs00jw00_1[2] = {{ { 1, 2 } }};
struct HSHS00JW00 hshs00jw00_2[2] = {{ { 1 } }};
struct HSHS00JW00 hshs00jw00_3[2] = {{ { 1 } }};
struct HSHS00JW00 hshs00jw00_4[2] = {{ { 1, 2 } }};

int main() {

	printf("%u\n"  , hshs00jw03_0[0].m1.m1);
	printf("%lu\n" , hshs00jw03_0[0].m1.m2);
	printf("%u\n"  , hshs00jw03_0[1].m1.m1);
	printf("%lu\n" , hshs00jw03_0[1].m1.m2);
	printf("\n");
	printf("%u\n"  , hshs00jw03_1[0].m1.m1);
	printf("%lu\n" , hshs00jw03_1[0].m1.m2);
	printf("\n");
	printf("%u\n"  , hshs00jw03_2[0].m1.m1);
	printf("\n");
	printf("%u\n"  , hshs00jw03_3[0].m1.m1);
	printf("\n");
	printf("%u\n"  , hshs00jw03_4[0].m1.m1);
	printf("%lu\n" , hshs00jw03_4[0].m1.m2);
	printf("\n");

	printf("%u\n"  , hshs00jw29_0[0].m1.m1);
	printf("%lu\n" , hshs00jw29_0[0].m1.m2);
	printf("%u\n"  , hshs00jw29_0[1].m1.m1);
	printf("%lu\n" , hshs00jw29_0[1].m1.m2);
	printf("\n");
	printf("%u\n"  , hshs00jw29_1[0].m1.m1);
	printf("%lu\n" , hshs00jw29_1[0].m1.m2);
	printf("\n");
	printf("%u\n"  , hshs00jw29_2[0].m1.m1);
	printf("\n");
	printf("%u\n"  , hshs00jw29_3[0].m1.m1);
	printf("\n");
	printf("%u\n"  , hshs00jw29_4[0].m1.m1);
	printf("%lu\n" , hshs00jw29_4[0].m1.m2);
	printf("\n");

	printf("%u\n"  , hshs00jw00_0[0].m1.m1);
	printf("%lu\n" , hshs00jw00_0[0].m1.m2);
	printf("%u\n"  , hshs00jw00_0[1].m1.m1);
	printf("%lu\n" , hshs00jw00_0[1].m1.m2);
	printf("\n");
	printf("%u\n"  , hshs00jw00_1[0].m1.m1);
	printf("%lu\n" , hshs00jw00_1[0].m1.m2);
	printf("\n");
	printf("%u\n"  , hshs00jw00_2[0].m1.m1);
	printf("\n");
	printf("%u\n"  , hshs00jw00_3[0].m1.m1);
	printf("\n");
	printf("%u\n"  , hshs00jw00_4[0].m1.m1);
	printf("%lu\n" , hshs00jw00_4[0].m1.m2);
	printf("\n");

	return 0;
}
