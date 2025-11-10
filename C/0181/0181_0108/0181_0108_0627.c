
	
	
	
	

#include <stdio.h>                                              

struct GSJW00JW00HW00 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3;
};

struct GSJW00JW00HW00 gsjw00jw00hw00_0[2] = {{ 1 },{ 2 }};
struct GSJW00JW00HW00 gsjw00jw00hw00_1[2] = {{ 1 }};

struct GSJW00JW00IW03 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3:3;
};

struct GSJW00JW00IW03 gsjw00jw00iw03_0[2] = {{ 1 },{ 2 }};
struct GSJW00JW00IW03 gsjw00jw00iw03_1[2] = {{ 1 }};

struct GSJW00JW00IW29 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3:29;
};

struct GSJW00JW00IW29 gsjw00jw00iw29_0[2] = {{ 1 },{ 2 }};
struct GSJW00JW00IW29 gsjw00jw00iw29_1[2] = {{ 1 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSJW00JW00HS00 {
	unsigned long   :0;
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct GSJW00JW00HS00 gsjw00jw00hs00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
struct GSJW00JW00HS00 gsjw00jw00hs00_1[2] = {{ { 1, 2 } }};
struct GSJW00JW00HS00 gsjw00jw00hs00_2[2] = {{ { 1 } }};
struct GSJW00JW00HS00 gsjw00jw00hs00_3[2] = {{ { 1 } }};
struct GSJW00JW00HS00 gsjw00jw00hs00_4[2] = {{ { 1, 2 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSJW00JW00HU00 {
	unsigned long   :0;
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct GSJW00JW00HU00 gsjw00jw00hu00_0[2] = {{ { 1 } },{ { 2 } }};
struct GSJW00JW00HU00 gsjw00jw00hu00_1[2] = {{ { 1 } }};

struct GSJW00JW00HA01 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned char m3[3];
};

struct GSJW00JW00HA01 gsjw00jw00ha01_0[2] = {{ "12" },{ "34" }};
struct GSJW00JW00HA01 gsjw00jw00ha01_1[2] = {{ "12" }};
struct GSJW00JW00HA01 gsjw00jw00ha01_2[2] = {{ "1" }};
struct GSJW00JW00HA01 gsjw00jw00ha01_3[2] = {{ "1" }};
struct GSJW00JW00HA01 gsjw00jw00ha01_4[2] = {{ "12" }};

struct GSJW00JW00HA04 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3[2];
};

struct GSJW00JW00HA04 gsjw00jw00ha04_0[2] = {{ {1,2} },{ {3,4} }};
struct GSJW00JW00HA04 gsjw00jw00ha04_1[2] = {{ {1,2} }};
struct GSJW00JW00HA04 gsjw00jw00ha04_2[2] = {{ {1} }};
struct GSJW00JW00HA04 gsjw00jw00ha04_3[2] = {{ {1} }};
struct GSJW00JW00HA04 gsjw00jw00ha04_4[2] = {{ {1,2} }};

int lto_sub_642() {

	printf("%lu\n" , gsjw00jw00hw00_0[0].m3);
	printf("%lu\n" , gsjw00jw00hw00_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsjw00jw00hw00_1[0].m3);
	printf("\n");

	printf("%lu\n" , gsjw00jw00iw03_0[0].m3);
	printf("%lu\n" , gsjw00jw00iw03_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsjw00jw00iw03_1[0].m3);
	printf("\n");

	printf("%lu\n" , gsjw00jw00iw29_0[0].m3);
	printf("%lu\n" , gsjw00jw00iw29_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsjw00jw00iw29_1[0].m3);
	printf("\n");

	printf("%u\n"  , gsjw00jw00hs00_0[0].m3.m1);
	printf("%lu\n" , gsjw00jw00hs00_0[0].m3.m2);
	printf("%u\n"  , gsjw00jw00hs00_0[1].m3.m1);
	printf("%lu\n" , gsjw00jw00hs00_0[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gsjw00jw00hs00_1[0].m3.m1);
	printf("%lu\n" , gsjw00jw00hs00_1[0].m3.m2);
	printf("\n");
	printf("%u\n"  , gsjw00jw00hs00_2[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw00jw00hs00_3[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw00jw00hs00_4[0].m3.m1);
	printf("%lu\n" , gsjw00jw00hs00_4[0].m3.m2);
	printf("\n");

	printf("%u\n"  , gsjw00jw00hu00_0[0].m3.m1);
	printf("%u\n"  , gsjw00jw00hu00_0[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gsjw00jw00hu00_1[0].m3.m1);
	printf("\n");

	printf("%s\n"  , gsjw00jw00ha01_0[0].m3);
	printf("%s\n"  , gsjw00jw00ha01_0[1].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw00ha01_1[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw00ha01_2[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw00ha01_3[0].m3);
	printf("\n");
	printf("%s\n"  , gsjw00jw00ha01_4[0].m3);
	printf("\n");

	printf("%lu\n" , gsjw00jw00ha04_0[0].m3[0]);
	printf("%lu\n" , gsjw00jw00ha04_0[0].m3[1]);
	printf("%lu\n" , gsjw00jw00ha04_0[1].m3[0]);
	printf("%lu\n" , gsjw00jw00ha04_0[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gsjw00jw00ha04_1[0].m3[0]);
	printf("%lu\n" , gsjw00jw00ha04_1[0].m3[1]);
	printf("\n");
	printf("%lu\n" , gsjw00jw00ha04_2[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsjw00jw00ha04_3[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsjw00jw00ha04_4[0].m3[0]);
	printf("%lu\n" , gsjw00jw00ha04_4[0].m3[1]);
	printf("\n");

	return 0;
}
