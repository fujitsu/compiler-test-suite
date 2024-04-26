                                                             
#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHS00IW29HW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	unsigned long m3;
};

struct DSHS00IW29HW00 dshs00iw29hw00_0 = { { 1, 2 }, 3, 4 };
struct DSHS00IW29HW00 dshs00iw29hw00_1 = { { 1 }, 3, 4 };
struct DSHS00IW29HW00 dshs00iw29hw00_2 = { { 1, 2 }, 3 };
struct DSHS00IW29HW00 dshs00iw29hw00_3 = { { 1 }, 3 };

struct DSHS00IW29IW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	unsigned long m3:3;
};

struct DSHS00IW29IW03 dshs00iw29iw03_0 = { { 1, 2 }, 3, 4 };
struct DSHS00IW29IW03 dshs00iw29iw03_1 = { { 1 }, 3, 4 };
struct DSHS00IW29IW03 dshs00iw29iw03_2 = { { 1, 2 }, 3 };
struct DSHS00IW29IW03 dshs00iw29iw03_3 = { { 1 }, 3 };

struct DSHS00IW29IW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	unsigned long m3:29;
};

struct DSHS00IW29IW29 dshs00iw29iw29_0 = { { 1, 2 }, 3, 4 };
struct DSHS00IW29IW29 dshs00iw29iw29_1 = { { 1 }, 3, 4 };
struct DSHS00IW29IW29 dshs00iw29iw29_2 = { { 1, 2 }, 3 };
struct DSHS00IW29IW29 dshs00iw29iw29_3 = { { 1 }, 3 };

struct DSHS00IW29HS00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	struct SUB_SHB00HW00 m3;
};

struct DSHS00IW29HS00 dshs00iw29hs00_0 = { { 1, 2 }, 3, { 4, 5 } };
struct DSHS00IW29HS00 dshs00iw29hs00_1 = { { 1 }, 3, { 4, 5 } };
struct DSHS00IW29HS00 dshs00iw29hs00_2 = { { 1, 2 }, 3 };
struct DSHS00IW29HS00 dshs00iw29hs00_3 = { { 1 }, 3 };
struct DSHS00IW29HS00 dshs00iw29hs00_4 = { { 1, 2 }, 3, { 4 } };
struct DSHS00IW29HS00 dshs00iw29hs00_5 = { { 1 }, 3, { 4 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHS00IW29HU00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	union SUB_UHB00HW00 m3;
};

struct DSHS00IW29HU00 dshs00iw29hu00_0 = { { 1, 2 }, 3, { 4 } };
struct DSHS00IW29HU00 dshs00iw29hu00_1 = { { 1 }, 3, { 4 } };
struct DSHS00IW29HU00 dshs00iw29hu00_2 = { { 1, 2 }, 3 };
struct DSHS00IW29HU00 dshs00iw29hu00_3 = { { 1 }, 3 };

struct DSHS00IW29HA01 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	unsigned char m3[3];
};

struct DSHS00IW29HA01 dshs00iw29ha01_0 = { { 1, 2 }, 3, "45" };
struct DSHS00IW29HA01 dshs00iw29ha01_1 = { { 1 }, 3, "45" };
struct DSHS00IW29HA01 dshs00iw29ha01_2 = { { 1, 2 }, 3 };
struct DSHS00IW29HA01 dshs00iw29ha01_3 = { { 1 }, 3 };
struct DSHS00IW29HA01 dshs00iw29ha01_4 = { { 1, 2 }, 3, "4" };
struct DSHS00IW29HA01 dshs00iw29ha01_5 = { { 1 }, 3, "4" };

struct DSHS00IW29HA04 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:29;
	unsigned long m3[2];
};

struct DSHS00IW29HA04 dshs00iw29ha04_0 = { { 1, 2 }, 3, {4,5} };
struct DSHS00IW29HA04 dshs00iw29ha04_1 = { { 1 }, 3, {4,5} };
struct DSHS00IW29HA04 dshs00iw29ha04_2 = { { 1, 2 }, 3 };
struct DSHS00IW29HA04 dshs00iw29ha04_3 = { { 1 }, 3 };
struct DSHS00IW29HA04 dshs00iw29ha04_4 = { { 1, 2 }, 3, {4} };
struct DSHS00IW29HA04 dshs00iw29ha04_5 = { { 1 }, 3, {4} };

