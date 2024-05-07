                                                             
#include <stdio.h>                                              

struct GSHW00JW00HW00 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3;
};

struct GSHW00JW00HW00 gshw00jw00hw00_0[2] = {{ 1, 2 },{ 3, 4 }};
struct GSHW00JW00HW00 gshw00jw00hw00_1[2] = {{ 1, 2 }};
struct GSHW00JW00HW00 gshw00jw00hw00_2[2] = {{ 1 },{ 3, 4 }};
struct GSHW00JW00HW00 gshw00jw00hw00_3[2] = {{ 1 }};
struct GSHW00JW00HW00 gshw00jw00hw00_4[2] = {{ 1, 2 },{ 3 }};

struct GSHW00JW00IW03 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3:3;
};

struct GSHW00JW00IW03 gshw00jw00iw03_0[2] = {{ 1, 2 },{ 3, 4 }};
struct GSHW00JW00IW03 gshw00jw00iw03_1[2] = {{ 1, 2 }};
struct GSHW00JW00IW03 gshw00jw00iw03_2[2] = {{ 1 },{ 3, 4 }};
struct GSHW00JW00IW03 gshw00jw00iw03_3[2] = {{ 1 }};
struct GSHW00JW00IW03 gshw00jw00iw03_4[2] = {{ 1, 2 },{ 3 }};

struct GSHW00JW00IW29 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3:29;
};

