
	
	
	
	

#include <stdio.h>                                              

struct DSIW29IW29HW00 {
	unsigned long m1:29;
	unsigned long m2:29;
	unsigned long m3;
};

struct DSIW29IW29HW00 dsiw29iw29hw00_0 = { 1, 2, 3 };
struct DSIW29IW29HW00 dsiw29iw29hw00_1 = { 1, 2 };

struct DSIW29IW29IW03 {
	unsigned long m1:29;
	unsigned long m2:29;
	unsigned long m3:3;
};

struct DSIW29IW29IW03 dsiw29iw29iw03_0 = { 1, 2, 3 };
struct DSIW29IW29IW03 dsiw29iw29iw03_1 = { 1, 2 };

struct DSIW29IW29IW29 {
	unsigned long m1:29;
	unsigned long m2:29;
	unsigned long m3:29;
};

struct DSIW29IW29IW29 dsiw29iw29iw29_0 = { 1, 2, 3 };
struct DSIW29IW29IW29 dsiw29iw29iw29_1 = { 1, 2 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW29IW29HS00 {
	unsigned long m1:29;
	unsigned long m2:29;
	struct SUB_SHB00HW00 m3;
};

struct DSIW29IW29HS00 dsiw29iw29hs00_0 = { 1, 2, { 3, 4 } };
struct DSIW29IW29HS00 dsiw29iw29hs00_1 = { 1, 2 };
struct DSIW29IW29HS00 dsiw29iw29hs00_2 = { 1, 2, { 3 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW29IW29HU00 {
	unsigned long m1:29;
	unsigned long m2:29;
	union SUB_UHB00HW00 m3;
};

struct DSIW29IW29HU00 dsiw29iw29hu00_0 = { 1, 2, { 3 } };
struct DSIW29IW29HU00 dsiw29iw29hu00_1 = { 1, 2 };

struct DSIW29IW29HA01 {
	unsigned long m1:29;
	unsigned long m2:29;
	unsigned char m3[3];
};

struct DSIW29IW29HA01 dsiw29iw29ha01_0 = { 1, 2, "34" };
struct DSIW29IW29HA01 dsiw29iw29ha01_1 = { 1, 2 };
struct DSIW29IW29HA01 dsiw29iw29ha01_2 = { 1, 2, "3" };

struct DSIW29IW29HA04 {
	unsigned long m1:29;
	unsigned long m2:29;
	unsigned long m3[2];
};

struct DSIW29IW29HA04 dsiw29iw29ha04_0 = { 1, 2, {3,4} };
struct DSIW29IW29HA04 dsiw29iw29ha04_1 = { 1, 2 };
struct DSIW29IW29HA04 dsiw29iw29ha04_2 = { 1, 2, {3} };

int lto_sub_569() {

	printf("%lu\n" , dsiw29iw29hw00_0.m1);
	printf("%lu\n" , dsiw29iw29hw00_0.m2);
	printf("%lu\n" , dsiw29iw29hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw29iw29hw00_1.m1);
	printf("%lu\n" , dsiw29iw29hw00_1.m2);
	printf("\n");

	printf("%lu\n" , dsiw29iw29iw03_0.m1);
	printf("%lu\n" , dsiw29iw29iw03_0.m2);
	printf("%lu\n" , dsiw29iw29iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw29iw29iw03_1.m1);
	printf("%lu\n" , dsiw29iw29iw03_1.m2);
	printf("\n");

	printf("%lu\n" , dsiw29iw29iw29_0.m1);
	printf("%lu\n" , dsiw29iw29iw29_0.m2);
	printf("%lu\n" , dsiw29iw29iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw29iw29iw29_1.m1);
	printf("%lu\n" , dsiw29iw29iw29_1.m2);
	printf("\n");

	printf("%lu\n" , dsiw29iw29hs00_0.m1);
	printf("%lu\n" , dsiw29iw29hs00_0.m2);
	printf("%u\n"  , dsiw29iw29hs00_0.m3.m1);
	printf("%lu\n" , dsiw29iw29hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dsiw29iw29hs00_1.m1);
	printf("%lu\n" , dsiw29iw29hs00_1.m2);
	printf("\n");
	printf("%lu\n" , dsiw29iw29hs00_2.m1);
	printf("%lu\n" , dsiw29iw29hs00_2.m2);
	printf("%u\n"  , dsiw29iw29hs00_2.m3.m1);
	printf("\n");

	printf("%lu\n" , dsiw29iw29hu00_0.m1);
	printf("%lu\n" , dsiw29iw29hu00_0.m2);
	printf("%u\n"  , dsiw29iw29hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dsiw29iw29hu00_1.m1);
	printf("%lu\n" , dsiw29iw29hu00_1.m2);
	printf("\n");

	printf("%lu\n" , dsiw29iw29ha01_0.m1);
	printf("%lu\n" , dsiw29iw29ha01_0.m2);
	printf("%s\n"  , dsiw29iw29ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dsiw29iw29ha01_1.m1);
	printf("%lu\n" , dsiw29iw29ha01_1.m2);
	printf("\n");
	printf("%lu\n" , dsiw29iw29ha01_2.m1);
	printf("%lu\n" , dsiw29iw29ha01_2.m2);
	printf("%s\n"  , dsiw29iw29ha01_2.m3);
	printf("\n");

	printf("%lu\n" , dsiw29iw29ha04_0.m1);
	printf("%lu\n" , dsiw29iw29ha04_0.m2);
	printf("%lu\n" , dsiw29iw29ha04_0.m3[0]);
	printf("%lu\n" , dsiw29iw29ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsiw29iw29ha04_1.m1);
	printf("%lu\n" , dsiw29iw29ha04_1.m2);
	printf("\n");
	printf("%lu\n" , dsiw29iw29ha04_2.m1);
	printf("%lu\n" , dsiw29iw29ha04_2.m2);
	printf("%lu\n" , dsiw29iw29ha04_2.m3[0]);
	printf("\n");

	return 0;
}
