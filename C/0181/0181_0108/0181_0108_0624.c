
	
	
	
	

#include <stdio.h>                                              

struct GSIW29JW29HW00 {
	unsigned long m1:29;
	unsigned long   :29;
	unsigned long m3;
};

struct GSIW29JW29HW00 gsiw29jw29hw00_0[2] = {{ 1, 2 },{ 3, 4 }};
struct GSIW29JW29HW00 gsiw29jw29hw00_1[2] = {{ 1, 2 }};
struct GSIW29JW29HW00 gsiw29jw29hw00_2[2] = {{ 1 },{ 3, 4 }};
struct GSIW29JW29HW00 gsiw29jw29hw00_3[2] = {{ 1 }};
struct GSIW29JW29HW00 gsiw29jw29hw00_4[2] = {{ 1, 2 },{ 3 }};

struct GSIW29JW29IW03 {
	unsigned long m1:29;
	unsigned long   :29;
	unsigned long m3:3;
};

struct GSIW29JW29IW03 gsiw29jw29iw03_0[2] = {{ 1, 2 },{ 3, 4 }};
struct GSIW29JW29IW03 gsiw29jw29iw03_1[2] = {{ 1, 2 }};
struct GSIW29JW29IW03 gsiw29jw29iw03_2[2] = {{ 1 },{ 3, 4 }};
struct GSIW29JW29IW03 gsiw29jw29iw03_3[2] = {{ 1 }};
struct GSIW29JW29IW03 gsiw29jw29iw03_4[2] = {{ 1, 2 },{ 3 }};

struct GSIW29JW29IW29 {
	unsigned long m1:29;
	unsigned long   :29;
	unsigned long m3:29;
};