struct GSHW00JW00IW29 gshw00jw00iw29_0[2] = {{ 1, 2 },{ 3, 4 }};
struct GSHW00JW00IW29 gshw00jw00iw29_1[2] = {{ 1, 2 }};
struct GSHW00JW00IW29 gshw00jw00iw29_2[2] = {{ 1 },{ 3, 4 }};
struct GSHW00JW00IW29 gshw00jw00iw29_3[2] = {{ 1 }};
struct GSHW00JW00IW29 gshw00jw00iw29_4[2] = {{ 1, 2 },{ 3 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSHW00JW00HS00 {
	unsigned long m1;
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct GSHW00JW00HS00 gshw00jw00hs00_0[2] = {{ 1, { 2, 3 } },{ 4, { 5, 6 } }};
struct GSHW00JW00HS00 gshw00jw00hs00_1[2] = {{ 1, { 2, 3 } }};
struct GSHW00JW00HS00 gshw00jw00hs00_2[2] = {{ 1 },{ 4, { 5, 6 } }};
struct GSHW00JW00HS00 gshw00jw00hs00_3[2] = {{ 1 }};
struct GSHW00JW00HS00 gshw00jw00hs00_4[2] = {{ 1, { 2 } },{ 4, { 5, 6 } }};
struct GSHW00JW00HS00 gshw00jw00hs00_5[2] = {{ 1, { 2 } }};
struct GSHW00JW00HS00 gshw00jw00hs00_8[2] = {{ 1, { 2, 3 } },{ 4 }};
struct GSHW00JW00HS00 gshw00jw00hs00_16[2] = {{ 1, { 2, 3 } },{ 4, { 5 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSHW00JW00HU00 {
	unsigned long m1;
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct GSHW00JW00HU00 gshw00jw00hu00_0[2] = {{ 1, { 2 } },{ 3, { 4 } }};
struct GSHW00JW00HU00 gshw00jw00hu00_1[2] = {{ 1, { 2 } }};
struct GSHW00JW00HU00 gshw00jw00hu00_2[2] = {{ 1 },{ 3, { 4 } }};
struct GSHW00JW00HU00 gshw00jw00hu00_3[2] = {{ 1 }};
struct GSHW00JW00HU00 gshw00jw00hu00_4[2] = {{ 1 },{ 3 }};

struct GSHW00JW00HA01 {
	unsigned long m1;
	unsigned long   :0;
	unsigned char m3[3];
};

struct GSHW00JW00HA01 gshw00jw00ha01_0[2] = {{ 1, "23" },{ 4, "56" }};
struct GSHW00JW00HA01 gshw00jw00ha01_1[2] = {{ 1, "23" }};
struct GSHW00JW00HA01 gshw00jw00ha01_2[2] = {{ 1 },{ 4, "56" }};
struct GSHW00JW00HA01 gshw00jw00ha01_3[2] = {{ 1 }};
struct GSHW00JW00HA01 gshw00jw00ha01_4[2] = {{ 1, "2" },{ 4, "56" }};
struct GSHW00JW00HA01 gshw00jw00ha01_5[2] = {{ 1, "2" }};
struct GSHW00JW00HA01 gshw00jw00ha01_8[2] = {{ 1, "23" },{ 4 }};
struct GSHW00JW00HA01 gshw00jw00ha01_16[2] = {{ 1, "23" },{ 4, "5" }};

struct GSHW00JW00HA04 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3[2];
};

struct GSHW00JW00HA04 gshw00jw00ha04_0[2] = {{ 1, {2,3} },{ 4, {5,6} }};
struct GSHW00JW00HA04 gshw00jw00ha04_1[2] = {{ 1, {2,3} }};
struct GSHW00JW00HA04 gshw00jw00ha04_2[2] = {{ 1 },{ 4, {5,6} }};
struct GSHW00JW00HA04 gshw00jw00ha04_3[2] = {{ 1 }};
struct GSHW00JW00HA04 gshw00jw00ha04_4[2] = {{ 1, {2} },{ 4, {5,6} }};
struct GSHW00JW00HA04 gshw00jw00ha04_5[2] = {{ 1, {2} }};
struct GSHW00JW00HA04 gshw00jw00ha04_8[2] = {{ 1, {2,3} },{ 4 }};
struct GSHW00JW00HA04 gshw00jw00ha04_16[2] = {{ 1, {2,3} },{ 4, {5} }};

int main() {

	printf("%lu\n" , gshw00jw00hw00_0[0].m1);
	printf("%lu\n" , gshw00jw00hw00_0[0].m3);
	printf("%lu\n" , gshw00jw00hw00_0[1].m1);
	printf("%lu\n" , gshw00jw00hw00_0[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00hw00_1[0].m1);
	printf("%lu\n" , gshw00jw00hw00_1[0].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00hw00_2[0].m1);
	printf("%lu\n" , gshw00jw00hw00_2[1].m1);
	printf("%lu\n" , gshw00jw00hw00_2[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00hw00_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hw00_4[0].m1);
	printf("%lu\n" , gshw00jw00hw00_4[0].m3);
	printf("%lu\n" , gshw00jw00hw00_4[1].m1);
	printf("\n");

	printf("%lu\n" , gshw00jw00iw03_0[0].m1);
	printf("%d\n" , gshw00jw00iw03_0[0].m3);
	printf("%lu\n" , gshw00jw00iw03_0[1].m1);
	printf("%d\n" , gshw00jw00iw03_0[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw03_1[0].m1);
	printf("%d\n" , gshw00jw00iw03_1[0].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw03_2[0].m1);
	printf("%lu\n" , gshw00jw00iw03_2[1].m1);
	printf("%d\n" , gshw00jw00iw03_2[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw03_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw03_4[0].m1);
	printf("%d\n" , gshw00jw00iw03_4[0].m3);
	printf("%lu\n" , gshw00jw00iw03_4[1].m1);
	printf("\n");

	printf("%lu\n" , gshw00jw00iw29_0[0].m1);
	printf("%d\n" , gshw00jw00iw29_0[0].m3);
	printf("%lu\n" , gshw00jw00iw29_0[1].m1);
	printf("%d\n" , gshw00jw00iw29_0[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw29_1[0].m1);
	printf("%d\n" , gshw00jw00iw29_1[0].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw29_2[0].m1);
	printf("%lu\n" , gshw00jw00iw29_2[1].m1);
	printf("%d\n" , gshw00jw00iw29_2[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw29_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00iw29_4[0].m1);
	printf("%d\n" , gshw00jw00iw29_4[0].m3);
	printf("%lu\n" , gshw00jw00iw29_4[1].m1);
	printf("\n");

	printf("%lu\n" , gshw00jw00hs00_0[0].m1);
	printf("%u\n"  , gshw00jw00hs00_0[0].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_0[0].m3.m2);
	printf("%lu\n" , gshw00jw00hs00_0[1].m1);
	printf("%u\n"  , gshw00jw00hs00_0[1].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_0[1].m3.m2);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_1[0].m1);
	printf("%u\n"  , gshw00jw00hs00_1[0].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_1[0].m3.m2);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_2[0].m1);
	printf("%lu\n" , gshw00jw00hs00_2[1].m1);
	printf("%u\n"  , gshw00jw00hs00_2[1].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_2[1].m3.m2);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_4[0].m1);
	printf("%u\n"  , gshw00jw00hs00_4[0].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_4[1].m1);
	printf("%u\n"  , gshw00jw00hs00_4[1].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_4[1].m3.m2);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_5[0].m1);
	printf("%u\n"  , gshw00jw00hs00_5[0].m3.m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_8[0].m1);
	printf("%u\n"  , gshw00jw00hs00_8[0].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_8[0].m3.m2);
	printf("%lu\n" , gshw00jw00hs00_8[1].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hs00_16[0].m1);
	printf("%u\n"  , gshw00jw00hs00_16[0].m3.m1);
	printf("%lu\n" , gshw00jw00hs00_16[0].m3.m2);
	printf("%lu\n" , gshw00jw00hs00_16[1].m1);
	printf("%u\n"  , gshw00jw00hs00_16[1].m3.m1);
	printf("\n");

	printf("%lu\n" , gshw00jw00hu00_0[0].m1);
	printf("%u\n"  , gshw00jw00hu00_0[0].m3.m1);
	printf("%lu\n" , gshw00jw00hu00_0[1].m1);
	printf("%u\n"  , gshw00jw00hu00_0[1].m3.m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hu00_1[0].m1);
	printf("%u\n"  , gshw00jw00hu00_1[0].m3.m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hu00_2[0].m1);
	printf("%lu\n" , gshw00jw00hu00_2[1].m1);
	printf("%u\n"  , gshw00jw00hu00_2[1].m3.m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hu00_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00hu00_4[0].m1);
	printf("%lu\n" , gshw00jw00hu00_4[1].m1);
	printf("\n");

	printf("%lu\n" , gshw00jw00ha01_0[0].m1);
	printf("%s\n"  , gshw00jw00ha01_0[0].m3);
	printf("%lu\n" , gshw00jw00ha01_0[1].m1);
	printf("%s\n"  , gshw00jw00ha01_0[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_1[0].m1);
	printf("%s\n"  , gshw00jw00ha01_1[0].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_2[0].m1);
	printf("%lu\n" , gshw00jw00ha01_2[1].m1);
	printf("%s\n"  , gshw00jw00ha01_2[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_4[0].m1);
	printf("%s\n"  , gshw00jw00ha01_4[0].m3);
	printf("%lu\n" , gshw00jw00ha01_4[1].m1);
	printf("%s\n"  , gshw00jw00ha01_4[1].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_5[0].m1);
	printf("%s\n"  , gshw00jw00ha01_5[0].m3);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_8[0].m1);
	printf("%s\n"  , gshw00jw00ha01_8[0].m3);
	printf("%lu\n" , gshw00jw00ha01_8[1].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha01_16[0].m1);
	printf("%s\n"  , gshw00jw00ha01_16[0].m3);
	printf("%lu\n" , gshw00jw00ha01_16[1].m1);
	printf("%s\n"  , gshw00jw00ha01_16[1].m3);
	printf("\n");

	printf("%lu\n" , gshw00jw00ha04_0[0].m1);
	printf("%lu\n" , gshw00jw00ha04_0[0].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_0[0].m3[1]);
	printf("%lu\n" , gshw00jw00ha04_0[1].m1);
	printf("%lu\n" , gshw00jw00ha04_0[1].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_0[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_1[0].m1);
	printf("%lu\n" , gshw00jw00ha04_1[0].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_1[0].m3[1]);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_2[0].m1);
	printf("%lu\n" , gshw00jw00ha04_2[1].m1);
	printf("%lu\n" , gshw00jw00ha04_2[1].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_2[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_3[0].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_4[0].m1);
	printf("%lu\n" , gshw00jw00ha04_4[0].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_4[1].m1);
	printf("%lu\n" , gshw00jw00ha04_4[1].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_4[1].m3[1]);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_5[0].m1);
	printf("%lu\n" , gshw00jw00ha04_5[0].m3[0]);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_8[0].m1);
	printf("%lu\n" , gshw00jw00ha04_8[0].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_8[0].m3[1]);
	printf("%lu\n" , gshw00jw00ha04_8[1].m1);
	printf("\n");
	printf("%lu\n" , gshw00jw00ha04_16[0].m1);
	printf("%lu\n" , gshw00jw00ha04_16[0].m3[0]);
	printf("%lu\n" , gshw00jw00ha04_16[0].m3[1]);
	printf("%lu\n" , gshw00jw00ha04_16[1].m1);
	printf("%lu\n" , gshw00jw00ha04_16[1].m3[0]);
	printf("\n");

	return 0;
}
