                                                             
#include <stdio.h>                                              

struct DSHW00IW29HW00 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3;
};

struct DSHW00IW29HW00 dshw00iw29hw00_0 = { 1, 2, 3 };
struct DSHW00IW29HW00 dshw00iw29hw00_1 = { 1, 2 };

struct DSHW00IW29IW03 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3:3;
};

struct DSHW00IW29IW03 dshw00iw29iw03_0 = { 1, 2, 3 };
struct DSHW00IW29IW03 dshw00iw29iw03_1 = { 1, 2 };

struct DSHW00IW29IW29 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3:29;
};

struct DSHW00IW29IW29 dshw00iw29iw29_0 = { 1, 2, 3 };
struct DSHW00IW29IW29 dshw00iw29iw29_1 = { 1, 2 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHW00IW29HS00 {
	unsigned long m1;
	unsigned long m2:29;
	struct SUB_SHB00HW00 m3;
};

struct DSHW00IW29HS00 dshw00iw29hs00_0 = { 1, 2, { 3, 4 } };
struct DSHW00IW29HS00 dshw00iw29hs00_1 = { 1, 2 };
struct DSHW00IW29HS00 dshw00iw29hs00_2 = { 1, 2, { 3 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHW00IW29HU00 {
	unsigned long m1;
	unsigned long m2:29;
	union SUB_UHB00HW00 m3;
};

struct DSHW00IW29HU00 dshw00iw29hu00_0 = { 1, 2, { 3 } };
struct DSHW00IW29HU00 dshw00iw29hu00_1 = { 1, 2 };

struct DSHW00IW29HA01 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned char m3[3];
};

struct DSHW00IW29HA01 dshw00iw29ha01_0 = { 1, 2, "34" };
struct DSHW00IW29HA01 dshw00iw29ha01_1 = { 1, 2 };
struct DSHW00IW29HA01 dshw00iw29ha01_2 = { 1, 2, "3" };

struct DSHW00IW29HA04 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3[2];
};

struct DSHW00IW29HA04 dshw00iw29ha04_0 = { 1, 2, {3,4} };
struct DSHW00IW29HA04 dshw00iw29ha04_1 = { 1, 2 };
struct DSHW00IW29HA04 dshw00iw29ha04_2 = { 1, 2, {3} };

int main() {

	printf("%lu\n" , dshw00iw29hw00_0.m1);
	printf("%d\n" , dshw00iw29hw00_0.m2);
	printf("%lu\n" , dshw00iw29hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00iw29hw00_1.m1);
	printf("%d\n" , dshw00iw29hw00_1.m2);
	printf("\n");

	printf("%lu\n" , dshw00iw29iw03_0.m1);
	printf("%d\n" , dshw00iw29iw03_0.m2);
	printf("%d\n" , dshw00iw29iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00iw29iw03_1.m1);
	printf("%d\n" , dshw00iw29iw03_1.m2);
	printf("\n");

	printf("%lu\n" , dshw00iw29iw29_0.m1);
	printf("%d\n" , dshw00iw29iw29_0.m2);
	printf("%d\n" , dshw00iw29iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00iw29iw29_1.m1);
	printf("%d\n" , dshw00iw29iw29_1.m2);
	printf("\n");

	printf("%lu\n" , dshw00iw29hs00_0.m1);
	printf("%d\n" , dshw00iw29hs00_0.m2);
	printf("%u\n"  , dshw00iw29hs00_0.m3.m1);
	printf("%lu\n" , dshw00iw29hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dshw00iw29hs00_1.m1);
	printf("%d\n" , dshw00iw29hs00_1.m2);
	printf("\n");
	printf("%lu\n" , dshw00iw29hs00_2.m1);
	printf("%d\n" , dshw00iw29hs00_2.m2);
	printf("%u\n"  , dshw00iw29hs00_2.m3.m1);
	printf("\n");

	printf("%lu\n" , dshw00iw29hu00_0.m1);
	printf("%d\n" , dshw00iw29hu00_0.m2);
	printf("%u\n"  , dshw00iw29hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dshw00iw29hu00_1.m1);
	printf("%d\n" , dshw00iw29hu00_1.m2);
	printf("\n");

	printf("%lu\n" , dshw00iw29ha01_0.m1);
	printf("%d\n" , dshw00iw29ha01_0.m2);
	printf("%s\n"  , dshw00iw29ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dshw00iw29ha01_1.m1);
	printf("%d\n" , dshw00iw29ha01_1.m2);
	printf("\n");
	printf("%lu\n" , dshw00iw29ha01_2.m1);
	printf("%d\n" , dshw00iw29ha01_2.m2);
	printf("%s\n"  , dshw00iw29ha01_2.m3);
	printf("\n");

	printf("%lu\n" , dshw00iw29ha04_0.m1);
	printf("%d\n" , dshw00iw29ha04_0.m2);
	printf("%lu\n" , dshw00iw29ha04_0.m3[0]);
	printf("%lu\n" , dshw00iw29ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dshw00iw29ha04_1.m1);
	printf("%d\n" , dshw00iw29ha04_1.m2);
	printf("\n");
	printf("%lu\n" , dshw00iw29ha04_2.m1);
	printf("%d\n" , dshw00iw29ha04_2.m2);
	printf("%lu\n" , dshw00iw29ha04_2.m3[0]);
	printf("\n");

	return 0;
}
