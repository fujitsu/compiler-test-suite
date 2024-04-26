                                                             
#include <stdio.h>                                              

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHU00JW03HW00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	unsigned long m3;
};

struct DSHU00JW03HW00 dshu00jw03hw00_0 = { { 1 }, 2 };
struct DSHU00JW03HW00 dshu00jw03hw00_1 = { { 1 } };

struct DSHU00JW03IW03 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	unsigned long m3:3;
};

struct DSHU00JW03IW03 dshu00jw03iw03_0 = { { 1 }, 2 };
struct DSHU00JW03IW03 dshu00jw03iw03_1 = { { 1 } };

struct DSHU00JW03IW29 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	unsigned long m3:29;
};

struct DSHU00JW03IW29 dshu00jw03iw29_0 = { { 1 }, 2 };
struct DSHU00JW03IW29 dshu00jw03iw29_1 = { { 1 } };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHU00JW03HS00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	struct SUB_SHB00HW00 m3;
};

struct DSHU00JW03HS00 dshu00jw03hs00_0 = { { 1 }, { 2, 3 } };
struct DSHU00JW03HS00 dshu00jw03hs00_1 = { { 1 } };
struct DSHU00JW03HS00 dshu00jw03hs00_2 = { { 1 }, { 2 } };

struct DSHU00JW03HU00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	union SUB_UHB00HW00 m3;
};

struct DSHU00JW03HU00 dshu00jw03hu00_0 = { { 1 }, { 2 } };
struct DSHU00JW03HU00 dshu00jw03hu00_1 = { { 1 } };

struct DSHU00JW03HA01 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	unsigned char m3[3];
};

struct DSHU00JW03HA01 dshu00jw03ha01_0 = { { 1 }, "23" };
struct DSHU00JW03HA01 dshu00jw03ha01_1 = { { 1 } };
struct DSHU00JW03HA01 dshu00jw03ha01_2 = { { 1 }, "2" };

struct DSHU00JW03HA04 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
	unsigned long m3[2];
};

struct DSHU00JW03HA04 dshu00jw03ha04_0 = { { 1 }, {2,3} };
struct DSHU00JW03HA04 dshu00jw03ha04_1 = { { 1 } };
struct DSHU00JW03HA04 dshu00jw03ha04_2 = { { 1 }, {2} };

int main() {

	printf("%u\n"  , dshu00jw03hw00_0.m1.m1);
	printf("%lu\n" , dshu00jw03hw00_0.m3);
	printf("\n");
	printf("%u\n"  , dshu00jw03hw00_1.m1.m1);
	printf("\n");

	printf("%u\n"  , dshu00jw03iw03_0.m1.m1);
	printf("%d\n" , dshu00jw03iw03_0.m3);
	printf("\n");
	printf("%u\n"  , dshu00jw03iw03_1.m1.m1);
	printf("\n");

	printf("%u\n"  , dshu00jw03iw29_0.m1.m1);
	printf("%d\n" , dshu00jw03iw29_0.m3);
	printf("\n");
	printf("%u\n"  , dshu00jw03iw29_1.m1.m1);
	printf("\n");

	printf("%u\n"  , dshu00jw03hs00_0.m1.m1);
	printf("%u\n"  , dshu00jw03hs00_0.m3.m1);
	printf("%lu\n" , dshu00jw03hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dshu00jw03hs00_1.m1.m1);
	printf("\n");
	printf("%u\n"  , dshu00jw03hs00_2.m1.m1);
	printf("%u\n"  , dshu00jw03hs00_2.m3.m1);
	printf("\n");

	printf("%u\n"  , dshu00jw03hu00_0.m1.m1);
	printf("%u\n"  , dshu00jw03hu00_0.m3.m1);
	printf("\n");
	printf("%u\n"  , dshu00jw03hu00_1.m1.m1);
	printf("\n");

	printf("%u\n"  , dshu00jw03ha01_0.m1.m1);
	printf("%s\n"  , dshu00jw03ha01_0.m3);
	printf("\n");
	printf("%u\n"  , dshu00jw03ha01_1.m1.m1);
	printf("\n");
	printf("%u\n"  , dshu00jw03ha01_2.m1.m1);
	printf("%s\n"  , dshu00jw03ha01_2.m3);
	printf("\n");

	printf("%u\n"  , dshu00jw03ha04_0.m1.m1);
	printf("%lu\n" , dshu00jw03ha04_0.m3[0]);
	printf("%lu\n" , dshu00jw03ha04_0.m3[1]);
	printf("\n");
	printf("%u\n"  , dshu00jw03ha04_1.m1.m1);
	printf("\n");
	printf("%u\n"  , dshu00jw03ha04_2.m1.m1);
	printf("%lu\n" , dshu00jw03ha04_2.m3[0]);
	printf("\n");

	return 0;
}
