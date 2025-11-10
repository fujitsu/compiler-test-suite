
	
	
	
	

#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHS00IW03HW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3;
};

struct DSHS00IW03HW00 dshs00iw03hw00_0 = { { 1, 2 }, 3, 4 };
struct DSHS00IW03HW00 dshs00iw03hw00_1 = { { 1 }, 3, 4 };
struct DSHS00IW03HW00 dshs00iw03hw00_2 = { { 1, 2 }, 3 };
struct DSHS00IW03HW00 dshs00iw03hw00_3 = { { 1 }, 3 };

struct DSHS00IW03IW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3:3;
};

struct DSHS00IW03IW03 dshs00iw03iw03_0 = { { 1, 2 }, 3, 4 };
struct DSHS00IW03IW03 dshs00iw03iw03_1 = { { 1 }, 3, 4 };
struct DSHS00IW03IW03 dshs00iw03iw03_2 = { { 1, 2 }, 3 };
struct DSHS00IW03IW03 dshs00iw03iw03_3 = { { 1 }, 3 };

struct DSHS00IW03IW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3:29;
};

struct DSHS00IW03IW29 dshs00iw03iw29_0 = { { 1, 2 }, 3, 4 };
struct DSHS00IW03IW29 dshs00iw03iw29_1 = { { 1 }, 3, 4 };
struct DSHS00IW03IW29 dshs00iw03iw29_2 = { { 1, 2 }, 3 };
struct DSHS00IW03IW29 dshs00iw03iw29_3 = { { 1 }, 3 };

struct DSHS00IW03HS00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	struct SUB_SHB00HW00 m3;
};

struct DSHS00IW03HS00 dshs00iw03hs00_0 = { { 1, 2 }, 3, { 4, 5 } };
struct DSHS00IW03HS00 dshs00iw03hs00_1 = { { 1 }, 3, { 4, 5 } };
struct DSHS00IW03HS00 dshs00iw03hs00_2 = { { 1, 2 }, 3 };
struct DSHS00IW03HS00 dshs00iw03hs00_3 = { { 1 }, 3 };
struct DSHS00IW03HS00 dshs00iw03hs00_4 = { { 1, 2 }, 3, { 4 } };
struct DSHS00IW03HS00 dshs00iw03hs00_5 = { { 1 }, 3, { 4 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHS00IW03HU00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	union SUB_UHB00HW00 m3;
};

struct DSHS00IW03HU00 dshs00iw03hu00_0 = { { 1, 2 }, 3, { 4 } };
struct DSHS00IW03HU00 dshs00iw03hu00_1 = { { 1 }, 3, { 4 } };
struct DSHS00IW03HU00 dshs00iw03hu00_2 = { { 1, 2 }, 3 };
struct DSHS00IW03HU00 dshs00iw03hu00_3 = { { 1 }, 3 };

struct DSHS00IW03HA01 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned char m3[3];
};

struct DSHS00IW03HA01 dshs00iw03ha01_0 = { { 1, 2 }, 3, "45" };
struct DSHS00IW03HA01 dshs00iw03ha01_1 = { { 1 }, 3, "45" };
struct DSHS00IW03HA01 dshs00iw03ha01_2 = { { 1, 2 }, 3 };
struct DSHS00IW03HA01 dshs00iw03ha01_3 = { { 1 }, 3 };
struct DSHS00IW03HA01 dshs00iw03ha01_4 = { { 1, 2 }, 3, "4" };
struct DSHS00IW03HA01 dshs00iw03ha01_5 = { { 1 }, 3, "4" };

struct DSHS00IW03HA04 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3[2];
};

struct DSHS00IW03HA04 dshs00iw03ha04_0 = { { 1, 2 }, 3, {4,5} };
struct DSHS00IW03HA04 dshs00iw03ha04_1 = { { 1 }, 3, {4,5} };
struct DSHS00IW03HA04 dshs00iw03ha04_2 = { { 1, 2 }, 3 };
struct DSHS00IW03HA04 dshs00iw03ha04_3 = { { 1 }, 3 };
struct DSHS00IW03HA04 dshs00iw03ha04_4 = { { 1, 2 }, 3, {4} };
struct DSHS00IW03HA04 dshs00iw03ha04_5 = { { 1 }, 3, {4} };

