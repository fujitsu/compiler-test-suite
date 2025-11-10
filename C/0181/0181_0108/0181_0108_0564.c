
	
	
	
	

#include <stdio.h>                                              

struct DSJW03IW29HW00 {
	unsigned long   :3;
	unsigned long m2:29;
	unsigned long m3;
};

struct DSJW03IW29HW00 dsjw03iw29hw00_0 = { 1, 2 };
struct DSJW03IW29HW00 dsjw03iw29hw00_1 = { 1 };

struct DSJW03IW29IW03 {
	unsigned long   :3;
	unsigned long m2:29;
	unsigned long m3:3;
};

struct DSJW03IW29IW03 dsjw03iw29iw03_0 = { 1, 2 };
struct DSJW03IW29IW03 dsjw03iw29iw03_1 = { 1 };

struct DSJW03IW29IW29 {
	unsigned long   :3;
	unsigned long m2:29;
	unsigned long m3:29;
};

struct DSJW03IW29IW29 dsjw03iw29iw29_0 = { 1, 2 };
struct DSJW03IW29IW29 dsjw03iw29iw29_1 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW03IW29HS00 {
	unsigned long   :3;
	unsigned long m2:29;
	struct SUB_SHB00HW00 m3;
};

struct DSJW03IW29HS00 dsjw03iw29hs00_0 = { 1, { 2, 3 } };
struct DSJW03IW29HS00 dsjw03iw29hs00_1 = { 1 };
struct DSJW03IW29HS00 dsjw03iw29hs00_2 = { 1, { 2 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW03IW29HU00 {
	unsigned long   :3;
	unsigned long m2:29;
	union SUB_UHB00HW00 m3;
};

struct DSJW03IW29HU00 dsjw03iw29hu00_0 = { 1, { 2 } };
struct DSJW03IW29HU00 dsjw03iw29hu00_1 = { 1 };

struct DSJW03IW29HA01 {
	unsigned long   :3;
	unsigned long m2:29;
	unsigned char m3[3];
};

struct DSJW03IW29HA01 dsjw03iw29ha01_0 = { 1, "23" };
struct DSJW03IW29HA01 dsjw03iw29ha01_1 = { 1 };
struct DSJW03IW29HA01 dsjw03iw29ha01_2 = { 1, "2" };

struct DSJW03IW29HA04 {
	unsigned long   :3;
	unsigned long m2:29;
	unsigned long m3[2];
};

struct DSJW03IW29HA04 dsjw03iw29ha04_0 = { 1, {2,3} };
struct DSJW03IW29HA04 dsjw03iw29ha04_1 = { 1 };
struct DSJW03IW29HA04 dsjw03iw29ha04_2 = { 1, {2} };

int lto_sub_579() {

	printf("%lu\n" , dsjw03iw29hw00_0.m2);
	printf("%lu\n" , dsjw03iw29hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw03iw29hw00_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw03iw29iw03_0.m2);
	printf("%lu\n" , dsjw03iw29iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw03iw29iw03_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw03iw29iw29_0.m2);
	printf("%lu\n" , dsjw03iw29iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw03iw29iw29_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw03iw29hs00_0.m2);
	printf("%u\n"  , dsjw03iw29hs00_0.m3.m1);
	printf("%lu\n" , dsjw03iw29hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dsjw03iw29hs00_1.m2);
	printf("\n");
	printf("%lu\n" , dsjw03iw29hs00_2.m2);
	printf("%u\n"  , dsjw03iw29hs00_2.m3.m1);
	printf("\n");

	printf("%lu\n" , dsjw03iw29hu00_0.m2);
	printf("%u\n"  , dsjw03iw29hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dsjw03iw29hu00_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw03iw29ha01_0.m2);
	printf("%s\n"  , dsjw03iw29ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw03iw29ha01_1.m2);
	printf("\n");
	printf("%lu\n" , dsjw03iw29ha01_2.m2);
	printf("%s\n"  , dsjw03iw29ha01_2.m3);
	printf("\n");

	printf("%lu\n" , dsjw03iw29ha04_0.m2);
	printf("%lu\n" , dsjw03iw29ha04_0.m3[0]);
	printf("%lu\n" , dsjw03iw29ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsjw03iw29ha04_1.m2);
	printf("\n");
	printf("%lu\n" , dsjw03iw29ha04_2.m2);
	printf("%lu\n" , dsjw03iw29ha04_2.m3[0]);
	printf("\n");

	return 0;
}
