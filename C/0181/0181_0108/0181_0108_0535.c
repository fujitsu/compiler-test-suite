
	
	
	
	

#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHS00JW00HW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	unsigned long m3;
};

struct DSHS00JW00HW00 dshs00jw00hw00_0 = { { 1, 2 }, 3 };
struct DSHS00JW00HW00 dshs00jw00hw00_1 = { { 1 }, 3 };
struct DSHS00JW00HW00 dshs00jw00hw00_2 = { { 1, 2 } };
struct DSHS00JW00HW00 dshs00jw00hw00_3 = { { 1 } };

struct DSHS00JW00IW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	unsigned long m3:3;
};

struct DSHS00JW00IW03 dshs00jw00iw03_0 = { { 1, 2 }, 3 };
struct DSHS00JW00IW03 dshs00jw00iw03_1 = { { 1 }, 3 };
struct DSHS00JW00IW03 dshs00jw00iw03_2 = { { 1, 2 } };
struct DSHS00JW00IW03 dshs00jw00iw03_3 = { { 1 } };

struct DSHS00JW00IW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	unsigned long m3:29;
};

struct DSHS00JW00IW29 dshs00jw00iw29_0 = { { 1, 2 }, 3 };
struct DSHS00JW00IW29 dshs00jw00iw29_1 = { { 1 }, 3 };
struct DSHS00JW00IW29 dshs00jw00iw29_2 = { { 1, 2 } };
struct DSHS00JW00IW29 dshs00jw00iw29_3 = { { 1 } };

struct DSHS00JW00HS00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct DSHS00JW00HS00 dshs00jw00hs00_0 = { { 1, 2 }, { 3, 4 } };
struct DSHS00JW00HS00 dshs00jw00hs00_1 = { { 1 }, { 3, 4 } };
struct DSHS00JW00HS00 dshs00jw00hs00_2 = { { 1, 2 } };
struct DSHS00JW00HS00 dshs00jw00hs00_3 = { { 1 } };
struct DSHS00JW00HS00 dshs00jw00hs00_4 = { { 1, 2 }, { 3 } };
struct DSHS00JW00HS00 dshs00jw00hs00_5 = { { 1 }, { 3 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHS00JW00HU00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct DSHS00JW00HU00 dshs00jw00hu00_0 = { { 1, 2 }, { 3 } };
struct DSHS00JW00HU00 dshs00jw00hu00_1 = { { 1 }, { 3 } };
struct DSHS00JW00HU00 dshs00jw00hu00_2 = { { 1, 2 } };
struct DSHS00JW00HU00 dshs00jw00hu00_3 = { { 1 } };

struct DSHS00JW00HA01 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	unsigned char m3[3];
};

struct DSHS00JW00HA01 dshs00jw00ha01_0 = { { 1, 2 }, "34" };
struct DSHS00JW00HA01 dshs00jw00ha01_1 = { { 1 }, "34" };
struct DSHS00JW00HA01 dshs00jw00ha01_2 = { { 1, 2 } };
struct DSHS00JW00HA01 dshs00jw00ha01_3 = { { 1 } };
struct DSHS00JW00HA01 dshs00jw00ha01_4 = { { 1, 2 }, "3" };
struct DSHS00JW00HA01 dshs00jw00ha01_5 = { { 1 }, "3" };

struct DSHS00JW00HA04 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
	unsigned long m3[2];
};

struct DSHS00JW00HA04 dshs00jw00ha04_0 = { { 1, 2 }, {3,4} };
struct DSHS00JW00HA04 dshs00jw00ha04_1 = { { 1 }, {3,4} };
struct DSHS00JW00HA04 dshs00jw00ha04_2 = { { 1, 2 } };
struct DSHS00JW00HA04 dshs00jw00ha04_3 = { { 1 } };
struct DSHS00JW00HA04 dshs00jw00ha04_4 = { { 1, 2 }, {3} };
struct DSHS00JW00HA04 dshs00jw00ha04_5 = { { 1 }, {3} };

