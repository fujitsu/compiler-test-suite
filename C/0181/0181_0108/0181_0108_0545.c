
	
	
	
	

#include <stdio.h>                                              

struct DSHW00JW00HW00 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3;
};

struct DSHW00JW00HW00 dshw00jw00hw00_0 = { 1, 2 };
struct DSHW00JW00HW00 dshw00jw00hw00_1 = { 1 };

struct DSHW00JW00IW03 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3:3;
};

struct DSHW00JW00IW03 dshw00jw00iw03_0 = { 1, 2 };
struct DSHW00JW00IW03 dshw00jw00iw03_1 = { 1 };

struct DSHW00JW00IW29 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3:29;
};

struct DSHW00JW00IW29 dshw00jw00iw29_0 = { 1, 2 };
struct DSHW00JW00IW29 dshw00jw00iw29_1 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHW00JW00HS00 {
	unsigned long m1;
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct DSHW00JW00HS00 dshw00jw00hs00_0 = { 1, { 2, 3 } };
struct DSHW00JW00HS00 dshw00jw00hs00_1 = { 1 };
struct DSHW00JW00HS00 dshw00jw00hs00_2 = { 1, { 2 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHW00JW00HU00 {
	unsigned long m1;
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct DSHW00JW00HU00 dshw00jw00hu00_0 = { 1, { 2 } };
struct DSHW00JW00HU00 dshw00jw00hu00_1 = { 1 };

struct DSHW00JW00HA01 {
	unsigned long m1;
	unsigned long   :0;
	unsigned char m3[3];
};

struct DSHW00JW00HA01 dshw00jw00ha01_0 = { 1, "23" };
struct DSHW00JW00HA01 dshw00jw00ha01_1 = { 1 };
struct DSHW00JW00HA01 dshw00jw00ha01_2 = { 1, "2" };

struct DSHW00JW00HA04 {
	unsigned long m1;
	unsigned long   :0;
	unsigned long m3[2];
};

struct DSHW00JW00HA04 dshw00jw00ha04_0 = { 1, {2,3} };
struct DSHW00JW00HA04 dshw00jw00ha04_1 = { 1 };
struct DSHW00JW00HA04 dshw00jw00ha04_2 = { 1, {2} };

int lto_sub_560() {

	printf("%lu\n" , dshw00jw00hw00_0.m1);
	printf("%lu\n" , dshw00jw00hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00jw00hw00_1.m1);
	printf("\n");

	printf("%lu\n" , dshw00jw00iw03_0.m1);
	printf("%lu\n" , dshw00jw00iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00jw00iw03_1.m1);
	printf("\n");

	printf("%lu\n" , dshw00jw00iw29_0.m1);
	printf("%lu\n" , dshw00jw00iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00jw00iw29_1.m1);
	printf("\n");

	printf("%lu\n" , dshw00jw00hs00_0.m1);
	printf("%u\n"  , dshw00jw00hs00_0.m3.m1);
	printf("%lu\n" , dshw00jw00hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dshw00jw00hs00_1.m1);
	printf("\n");
	printf("%lu\n" , dshw00jw00hs00_2.m1);
	printf("%u\n"  , dshw00jw00hs00_2.m3.m1);
	printf("\n");

	printf("%lu\n" , dshw00jw00hu00_0.m1);
	printf("%u\n"  , dshw00jw00hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dshw00jw00hu00_1.m1);
	printf("\n");

	printf("%lu\n" , dshw00jw00ha01_0.m1);
	printf("%s\n"  , dshw00jw00ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00jw00ha01_1.m1);
	printf("\n");
	printf("%lu\n" , dshw00jw00ha01_2.m1);
	printf("%s\n"  , dshw00jw00ha01_2.m3);
	printf("\n");

	printf("%lu\n" , dshw00jw00ha04_0.m1);
	printf("%lu\n" , dshw00jw00ha04_0.m3[0]);
	printf("%lu\n" , dshw00jw00ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dshw00jw00ha04_1.m1);
	printf("\n");
	printf("%lu\n" , dshw00jw00ha04_2.m1);
	printf("%lu\n" , dshw00jw00ha04_2.m3[0]);
	printf("\n");

	return 0;
}