int main() {

	printf("%u\n"  , dshs00iw29hw00_0.m1.m1);
	printf("%lu\n" , dshs00iw29hw00_0.m1.m2);
	printf("%d\n" , dshs00iw29hw00_0.m2);
	printf("%lu\n" , dshs00iw29hw00_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29hw00_1.m1.m1);
	printf("%d\n" , dshs00iw29hw00_1.m2);
	printf("%lu\n" , dshs00iw29hw00_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29hw00_2.m1.m1);
	printf("%lu\n" , dshs00iw29hw00_2.m1.m2);
	printf("%d\n" , dshs00iw29hw00_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29hw00_3.m1.m1);
	printf("%d\n" , dshs00iw29hw00_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw29iw03_0.m1.m1);
	printf("%lu\n" , dshs00iw29iw03_0.m1.m2);
	printf("%d\n" , dshs00iw29iw03_0.m2);
	printf("%d\n" , dshs00iw29iw03_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29iw03_1.m1.m1);
	printf("%d\n" , dshs00iw29iw03_1.m2);
	printf("%d\n" , dshs00iw29iw03_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29iw03_2.m1.m1);
	printf("%lu\n" , dshs00iw29iw03_2.m1.m2);
	printf("%d\n" , dshs00iw29iw03_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29iw03_3.m1.m1);
	printf("%d\n" , dshs00iw29iw03_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw29iw29_0.m1.m1);
	printf("%lu\n" , dshs00iw29iw29_0.m1.m2);
	printf("%d\n" , dshs00iw29iw29_0.m2);
	printf("%d\n" , dshs00iw29iw29_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29iw29_1.m1.m1);
	printf("%d\n" , dshs00iw29iw29_1.m2);
	printf("%d\n" , dshs00iw29iw29_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29iw29_2.m1.m1);
	printf("%lu\n" , dshs00iw29iw29_2.m1.m2);
	printf("%d\n" , dshs00iw29iw29_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29iw29_3.m1.m1);
	printf("%d\n" , dshs00iw29iw29_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw29hs00_0.m1.m1);
	printf("%lu\n" , dshs00iw29hs00_0.m1.m2);
	printf("%d\n" , dshs00iw29hs00_0.m2);
	printf("%u\n"  , dshs00iw29hs00_0.m3.m1);
	printf("%lu\n" , dshs00iw29hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29hs00_1.m1.m1);
	printf("%d\n" , dshs00iw29hs00_1.m2);
	printf("%u\n"  , dshs00iw29hs00_1.m3.m1);
	printf("%lu\n" , dshs00iw29hs00_1.m3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29hs00_2.m1.m1);
	printf("%lu\n" , dshs00iw29hs00_2.m1.m2);
	printf("%d\n" , dshs00iw29hs00_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29hs00_3.m1.m1);
	printf("%d\n" , dshs00iw29hs00_3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29hs00_4.m1.m1);
	printf("%lu\n" , dshs00iw29hs00_4.m1.m2);
	printf("%d\n" , dshs00iw29hs00_4.m2);
	printf("%u\n"  , dshs00iw29hs00_4.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00iw29hs00_5.m1.m1);
	printf("%d\n" , dshs00iw29hs00_5.m2);
	printf("%u\n"  , dshs00iw29hs00_5.m3.m1);
	printf("\n");

	printf("%u\n"  , dshs00iw29hu00_0.m1.m1);
	printf("%lu\n" , dshs00iw29hu00_0.m1.m2);
	printf("%d\n" , dshs00iw29hu00_0.m2);
	printf("%u\n"  , dshs00iw29hu00_0.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00iw29hu00_1.m1.m1);
	printf("%d\n" , dshs00iw29hu00_1.m2);
	printf("%u\n"  , dshs00iw29hu00_1.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00iw29hu00_2.m1.m1);
	printf("%lu\n" , dshs00iw29hu00_2.m1.m2);
	printf("%d\n" , dshs00iw29hu00_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29hu00_3.m1.m1);
	printf("%d\n" , dshs00iw29hu00_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw29ha01_0.m1.m1);
	printf("%lu\n" , dshs00iw29ha01_0.m1.m2);
	printf("%d\n" , dshs00iw29ha01_0.m2);
	printf("%s\n"  , dshs00iw29ha01_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha01_1.m1.m1);
	printf("%d\n" , dshs00iw29ha01_1.m2);
	printf("%s\n"  , dshs00iw29ha01_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha01_2.m1.m1);
	printf("%lu\n" , dshs00iw29ha01_2.m1.m2);
	printf("%d\n" , dshs00iw29ha01_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha01_3.m1.m1);
	printf("%d\n" , dshs00iw29ha01_3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha01_4.m1.m1);
	printf("%lu\n" , dshs00iw29ha01_4.m1.m2);
	printf("%d\n" , dshs00iw29ha01_4.m2);
	printf("%s\n"  , dshs00iw29ha01_4.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha01_5.m1.m1);
	printf("%d\n" , dshs00iw29ha01_5.m2);
	printf("%s\n"  , dshs00iw29ha01_5.m3);
	printf("\n");

	printf("%u\n"  , dshs00iw29ha04_0.m1.m1);
	printf("%lu\n" , dshs00iw29ha04_0.m1.m2);
	printf("%d\n" , dshs00iw29ha04_0.m2);
	printf("%lu\n" , dshs00iw29ha04_0.m3[0]);
	printf("%lu\n" , dshs00iw29ha04_0.m3[1]);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha04_1.m1.m1);
	printf("%d\n" , dshs00iw29ha04_1.m2);
	printf("%lu\n" , dshs00iw29ha04_1.m3[0]);
	printf("%lu\n" , dshs00iw29ha04_1.m3[1]);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha04_2.m1.m1);
	printf("%lu\n" , dshs00iw29ha04_2.m1.m2);
	printf("%d\n" , dshs00iw29ha04_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha04_3.m1.m1);
	printf("%d\n" , dshs00iw29ha04_3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha04_4.m1.m1);
	printf("%lu\n" , dshs00iw29ha04_4.m1.m2);
	printf("%d\n" , dshs00iw29ha04_4.m2);
	printf("%lu\n" , dshs00iw29ha04_4.m3[0]);
	printf("\n");
	printf("%u\n"  , dshs00iw29ha04_5.m1.m1);
	printf("%d\n" , dshs00iw29ha04_5.m2);
	printf("%lu\n" , dshs00iw29ha04_5.m3[0]);
	printf("\n");

	return 0;
}