struct GSIW29JW29IW29 gsiw29jw29iw29_0[2] = {{ 1, 2 },{ 3, 4 }};
struct GSIW29JW29IW29 gsiw29jw29iw29_1[2] = {{ 1, 2 }};
struct GSIW29JW29IW29 gsiw29jw29iw29_2[2] = {{ 1 },{ 3, 4 }};
struct GSIW29JW29IW29 gsiw29jw29iw29_3[2] = {{ 1 }};
struct GSIW29JW29IW29 gsiw29jw29iw29_4[2] = {{ 1, 2 },{ 3 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSIW29JW29HS00 {
	unsigned long m1:29;
	unsigned long   :29;
	struct SUB_SHB00HW00 m3;
};

struct GSIW29JW29HS00 gsiw29jw29hs00_0[2] = {{ 1, { 2, 3 } },{ 4, { 5, 6 } }};
struct GSIW29JW29HS00 gsiw29jw29hs00_1[2] = {{ 1, { 2, 3 } }};
struct GSIW29JW29HS00 gsiw29jw29hs00_2[2] = {{ 1 },{ 4, { 5, 6 } }};
struct GSIW29JW29HS00 gsiw29jw29hs00_3[2] = {{ 1 }};
struct GSIW29JW29HS00 gsiw29jw29hs00_4[2] = {{ 1, { 2 } },{ 4, { 5, 6 } }};
struct GSIW29JW29HS00 gsiw29jw29hs00_5[2] = {{ 1, { 2 } }};
struct GSIW29JW29HS00 gsiw29jw29hs00_8[2] = {{ 1, { 2, 3 } },{ 4 }};
struct GSIW29JW29HS00 gsiw29jw29hs00_16[2] = {{ 1, { 2, 3 } },{ 4, { 5 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSIW29JW29HU00 {
	unsigned long m1:29;
	unsigned long   :29;
	union SUB_UHB00HW00 m3;
};

struct GSIW29JW29HU00 gsiw29jw29hu00_0[2] = {{ 1, { 2 } },{ 3, { 4 } }};
struct GSIW29JW29HU00 gsiw29jw29hu00_1[2] = {{ 1, { 2 } }};
struct GSIW29JW29HU00 gsiw29jw29hu00_2[2] = {{ 1 },{ 3, { 4 } }};
struct GSIW29JW29HU00 gsiw29jw29hu00_3[2] = {{ 1 }};
struct GSIW29JW29HU00 gsiw29jw29hu00_4[2] = {{ 1 },{ 3 }};

struct GSIW29JW29HA01 {
	unsigned long m1:29;
	unsigned long   :29;
	unsigned char m3[3];
};

struct GSIW29JW29HA01 gsiw29jw29ha01_0[2] = {{ 1, "23" },{ 4, "56" }};
struct GSIW29JW29HA01 gsiw29jw29ha01_1[2] = {{ 1, "23" }};
struct GSIW29JW29HA01 gsiw29jw29ha01_2[2] = {{ 1 },{ 4, "56" }};
struct GSIW29JW29HA01 gsiw29jw29ha01_3[2] = {{ 1 }};
struct GSIW29JW29HA01 gsiw29jw29ha01_4[2] = {{ 1, "2" },{ 4, "56" }};
struct GSIW29JW29HA01 gsiw29jw29ha01_5[2] = {{ 1, "2" }};
struct GSIW29JW29HA01 gsiw29jw29ha01_8[2] = {{ 1, "23" },{ 4 }};
struct GSIW29JW29HA01 gsiw29jw29ha01_16[2] = {{ 1, "23" },{ 4, "5" }};

struct GSIW29JW29HA04 {
	unsigned long m1:29;
	unsigned long   :29;
	unsigned long m3[2];
};

struct GSIW29JW29HA04 gsiw29jw29ha04_0[2] = {{ 1, {2,3} },{ 4, {5,6} }};
struct GSIW29JW29HA04 gsiw29jw29ha04_1[2] = {{ 1, {2,3} }};
struct GSIW29JW29HA04 gsiw29jw29ha04_2[2] = {{ 1 },{ 4, {5,6} }};
struct GSIW29JW29HA04 gsiw29jw29ha04_3[2] = {{ 1 }};
struct GSIW29JW29HA04 gsiw29jw29ha04_4[2] = {{ 1, {2} },{ 4, {5,6} }};
struct GSIW29JW29HA04 gsiw29jw29ha04_5[2] = {{ 1, {2} }};
struct GSIW29JW29HA04 gsiw29jw29ha04_8[2] = {{ 1, {2,3} },{ 4 }};
struct GSIW29JW29HA04 gsiw29jw29ha04_16[2] = {{ 1, {2,3} },{ 4, {5} }};

int lto_sub_639() {

	printf("%lu\n" , gsiw29jw29hw00_0[0].m1);
	printf("%lu\n" , gsiw29jw29hw00_0[0].m3);
	printf("%lu\n" , gsiw29jw29hw00_0[1].m1);
	printf("%lu\n" , gsiw29jw29hw00_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hw00_1[0].m1);
	printf("%lu\n" , gsiw29jw29hw00_1[0].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hw00_2[0].m1);
	printf("%lu\n" , gsiw29jw29hw00_2[1].m1);
	printf("%lu\n" , gsiw29jw29hw00_2[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hw00_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hw00_4[0].m1);
	printf("%lu\n" , gsiw29jw29hw00_4[0].m3);
	printf("%lu\n" , gsiw29jw29hw00_4[1].m1);
	printf("\n");

	printf("%lu\n" , gsiw29jw29iw03_0[0].m1);
	printf("%lu\n" , gsiw29jw29iw03_0[0].m3);
	printf("%lu\n" , gsiw29jw29iw03_0[1].m1);
	printf("%lu\n" , gsiw29jw29iw03_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw03_1[0].m1);
	printf("%lu\n" , gsiw29jw29iw03_1[0].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw03_2[0].m1);
	printf("%lu\n" , gsiw29jw29iw03_2[1].m1);
	printf("%lu\n" , gsiw29jw29iw03_2[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw03_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw03_4[0].m1);
	printf("%lu\n" , gsiw29jw29iw03_4[0].m3);
	printf("%lu\n" , gsiw29jw29iw03_4[1].m1);
	printf("\n");

	printf("%lu\n" , gsiw29jw29iw29_0[0].m1);
	printf("%lu\n" , gsiw29jw29iw29_0[0].m3);
	printf("%lu\n" , gsiw29jw29iw29_0[1].m1);
	printf("%lu\n" , gsiw29jw29iw29_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw29_1[0].m1);
	printf("%lu\n" , gsiw29jw29iw29_1[0].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw29_2[0].m1);
	printf("%lu\n" , gsiw29jw29iw29_2[1].m1);
	printf("%lu\n" , gsiw29jw29iw29_2[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw29_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29iw29_4[0].m1);
	printf("%lu\n" , gsiw29jw29iw29_4[0].m3);
	printf("%lu\n" , gsiw29jw29iw29_4[1].m1);
	printf("\n");

	printf("%lu\n" , gsiw29jw29hs00_0[0].m1);
	printf("%u\n"  , gsiw29jw29hs00_0[0].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_0[0].m3.m2);
	printf("%lu\n" , gsiw29jw29hs00_0[1].m1);
	printf("%u\n"  , gsiw29jw29hs00_0[1].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_0[1].m3.m2);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_1[0].m1);
	printf("%u\n"  , gsiw29jw29hs00_1[0].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_1[0].m3.m2);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_2[0].m1);
	printf("%lu\n" , gsiw29jw29hs00_2[1].m1);
	printf("%u\n"  , gsiw29jw29hs00_2[1].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_2[1].m3.m2);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_4[0].m1);
	printf("%u\n"  , gsiw29jw29hs00_4[0].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_4[1].m1);
	printf("%u\n"  , gsiw29jw29hs00_4[1].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_4[1].m3.m2);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_5[0].m1);
	printf("%u\n"  , gsiw29jw29hs00_5[0].m3.m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_8[0].m1);
	printf("%u\n"  , gsiw29jw29hs00_8[0].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_8[0].m3.m2);
	printf("%lu\n" , gsiw29jw29hs00_8[1].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hs00_16[0].m1);
	printf("%u\n"  , gsiw29jw29hs00_16[0].m3.m1);
	printf("%lu\n" , gsiw29jw29hs00_16[0].m3.m2);
	printf("%lu\n" , gsiw29jw29hs00_16[1].m1);
	printf("%u\n"  , gsiw29jw29hs00_16[1].m3.m1);
	printf("\n");

