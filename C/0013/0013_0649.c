                                                             
#include <stdio.h>                                              

struct GSJW03JW29HW00 {
	unsigned long   :3;
	unsigned long   :29;
	unsigned long m3;
};

struct GSJW03JW29HW00 gsjw03jw29hw00_0[2] = {{ 1 },{ 2 }};
struct GSJW03JW29HW00 gsjw03jw29hw00_1[2] = {{ 1 }};

struct GSJW03JW29IW03 {
	unsigned long   :3;
	unsigned long   :29;
	unsigned long m3:3;
};

struct GSJW03JW29IW03 gsjw03jw29iw03_0[2] = {{ 1 },{ 2 }};
struct GSJW03JW29IW03 gsjw03jw29iw03_1[2] = {{ 1 }};

struct GSJW03JW29IW29 {
	unsigned long   :3;
	unsigned long   :29;
	unsigned long m3:29;
};

struct GSJW03JW29IW29 gsjw03jw29iw29_0[2] = {{ 1 },{ 2 }};
struct GSJW03JW29IW29 gsjw03jw29iw29_1[2] = {{ 1 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSJW03JW29HS00 {
	unsigned long   :3;
	unsigned long   :29;
	struct SUB_SHB00HW00 m3;
};

struct GSJW03JW29HS00 gsjw03jw29hs00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
struct GSJW03JW29HS00 gsjw03jw29hs00_1[2] = {{ { 1, 2 } }};
struct GSJW03JW29HS00 gsjw03jw29hs00_2[2] = {{ { 1 } }};
struct GSJW03JW29HS00 gsjw03jw29hs00_3[2] = {{ { 1 } }};
struct GSJW03JW29HS00 gsjw03jw29hs00_4[2] = {{ { 1, 2 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSJW03JW29HU00 {
	unsigned long   :3;
	unsigned long   :29;
	union SUB_UHB00HW00 m3;
};

struct GSJW03JW29HU00 gsjw03jw29hu00_0[2] = {{ { 1 } },{ { 2 } }};
struct GSJW03JW29HU00 gsjw03jw29hu00_1[2] = {{ { 1 } }};

struct GSJW03JW29HA01 {
	unsigned long   :3;
	unsigned long   :29;
	unsigned char m3[3];
};

struct GSJW03JW29HA01 gsjw03jw29ha01_0[2] = {{ "12" },{ "34" }};
struct GSJW03JW29HA01 gsjw03jw29ha01_1[2] = {{ "12" }};
struct GSJW03JW29HA01 gsjw03jw29ha01_2[2] = {{ "1" }};
struct GSJW03JW29HA01 gsjw03jw29ha01_3[2] = {{ "1" }};
struct GSJW03JW29HA01 gsjw03jw29ha01_4[2] = {{ "12" }};

struct GSJW03JW29HA04 {
	unsigned long   :3;
	unsigned long   :29;
	unsigned long m3[2];
};

struct GSJW03JW29HA04 gsjw03jw29ha04_0[2] = {{ {1,2} },{ {3,4} }};
struct GSJW03JW29HA04 gsjw03jw29ha04_1[2] = {{ {1,2} }};
struct GSJW03JW29HA04 gsjw03jw29ha04_2[2] = {{ {1} }};
struct GSJW03JW29HA04 gsjw03jw29ha04_3[2] = {{ {1} }};
struct GSJW03JW29HA04 gsjw03jw29ha04_4[2] = {{ {1,2} }};

int main() {

	printf("%lu\n" , gsjw03jw29hw00_0[0].m3);
	printf("%lu\n" , gsjw03jw29hw00_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsjw03jw29hw00_1[0].m3);
	printf("\n");

	printf("%d\n" , gsjw03jw29iw03_0[0].m3);
	printf("%d\n" , gsjw03jw29iw03_0[1].m3);
	printf("\n");
	printf("%d\n" , gsjw03jw29iw03_1[0].m3);
	printf("\n");

	printf("%d\n" , gsjw03jw29iw29_0[0].m3);
	printf("%d\n" , gsjw03jw29iw29_0[1].m3);
	printf("\n");
	printf("%d\n" , gsjw03jw29iw29_1[0].m3);
	printf("\n");

	printf("%u\n"  , gsjw03jw29hs00_0[0].m3.m1);
	printf("%lu\n" , gsjw03jw29hs00_0[0].m3.m2);
	printf("%u\n"  , gsjw03jw29hs00_0[1].m3.m1);
	printf("%lu\n" , gsjw03jw29hs00_0[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gsjw03jw29hs00_1[0].m3.m1);
	printf("%lu\n" , gsjw03jw29hs00_1[0].m3.m2);
	printf("\n");
	printf("%u\n"  , gsjw03jw29hs00_2[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw03jw29hs00_3[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw03jw29hs00_4[0].m3.m1);
	printf("%lu\n" , gsjw03jw29hs00_4[0].m3.m2);
	printf("\n");

	printf("%u\n"  , gsjw03jw29hu00_0[0].m3.m1);
	printf("%u\n"  , gsjw03jw29hu00_0[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw03jw29hu00_1[0].m3.m1);
	printf("\n");

	printf("%s\n"  , gsjw03jw29ha01_0[0].m3);
	printf("%s\n"  , gsjw03jw29ha01_0[1].m3);
	printf("\n");
	printf("%s\n"  , gsjw03jw29ha01_1[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw03jw29ha01_2[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw03jw29ha01_3[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw03jw29ha01_4[0].m3);
	printf("\n");

	printf("%lu\n" , gsjw03jw29ha04_0[0].m3[0]);
	printf("%lu\n" , gsjw03jw29ha04_0[0].m3[1]);
	printf("%lu\n" , gsjw03jw29ha04_0[1].m3[0]);
	printf("%lu\n" , gsjw03jw29ha04_0[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gsjw03jw29ha04_1[0].m3[0]);
	printf("%lu\n" , gsjw03jw29ha04_1[0].m3[1]);
	printf("\n");
	printf("%lu\n" , gsjw03jw29ha04_2[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsjw03jw29ha04_3[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsjw03jw29ha04_4[0].m3[0]);
	printf("%lu\n" , gsjw03jw29ha04_4[0].m3[1]);
	printf("\n");

	return 0;
}