int lto_sub_548() {

	printf("%u\n"  , dshs00iw03hw00_0.m1.m1);
	printf("%lu\n" , dshs00iw03hw00_0.m1.m2);
	printf("%lu\n" , dshs00iw03hw00_0.m2);
	printf("%lu\n" , dshs00iw03hw00_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03hw00_1.m1.m1);
	printf("%lu\n" , dshs00iw03hw00_1.m2);
	printf("%lu\n" , dshs00iw03hw00_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03hw00_2.m1.m1);
	printf("%lu\n" , dshs00iw03hw00_2.m1.m2);
	printf("%lu\n" , dshs00iw03hw00_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03hw00_3.m1.m1);
	printf("%lu\n" , dshs00iw03hw00_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw03iw03_0.m1.m1);
	printf("%lu\n" , dshs00iw03iw03_0.m1.m2);
	printf("%lu\n" , dshs00iw03iw03_0.m2);
	printf("%lu\n" , dshs00iw03iw03_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03iw03_1.m1.m1);
	printf("%lu\n" , dshs00iw03iw03_1.m2);
	printf("%lu\n" , dshs00iw03iw03_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03iw03_2.m1.m1);
	printf("%lu\n" , dshs00iw03iw03_2.m1.m2);
	printf("%lu\n" , dshs00iw03iw03_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03iw03_3.m1.m1);
	printf("%lu\n" , dshs00iw03iw03_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw03iw29_0.m1.m1);
	printf("%lu\n" , dshs00iw03iw29_0.m1.m2);
	printf("%lu\n" , dshs00iw03iw29_0.m2);
	printf("%lu\n" , dshs00iw03iw29_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03iw29_1.m1.m1);
	printf("%lu\n" , dshs00iw03iw29_1.m2);
	printf("%lu\n" , dshs00iw03iw29_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03iw29_2.m1.m1);
	printf("%lu\n" , dshs00iw03iw29_2.m1.m2);
	printf("%lu\n" , dshs00iw03iw29_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03iw29_3.m1.m1);
	printf("%lu\n" , dshs00iw03iw29_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw03hs00_0.m1.m1);
	printf("%lu\n" , dshs00iw03hs00_0.m1.m2);
	printf("%lu\n" , dshs00iw03hs00_0.m2);
	printf("%u\n"  , dshs00iw03hs00_0.m3.m1);
	printf("%lu\n" , dshs00iw03hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03hs00_1.m1.m1);
	printf("%lu\n" , dshs00iw03hs00_1.m2);
	printf("%u\n"  , dshs00iw03hs00_1.m3.m1);
	printf("%lu\n" , dshs00iw03hs00_1.m3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03hs00_2.m1.m1);
	printf("%lu\n" , dshs00iw03hs00_2.m1.m2);
	printf("%lu\n" , dshs00iw03hs00_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03hs00_3.m1.m1);
	printf("%lu\n" , dshs00iw03hs00_3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03hs00_4.m1.m1);
	printf("%lu\n" , dshs00iw03hs00_4.m1.m2);
	printf("%lu\n" , dshs00iw03hs00_4.m2);
	printf("%u\n"  , dshs00iw03hs00_4.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00iw03hs00_5.m1.m1);
	printf("%lu\n" , dshs00iw03hs00_5.m2);
	printf("%u\n"  , dshs00iw03hs00_5.m3.m1);
	printf("\n");

	printf("%u\n"  , dshs00iw03hu00_0.m1.m1);
	printf("%lu\n" , dshs00iw03hu00_0.m1.m2);
	printf("%lu\n" , dshs00iw03hu00_0.m2);
	printf("%u\n"  , dshs00iw03hu00_0.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00iw03hu00_1.m1.m1);
	printf("%lu\n" , dshs00iw03hu00_1.m2);
	printf("%u\n"  , dshs00iw03hu00_1.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00iw03hu00_2.m1.m1);
	printf("%lu\n" , dshs00iw03hu00_2.m1.m2);
	printf("%lu\n" , dshs00iw03hu00_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03hu00_3.m1.m1);
	printf("%lu\n" , dshs00iw03hu00_3.m2);
	printf("\n");

	printf("%u\n"  , dshs00iw03ha01_0.m1.m1);
	printf("%lu\n" , dshs00iw03ha01_0.m1.m2);
	printf("%lu\n" , dshs00iw03ha01_0.m2);
	printf("%s\n"  , dshs00iw03ha01_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha01_1.m1.m1);
	printf("%lu\n" , dshs00iw03ha01_1.m2);
	printf("%s\n"  , dshs00iw03ha01_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha01_2.m1.m1);
	printf("%lu\n" , dshs00iw03ha01_2.m1.m2);
	printf("%lu\n" , dshs00iw03ha01_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha01_3.m1.m1);
	printf("%lu\n" , dshs00iw03ha01_3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha01_4.m1.m1);
	printf("%lu\n" , dshs00iw03ha01_4.m1.m2);
	printf("%lu\n" , dshs00iw03ha01_4.m2);
	printf("%s\n"  , dshs00iw03ha01_4.m3);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha01_5.m1.m1);
	printf("%lu\n" , dshs00iw03ha01_5.m2);
	printf("%s\n"  , dshs00iw03ha01_5.m3);
	printf("\n");

	printf("%u\n"  , dshs00iw03ha04_0.m1.m1);
	printf("%lu\n" , dshs00iw03ha04_0.m1.m2);
	printf("%lu\n" , dshs00iw03ha04_0.m2);
	printf("%lu\n" , dshs00iw03ha04_0.m3[0]);
	printf("%lu\n" , dshs00iw03ha04_0.m3[1]);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha04_1.m1.m1);
	printf("%lu\n" , dshs00iw03ha04_1.m2);
	printf("%lu\n" , dshs00iw03ha04_1.m3[0]);
	printf("%lu\n" , dshs00iw03ha04_1.m3[1]);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha04_2.m1.m1);
	printf("%lu\n" , dshs00iw03ha04_2.m1.m2);
	printf("%lu\n" , dshs00iw03ha04_2.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha04_3.m1.m1);
	printf("%lu\n" , dshs00iw03ha04_3.m2);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha04_4.m1.m1);
	printf("%lu\n" , dshs00iw03ha04_4.m1.m2);
	printf("%lu\n" , dshs00iw03ha04_4.m2);
	printf("%lu\n" , dshs00iw03ha04_4.m3[0]);
	printf("\n");
	printf("%u\n"  , dshs00iw03ha04_5.m1.m1);
	printf("%lu\n" , dshs00iw03ha04_5.m2);
	printf("%lu\n" , dshs00iw03ha04_5.m3[0]);
	printf("\n");

	return 0;
}