	printf("%lu\n" , gsiw29jw29hu00_0[0].m1);
	printf("%u\n"  , gsiw29jw29hu00_0[0].m3.m1);
	printf("%lu\n" , gsiw29jw29hu00_0[1].m1);
	printf("%u\n"  , gsiw29jw29hu00_0[1].m3.m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hu00_1[0].m1);
	printf("%u\n"  , gsiw29jw29hu00_1[0].m3.m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hu00_2[0].m1);
	printf("%lu\n" , gsiw29jw29hu00_2[1].m1);
	printf("%u\n"  , gsiw29jw29hu00_2[1].m3.m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hu00_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29hu00_4[0].m1);
	printf("%lu\n" , gsiw29jw29hu00_4[1].m1);
	printf("\n");

	printf("%lu\n" , gsiw29jw29ha01_0[0].m1);
	printf("%s\n"  , gsiw29jw29ha01_0[0].m3);
	printf("%lu\n" , gsiw29jw29ha01_0[1].m1);
	printf("%s\n"  , gsiw29jw29ha01_0[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_1[0].m1);
	printf("%s\n"  , gsiw29jw29ha01_1[0].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_2[0].m1);
	printf("%lu\n" , gsiw29jw29ha01_2[1].m1);
	printf("%s\n"  , gsiw29jw29ha01_2[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_4[0].m1);
	printf("%s\n"  , gsiw29jw29ha01_4[0].m3);
	printf("%lu\n" , gsiw29jw29ha01_4[1].m1);
	printf("%s\n"  , gsiw29jw29ha01_4[1].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_5[0].m1);
	printf("%s\n"  , gsiw29jw29ha01_5[0].m3);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_8[0].m1);
	printf("%s\n"  , gsiw29jw29ha01_8[0].m3);
	printf("%lu\n" , gsiw29jw29ha01_8[1].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha01_16[0].m1);
	printf("%s\n"  , gsiw29jw29ha01_16[0].m3);
	printf("%lu\n" , gsiw29jw29ha01_16[1].m1);
	printf("%s\n"  , gsiw29jw29ha01_16[1].m3);
	printf("\n");

	printf("%lu\n" , gsiw29jw29ha04_0[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_0[0].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_0[0].m3[1]);
	printf("%lu\n" , gsiw29jw29ha04_0[1].m1);
	printf("%lu\n" , gsiw29jw29ha04_0[1].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_0[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_1[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_1[0].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_1[0].m3[1]);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_2[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_2[1].m1);
	printf("%lu\n" , gsiw29jw29ha04_2[1].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_2[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_3[0].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_4[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_4[0].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_4[1].m1);
	printf("%lu\n" , gsiw29jw29ha04_4[1].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_4[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_5[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_5[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_8[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_8[0].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_8[0].m3[1]);
	printf("%lu\n" , gsiw29jw29ha04_8[1].m1);
	printf("\n");
	printf("%lu\n" , gsiw29jw29ha04_16[0].m1);
	printf("%lu\n" , gsiw29jw29ha04_16[0].m3[0]);
	printf("%lu\n" , gsiw29jw29ha04_16[0].m3[1]);
	printf("%lu\n" , gsiw29jw29ha04_16[1].m1);
	printf("%lu\n" , gsiw29jw29ha04_16[1].m3[0]);
	printf("\n");

	return 0;
}
