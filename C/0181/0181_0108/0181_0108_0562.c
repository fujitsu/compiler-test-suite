
	
	
	
	

#include <stdio.h>                                              

struct DSJW00JW29HW00 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3;
};

struct DSJW00JW29HW00 dsjw00jw29hw00_0 = { 1 };

struct DSJW00JW29IW03 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3:3;
};

struct DSJW00JW29IW03 dsjw00jw29iw03_0 = { 1 };

struct DSJW00JW29IW29 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3:29;
};

struct DSJW00JW29IW29 dsjw00jw29iw29_0 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW00JW29HS00 {
	unsigned long   :0;
	unsigned long   :29;
	struct SUB_SHB00HW00 m3;
};

struct DSJW00JW29HS00 dsjw00jw29hs00_0 = { { 1, 2 } };
struct DSJW00JW29HS00 dsjw00jw29hs00_1 = { { 1 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW00JW29HU00 {
	unsigned long   :0;
	unsigned long   :29;
	union SUB_UHB00HW00 m3;
};

struct DSJW00JW29HU00 dsjw00jw29hu00_0 = { { 1 } };

struct DSJW00JW29HA01 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned char m3[3];
};

struct DSJW00JW29HA01 dsjw00jw29ha01_0 = { "12" };
struct DSJW00JW29HA01 dsjw00jw29ha01_1 = { "1" };

struct DSJW00JW29HA04 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3[2];
};

struct DSJW00JW29HA04 dsjw00jw29ha04_0 = { {1,2} };
struct DSJW00JW29HA04 dsjw00jw29ha04_1 = { {1} };

int lto_sub_577() {

	printf("%lu\n" , dsjw00jw29hw00_0.m3);
	printf("\n");

	printf("%lu\n" , dsjw00jw29iw03_0.m3);
	printf("\n");

	printf("%lu\n" , dsjw00jw29iw29_0.m3);
	printf("\n");

	printf("%u\n"  , dsjw00jw29hs00_0.m3.m1);
	printf("%lu\n" , dsjw00jw29hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dsjw00jw29hs00_1.m3.m1);
	printf("\n");

	printf("%u\n"  , dsjw00jw29hu00_0.m3.m1);
	printf("\n");

	printf("%s\n"  , dsjw00jw29ha01_0.m3);
	printf("\n");
	printf("%s\n"  , dsjw00jw29ha01_1.m3);
	printf("\n");

	printf("%lu\n" , dsjw00jw29ha04_0.m3[0]);
	printf("%lu\n" , dsjw00jw29ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsjw00jw29ha04_1.m3[0]);
	printf("\n");

	return 0;
}
