
	
	
	
	

#include <stdio.h>                                              

struct DSIW03JW00HW00 {
	unsigned long m1:3;
	unsigned long   :0;
	unsigned long m3;
};

struct DSIW03JW00HW00 dsiw03jw00hw00_0 = { 1, 2 };
struct DSIW03JW00HW00 dsiw03jw00hw00_1 = { 1 };

struct DSIW03JW00IW03 {
	unsigned long m1:3;
	unsigned long   :0;
	unsigned long m3:3;
};

struct DSIW03JW00IW03 dsiw03jw00iw03_0 = { 1, 2 };
struct DSIW03JW00IW03 dsiw03jw00iw03_1 = { 1 };

struct DSIW03JW00IW29 {
	unsigned long m1:3;
	unsigned long   :0;
	unsigned long m3:29;
};

struct DSIW03JW00IW29 dsiw03jw00iw29_0 = { 1, 2 };
struct DSIW03JW00IW29 dsiw03jw00iw29_1 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW03JW00HS00 {
	unsigned long m1:3;
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct DSIW03JW00HS00 dsiw03jw00hs00_0 = { 1, { 2, 3 } };
struct DSIW03JW00HS00 dsiw03jw00hs00_1 = { 1 };
struct DSIW03JW00HS00 dsiw03jw00hs00_2 = { 1, { 2 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW03JW00HU00 {
	unsigned long m1:3;
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct DSIW03JW00HU00 dsiw03jw00hu00_0 = { 1, { 2 } };
struct DSIW03JW00HU00 dsiw03jw00hu00_1 = { 1 };

struct DSIW03JW00HA01 {
	unsigned long m1:3;
	unsigned long   :0;
	unsigned char m3[3];
};

struct DSIW03JW00HA01 dsiw03jw00ha01_0 = { 1, "23" };
struct DSIW03JW00HA01 dsiw03jw00ha01_1 = { 1 };
struct DSIW03JW00HA01 dsiw03jw00ha01_2 = { 1, "2" };

struct DSIW03JW00HA04 {
	unsigned long m1:3;
	unsigned long   :0;
	unsigned long m3[2];
};

struct DSIW03JW00HA04 dsiw03jw00ha04_0 = { 1, {2,3} };
struct DSIW03JW00HA04 dsiw03jw00ha04_1 = { 1 };
struct DSIW03JW00HA04 dsiw03jw00ha04_2 = { 1, {2} };

int lto_sub_565() {

	printf("%lu\n" , dsiw03jw00hw00_0.m1);
	printf("%lu\n" , dsiw03jw00hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw03jw00hw00_1.m1);
	printf("\n");

	printf("%lu\n" , dsiw03jw00iw03_0.m1);
	printf("%lu\n" , dsiw03jw00iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw03jw00iw03_1.m1);
	printf("\n");

	printf("%lu\n" , dsiw03jw00iw29_0.m1);
	printf("%lu\n" , dsiw03jw00iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw03jw00iw29_1.m1);
	printf("\n");

	printf("%lu\n" , dsiw03jw00hs00_0.m1);
	printf("%u\n"  , dsiw03jw00hs00_0.m3.m1);
	printf("%lu\n" , dsiw03jw00hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dsiw03jw00hs00_1.m1);
	printf("\n");
	printf("%lu\n" , dsiw03jw00hs00_2.m1);
	printf("%u\n"  , dsiw03jw00hs00_2.m3.m1);
	printf("\n");

	printf("%lu\n" , dsiw03jw00hu00_0.m1);
	printf("%u\n"  , dsiw03jw00hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dsiw03jw00hu00_1.m1);
	printf("\n");

	printf("%lu\n" , dsiw03jw00ha01_0.m1);
	printf("%s\n"  , dsiw03jw00ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw03jw00ha01_1.m1);
	printf("\n");
	printf("%lu\n" , dsiw03jw00ha01_2.m1);
	printf("%s\n"  , dsiw03jw00ha01_2.m3);
	printf("\n");

	printf("%lu\n" , dsiw03jw00ha04_0.m1);
	printf("%lu\n" , dsiw03jw00ha04_0.m3[0]);
	printf("%lu\n" , dsiw03jw00ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsiw03jw00ha04_1.m1);
	printf("\n");
	printf("%lu\n" , dsiw03jw00ha04_2.m1);
	printf("%lu\n" , dsiw03jw00ha04_2.m3[0]);
	printf("\n");

	return 0;
}
