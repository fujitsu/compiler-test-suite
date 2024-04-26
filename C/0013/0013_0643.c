                                                             
#include <stdio.h>                                              

struct GSJW00JW03HW00 {
	unsigned long   :0;
	unsigned long   :3;
	unsigned long m3;
};

struct GSJW00JW03HW00 gsjw00jw03hw00_0[2] = {{ 1 },{ 2 }};
struct GSJW00JW03HW00 gsjw00jw03hw00_1[2] = {{ 1 }};

struct GSJW00JW03IW03 {
	unsigned long   :0;
	unsigned long   :3;
	unsigned long m3:3;
};

struct GSJW00JW03IW03 gsjw00jw03iw03_0[2] = {{ 1 },{ 2 }};
struct GSJW00JW03IW03 gsjw00jw03iw03_1[2] = {{ 1 }};

struct GSJW00JW03IW29 {
	unsigned long   :0;
	unsigned long   :3;
	unsigned long m3:29;
};

struct GSJW00JW03IW29 gsjw00jw03iw29_0[2] = {{ 1 },{ 2 }};
struct GSJW00JW03IW29 gsjw00jw03iw29_1[2] = {{ 1 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSJW00JW03HS00 {
	unsigned long   :0;
	unsigned long   :3;
	struct SUB_SHB00HW00 m3;
};

struct GSJW00JW03HS00 gsjw00jw03hs00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
struct GSJW00JW03HS00 gsjw00jw03hs00_1[2] = {{ { 1, 2 } }};
struct GSJW00JW03HS00 gsjw00jw03hs00_2[2] = {{ { 1 } }};
struct GSJW00JW03HS00 gsjw00jw03hs00_3[2] = {{ { 1 } }};
struct GSJW00JW03HS00 gsjw00jw03hs00_4[2] = {{ { 1, 2 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSJW00JW03HU00 {
	unsigned long   :0;
	unsigned long   :3;
	union SUB_UHB00HW00 m3;
};

struct GSJW00JW03HU00 gsjw00jw03hu00_0[2] = {{ { 1 } },{ { 2 } }};
struct GSJW00JW03HU00 gsjw00jw03hu00_1[2] = {{ { 1 } }};

struct GSJW00JW03HA01 {
	unsigned long   :0;
	unsigned long   :3;
	unsigned char m3[3];
};

struct GSJW00JW03HA01 gsjw00jw03ha01_0[2] = {{ "12" },{ "34" }};
struct GSJW00JW03HA01 gsjw00jw03ha01_1[2] = {{ "12" }};
struct GSJW00JW03HA01 gsjw00jw03ha01_2[2] = {{ "1" }};
struct GSJW00JW03HA01 gsjw00jw03ha01_3[2] = {{ "1" }};
struct GSJW00JW03HA01 gsjw00jw03ha01_4[2] = {{ "12" }};

struct GSJW00JW03HA04 {
	unsigned long   :0;
	unsigned long   :3;
	unsigned long m3[2];
};

struct GSJW00JW03HA04 gsjw00jw03ha04_0[2] = {{ {1,2} },{ {3,4} }};
struct GSJW00JW03HA04 gsjw00jw03ha04_1[2] = {{ {1,2} }};
struct GSJW00JW03HA04 gsjw00jw03ha04_2[2] = {{ {1} }};
struct GSJW00JW03HA04 gsjw00jw03ha04_3[2] = {{ {1} }};
struct GSJW00JW03HA04 gsjw00jw03ha04_4[2] = {{ {1,2} }};

int main() {

	printf("%lu\n" , gsjw00jw03hw00_0[0].m3);
	printf("%lu\n" , gsjw00jw03hw00_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsjw00jw03hw00_1[0].m3);
	printf("\n");

	printf("%d\n" , gsjw00jw03iw03_0[0].m3);
	printf("%d\n" , gsjw00jw03iw03_0[1].m3);
	printf("\n");
	printf("%d\n" , gsjw00jw03iw03_1[0].m3);
	printf("\n");

	printf("%d\n" , gsjw00jw03iw29_0[0].m3);
	printf("%d\n" , gsjw00jw03iw29_0[1].m3);
	printf("\n");
	printf("%d\n" , gsjw00jw03iw29_1[0].m3);
	printf("\n");

	printf("%u\n"  , gsjw00jw03hs00_0[0].m3.m1);
	printf("%lu\n" , gsjw00jw03hs00_0[0].m3.m2);
	printf("%u\n"  , gsjw00jw03hs00_0[1].m3.m1);
	printf("%lu\n" , gsjw00jw03hs00_0[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gsjw00jw03hs00_1[0].m3.m1);
	printf("%lu\n" , gsjw00jw03hs00_1[0].m3.m2);
	printf("\n");
	printf("%u\n"  , gsjw00jw03hs00_2[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw00jw03hs00_3[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw00jw03hs00_4[0].m3.m1);
	printf("%lu\n" , gsjw00jw03hs00_4[0].m3.m2);
	printf("\n");

	printf("%u\n"  , gsjw00jw03hu00_0[0].m3.m1);
	printf("%u\n"  , gsjw00jw03hu00_0[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw00jw03hu00_1[0].m3.m1);
	printf("\n");

	printf("%s\n"  , gsjw00jw03ha01_0[0].m3);
	printf("%s\n"  , gsjw00jw03ha01_0[1].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw03ha01_1[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw03ha01_2[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw03ha01_3[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw03ha01_4[0].m3);
	printf("\n");

	printf("%lu\n" , gsjw00jw03ha04_0[0].m3[0]);
	printf("%lu\n" , gsjw00jw03ha04_0[0].m3[1]);
	printf("%lu\n" , gsjw00jw03ha04_0[1].m3[0]);
	printf("%lu\n" , gsjw00jw03ha04_0[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gsjw00jw03ha04_1[0].m3[0]);
	printf("%lu\n" , gsjw00jw03ha04_1[0].m3[1]);
	printf("\n");
	printf("%lu\n" , gsjw00jw03ha04_2[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsjw00jw03ha04_3[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsjw00jw03ha04_4[0].m3[0]);
	printf("%lu\n" , gsjw00jw03ha04_4[0].m3[1]);
	printf("\n");

	return 0;
}
