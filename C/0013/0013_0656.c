                                                             
#include <stdio.h>                                              

struct HSHA04JW03 {
	unsigned long m1[2];
	unsigned long   :3;
};

struct HSHA04JW03 hsha04jw03_0[2] = {{ {1,2} },{ {3,4} }};
struct HSHA04JW03 hsha04jw03_1[2] = {{ {1,2} }};
struct HSHA04JW03 hsha04jw03_2[2] = {{ {1} }};
struct HSHA04JW03 hsha04jw03_3[2] = {{ {1} }};
struct HSHA04JW03 hsha04jw03_4[2] = {{ {1,2} }};

struct HSHA04JW29 {
	unsigned long m1[2];
	unsigned long   :29;
};

struct HSHA04JW29 hsha04jw29_0[2] = {{ {1,2} },{ {3,4} }};
struct HSHA04JW29 hsha04jw29_1[2] = {{ {1,2} }};
struct HSHA04JW29 hsha04jw29_2[2] = {{ {1} }};
struct HSHA04JW29 hsha04jw29_3[2] = {{ {1} }};
struct HSHA04JW29 hsha04jw29_4[2] = {{ {1,2} }};

struct HSHA04JW00 {
	unsigned long m1[2];
	unsigned long   :0;
};

struct HSHA04JW00 hsha04jw00_0[2] = {{ {1,2} },{ {3,4} }};
struct HSHA04JW00 hsha04jw00_1[2] = {{ {1,2} }};
struct HSHA04JW00 hsha04jw00_2[2] = {{ {1} }};
struct HSHA04JW00 hsha04jw00_3[2] = {{ {1} }};
struct HSHA04JW00 hsha04jw00_4[2] = {{ {1,2} }};

int main() {

	printf("%lu\n" , hsha04jw03_0[0].m1[0]);
	printf("%lu\n" , hsha04jw03_0[0].m1[1]);
	printf("%lu\n" , hsha04jw03_0[1].m1[0]);
	printf("%lu\n" , hsha04jw03_0[1].m1[1]);
	printf("\n");
	printf("%lu\n" , hsha04jw03_1[0].m1[0]);
	printf("%lu\n" , hsha04jw03_1[0].m1[1]);
	printf("\n");
	printf("%lu\n" , hsha04jw03_2[0].m1[0]);
	printf("\n");
	printf("%lu\n" , hsha04jw03_3[0].m1[0]);
	printf("\n");
	printf("%lu\n" , hsha04jw03_4[0].m1[0]);
	printf("%lu\n" , hsha04jw03_4[0].m1[1]);
	printf("\n");

	printf("%lu\n" , hsha04jw29_0[0].m1[0]);
	printf("%lu\n" , hsha04jw29_0[0].m1[1]);
	printf("%lu\n" , hsha04jw29_0[1].m1[0]);
	printf("%lu\n" , hsha04jw29_0[1].m1[1]);
	printf("\n");
	printf("%lu\n" , hsha04jw29_1[0].m1[0]);
	printf("%lu\n" , hsha04jw29_1[0].m1[1]);
	printf("\n");
	printf("%lu\n" , hsha04jw29_2[0].m1[0]);
	printf("\n");
	printf("%lu\n" , hsha04jw29_3[0].m1[0]);
	printf("\n");
	printf("%lu\n" , hsha04jw29_4[0].m1[0]);
	printf("%lu\n" , hsha04jw29_4[0].m1[1]);
	printf("\n");

	printf("%lu\n" , hsha04jw00_0[0].m1[0]);
	printf("%lu\n" , hsha04jw00_0[0].m1[1]);
	printf("%lu\n" , hsha04jw00_0[1].m1[0]);
	printf("%lu\n" , hsha04jw00_0[1].m1[1]);
	printf("\n");
	printf("%lu\n" , hsha04jw00_1[0].m1[0]);
	printf("%lu\n" , hsha04jw00_1[0].m1[1]);
	printf("\n");
	printf("%lu\n" , hsha04jw00_2[0].m1[0]);
	printf("\n");
	printf("%lu\n" , hsha04jw00_3[0].m1[0]);
	printf("\n");
	printf("%lu\n" , hsha04jw00_4[0].m1[0]);
	printf("%lu\n" , hsha04jw00_4[0].m1[1]);
	printf("\n");

	return 0;
}
