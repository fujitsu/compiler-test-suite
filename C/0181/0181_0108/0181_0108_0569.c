
	
	
	
	

#include <stdio.h>                                              

struct DSJW29IW29HW00 {
	unsigned long   :29;
	unsigned long m2:29;
	unsigned long m3;
};

struct DSJW29IW29HW00 dsjw29iw29hw00_0 = { 1, 2 };
struct DSJW29IW29HW00 dsjw29iw29hw00_1 = { 1 };

struct DSJW29IW29IW03 {
	unsigned long   :29;
	unsigned long m2:29;
	unsigned long m3:3;
};

struct DSJW29IW29IW03 dsjw29iw29iw03_0 = { 1, 2 };
struct DSJW29IW29IW03 dsjw29iw29iw03_1 = { 1 };

struct DSJW29IW29IW29 {
	unsigned long   :29;
	unsigned long m2:29;
	unsigned long m3:29;
};

struct DSJW29IW29IW29 dsjw29iw29iw29_0 = { 1, 2 };
struct DSJW29IW29IW29 dsjw29iw29iw29_1 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW29IW29HS00 {
	unsigned long   :29;
	unsigned long m2:29;
	struct SUB_SHB00HW00 m3;
};

struct DSJW29IW29HS00 dsjw29iw29hs00_0 = { 1, { 2, 3 } };
struct DSJW29IW29HS00 dsjw29iw29hs00_1 = { 1 };
struct DSJW29IW29HS00 dsjw29iw29hs00_2 = { 1, { 2 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW29IW29HU00 {
	unsigned long   :29;
	unsigned long m2:29;
	union SUB_UHB00HW00 m3;
};

struct DSJW29IW29HU00 dsjw29iw29hu00_0 = { 1, { 2 } };
struct DSJW29IW29HU00 dsjw29iw29hu00_1 = { 1 };

struct DSJW29IW29HA01 {
	unsigned long   :29;
	unsigned long m2:29;
	unsigned char m3[3];
};

struct DSJW29IW29HA01 dsjw29iw29ha01_0 = { 1, "23" };
struct DSJW29IW29HA01 dsjw29iw29ha01_1 = { 1 };
struct DSJW29IW29HA01 dsjw29iw29ha01_2 = { 1, "2" };

struct DSJW29IW29HA04 {
	unsigned long   :29;
	unsigned long m2:29;
	unsigned long m3[2];
};

struct DSJW29IW29HA04 dsjw29iw29ha04_0 = { 1, {2,3} };
struct DSJW29IW29HA04 dsjw29iw29ha04_1 = { 1 };
struct DSJW29IW29HA04 dsjw29iw29ha04_2 = { 1, {2} };

int lto_sub_584() {

	printf("%lu\n" , dsjw29iw29hw00_0.m2);
	printf("%lu\n" , dsjw29iw29hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw29iw29hw00_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw29iw29iw03_0.m2);
	printf("%lu\n" , dsjw29iw29iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw29iw29iw03_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw29iw29iw29_0.m2);
	printf("%lu\n" , dsjw29iw29iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw29iw29iw29_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw29iw29hs00_0.m2);
	printf("%u\n"  , dsjw29iw29hs00_0.m3.m1);
	printf("%lu\n" , dsjw29iw29hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dsjw29iw29hs00_1.m2);
	printf("\n");
	printf("%lu\n" , dsjw29iw29hs00_2.m2);
	printf("%u\n"  , dsjw29iw29hs00_2.m3.m1);
	printf("\n");

	printf("%lu\n" , dsjw29iw29hu00_0.m2);
	printf("%u\n"  , dsjw29iw29hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dsjw29iw29hu00_1.m2);
	printf("\n");

	printf("%lu\n" , dsjw29iw29ha01_0.m2);
	printf("%s\n"  , dsjw29iw29ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dsjw29iw29ha01_1.m2);
	printf("\n");
	printf("%lu\n" , dsjw29iw29ha01_2.m2);
	printf("%s\n"  , dsjw29iw29ha01_2.m3);
	printf("\n");

	printf("%lu\n" , dsjw29iw29ha04_0.m2);
	printf("%lu\n" , dsjw29iw29ha04_0.m3[0]);
	printf("%lu\n" , dsjw29iw29ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsjw29iw29ha04_1.m2);
	printf("\n");
	printf("%lu\n" , dsjw29iw29ha04_2.m2);
	printf("%lu\n" , dsjw29iw29ha04_2.m3[0]);
	printf("\n");

	return 0;
}