int lto_sub_550() {

	printf("%u\n"  , dshs00jw00hw00_0.m1.m1);
	printf("%lu\n" , dshs00jw00hw00_0.m1.m2);
	printf("%lu\n" , dshs00jw00hw00_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00hw00_1.m1.m1);
	printf("%lu\n" , dshs00jw00hw00_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00hw00_2.m1.m1);
	printf("%lu\n" , dshs00jw00hw00_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00hw00_3.m1.m1);
	printf("\n");

	printf("%u\n"  , dshs00jw00iw03_0.m1.m1);
	printf("%lu\n" , dshs00jw00iw03_0.m1.m2);
	printf("%lu\n" , dshs00jw00iw03_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00iw03_1.m1.m1);
	printf("%lu\n" , dshs00jw00iw03_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00iw03_2.m1.m1);
	printf("%lu\n" , dshs00jw00iw03_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00iw03_3.m1.m1);
	printf("\n");

	printf("%u\n"  , dshs00jw00iw29_0.m1.m1);
	printf("%lu\n" , dshs00jw00iw29_0.m1.m2);
	printf("%lu\n" , dshs00jw00iw29_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00iw29_1.m1.m1);
	printf("%lu\n" , dshs00jw00iw29_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00iw29_2.m1.m1);
	printf("%lu\n" , dshs00jw00iw29_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00iw29_3.m1.m1);
	printf("\n");

	printf("%u\n"  , dshs00jw00hs00_0.m1.m1);
	printf("%lu\n" , dshs00jw00hs00_0.m1.m2);
	printf("%u\n"  , dshs00jw00hs00_0.m3.m1);
	printf("%lu\n" , dshs00jw00hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00hs00_1.m1.m1);
	printf("%u\n"  , dshs00jw00hs00_1.m3.m1);
	printf("%lu\n" , dshs00jw00hs00_1.m3.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00hs00_2.m1.m1);
	printf("%lu\n" , dshs00jw00hs00_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00hs00_3.m1.m1);
	printf("\n");
	printf("%u\n"  , dshs00jw00hs00_4.m1.m1);
	printf("%lu\n" , dshs00jw00hs00_4.m1.m2);
	printf("%u\n"  , dshs00jw00hs00_4.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00jw00hs00_5.m1.m1);
	printf("%u\n"  , dshs00jw00hs00_5.m3.m1);
	printf("\n");

	printf("%u\n"  , dshs00jw00hu00_0.m1.m1);
	printf("%lu\n" , dshs00jw00hu00_0.m1.m2);
	printf("%u\n"  , dshs00jw00hu00_0.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00jw00hu00_1.m1.m1);
	printf("%u\n"  , dshs00jw00hu00_1.m3.m1);
	printf("\n");
	printf("%u\n"  , dshs00jw00hu00_2.m1.m1);
	printf("%lu\n" , dshs00jw00hu00_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00hu00_3.m1.m1);
	printf("\n");

	printf("%u\n"  , dshs00jw00ha01_0.m1.m1);
	printf("%lu\n" , dshs00jw00ha01_0.m1.m2);
	printf("%s\n"  , dshs00jw00ha01_0.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha01_1.m1.m1);
	printf("%s\n"  , dshs00jw00ha01_1.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha01_2.m1.m1);
	printf("%lu\n" , dshs00jw00ha01_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha01_3.m1.m1);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha01_4.m1.m1);
	printf("%lu\n" , dshs00jw00ha01_4.m1.m2);
	printf("%s\n"  , dshs00jw00ha01_4.m3);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha01_5.m1.m1);
	printf("%s\n"  , dshs00jw00ha01_5.m3);
	printf("\n");

	printf("%u\n"  , dshs00jw00ha04_0.m1.m1);
	printf("%lu\n" , dshs00jw00ha04_0.m1.m2);
	printf("%lu\n" , dshs00jw00ha04_0.m3[0]);
	printf("%lu\n" , dshs00jw00ha04_0.m3[1]);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha04_1.m1.m1);
	printf("%lu\n" , dshs00jw00ha04_1.m3[0]);
	printf("%lu\n" , dshs00jw00ha04_1.m3[1]);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha04_2.m1.m1);
	printf("%lu\n" , dshs00jw00ha04_2.m1.m2);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha04_3.m1.m1);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha04_4.m1.m1);
	printf("%lu\n" , dshs00jw00ha04_4.m1.m2);
	printf("%lu\n" , dshs00jw00ha04_4.m3[0]);
	printf("\n");
	printf("%u\n"  , dshs00jw00ha04_5.m1.m1);
	printf("%lu\n" , dshs00jw00ha04_5.m3[0]);
	printf("\n");

	return 0;
}
