                                                             
#include <stdio.h>                                              

struct DSHA04JW00HW00 {
	unsigned long m1[2];
	unsigned long   :0;
	unsigned long m3;
};

struct DSHA04JW00HW00 dsha04jw00hw00_0 = { {1,2}, 3 };
struct DSHA04JW00HW00 dsha04jw00hw00_1 = { {1}, 3 };
struct DSHA04JW00HW00 dsha04jw00hw00_2 = { {1,2} };
struct DSHA04JW00HW00 dsha04jw00hw00_3 = { {1} };

struct DSHA04JW00IW03 {
	unsigned long m1[2];
	unsigned long   :0;
	unsigned long m3:3;
};

struct DSHA04JW00IW03 dsha04jw00iw03_0 = { {1,2}, 3 };
struct DSHA04JW00IW03 dsha04jw00iw03_1 = { {1}, 3 };
struct DSHA04JW00IW03 dsha04jw00iw03_2 = { {1,2} };
struct DSHA04JW00IW03 dsha04jw00iw03_3 = { {1} };

struct DSHA04JW00IW29 {
	unsigned long m1[2];
	unsigned long   :0;
	unsigned long m3:29;
};

struct DSHA04JW00IW29 dsha04jw00iw29_0 = { {1,2}, 3 };
struct DSHA04JW00IW29 dsha04jw00iw29_1 = { {1}, 3 };
struct DSHA04JW00IW29 dsha04jw00iw29_2 = { {1,2} };
struct DSHA04JW00IW29 dsha04jw00iw29_3 = { {1} };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHA04JW00HS00 {
	unsigned long m1[2];
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct DSHA04JW00HS00 dsha04jw00hs00_0 = { {1,2}, { 3, 4 } };
struct DSHA04JW00HS00 dsha04jw00hs00_1 = { {1}, { 3, 4 } };
struct DSHA04JW00HS00 dsha04jw00hs00_2 = { {1,2} };
struct DSHA04JW00HS00 dsha04jw00hs00_3 = { {1} };
struct DSHA04JW00HS00 dsha04jw00hs00_4 = { {1,2}, { 3 } };
struct DSHA04JW00HS00 dsha04jw00hs00_5 = { {1}, { 3 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHA04JW00HU00 {
	unsigned long m1[2];
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct DSHA04JW00HU00 dsha04jw00hu00_0 = { {1,2}, { 3 } };
struct DSHA04JW00HU00 dsha04jw00hu00_1 = { {1}, { 3 } };
struct DSHA04JW00HU00 dsha04jw00hu00_2 = { {1,2} };
struct DSHA04JW00HU00 dsha04jw00hu00_3 = { {1} };

struct DSHA04JW00HA01 {
	unsigned long m1[2];
	unsigned long   :0;
	unsigned char m3[3];
};

struct DSHA04JW00HA01 dsha04jw00ha01_0 = { {1,2}, "34" };
struct DSHA04JW00HA01 dsha04jw00ha01_1 = { {1}, "34" };
struct DSHA04JW00HA01 dsha04jw00ha01_2 = { {1,2} };
struct DSHA04JW00HA01 dsha04jw00ha01_3 = { {1} };
struct DSHA04JW00HA01 dsha04jw00ha01_4 = { {1,2}, "3" };
struct DSHA04JW00HA01 dsha04jw00ha01_5 = { {1}, "3" };

struct DSHA04JW00HA04 {
	unsigned long m1[2];
	unsigned long   :0;
	unsigned long m3[2];
};

struct DSHA04JW00HA04 dsha04jw00ha04_0 = { {1,2}, {3,4} };
struct DSHA04JW00HA04 dsha04jw00ha04_1 = { {1}, {3,4} };
struct DSHA04JW00HA04 dsha04jw00ha04_2 = { {1,2} };
struct DSHA04JW00HA04 dsha04jw00ha04_3 = { {1} };
struct DSHA04JW00HA04 dsha04jw00ha04_4 = { {1,2}, {3} };
struct DSHA04JW00HA04 dsha04jw00ha04_5 = { {1}, {3} };

int main() {

	printf("%lu\n" , dsha04jw00hw00_0.m1[0]);
	printf("%lu\n" , dsha04jw00hw00_0.m1[1]);
	printf("%lu\n" , dsha04jw00hw00_0.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00hw00_1.m1[0]);
	printf("%lu\n" , dsha04jw00hw00_1.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00hw00_2.m1[0]);
	printf("%lu\n" , dsha04jw00hw00_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00hw00_3.m1[0]);
	printf("\n");

	printf("%lu\n" , dsha04jw00iw03_0.m1[0]);
	printf("%lu\n" , dsha04jw00iw03_0.m1[1]);
	printf("%d\n" , dsha04jw00iw03_0.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00iw03_1.m1[0]);
	printf("%d\n" , dsha04jw00iw03_1.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00iw03_2.m1[0]);
	printf("%lu\n" , dsha04jw00iw03_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00iw03_3.m1[0]);
	printf("\n");

	printf("%lu\n" , dsha04jw00iw29_0.m1[0]);
	printf("%lu\n" , dsha04jw00iw29_0.m1[1]);
	printf("%d\n" , dsha04jw00iw29_0.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00iw29_1.m1[0]);
	printf("%d\n" , dsha04jw00iw29_1.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00iw29_2.m1[0]);
	printf("%lu\n" , dsha04jw00iw29_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00iw29_3.m1[0]);
	printf("\n");

	printf("%lu\n" , dsha04jw00hs00_0.m1[0]);
	printf("%lu\n" , dsha04jw00hs00_0.m1[1]);
	printf("%u\n"  , dsha04jw00hs00_0.m3.m1);
	printf("%lu\n" , dsha04jw00hs00_0.m3.m2);
	printf("\n");
	printf("%lu\n" , dsha04jw00hs00_1.m1[0]);
	printf("%u\n"  , dsha04jw00hs00_1.m3.m1);
	printf("%lu\n" , dsha04jw00hs00_1.m3.m2);
	printf("\n");
	printf("%lu\n" , dsha04jw00hs00_2.m1[0]);
	printf("%lu\n" , dsha04jw00hs00_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00hs00_3.m1[0]);
	printf("\n");
	printf("%lu\n" , dsha04jw00hs00_4.m1[0]);
	printf("%lu\n" , dsha04jw00hs00_4.m1[1]);
	printf("%u\n"  , dsha04jw00hs00_4.m3.m1);
	printf("\n");
	printf("%lu\n" , dsha04jw00hs00_5.m1[0]);
	printf("%u\n"  , dsha04jw00hs00_5.m3.m1);
	printf("\n");

	printf("%lu\n" , dsha04jw00hu00_0.m1[0]);
	printf("%lu\n" , dsha04jw00hu00_0.m1[1]);
	printf("%u\n"  , dsha04jw00hu00_0.m3.m1);
	printf("\n");
	printf("%lu\n" , dsha04jw00hu00_1.m1[0]);
	printf("%u\n"  , dsha04jw00hu00_1.m3.m1);
	printf("\n");
	printf("%lu\n" , dsha04jw00hu00_2.m1[0]);
	printf("%lu\n" , dsha04jw00hu00_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00hu00_3.m1[0]);
	printf("\n");

	printf("%lu\n" , dsha04jw00ha01_0.m1[0]);
	printf("%lu\n" , dsha04jw00ha01_0.m1[1]);
	printf("%s\n"  , dsha04jw00ha01_0.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha01_1.m1[0]);
	printf("%s\n"  , dsha04jw00ha01_1.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha01_2.m1[0]);
	printf("%lu\n" , dsha04jw00ha01_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha01_3.m1[0]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha01_4.m1[0]);
	printf("%lu\n" , dsha04jw00ha01_4.m1[1]);
	printf("%s\n"  , dsha04jw00ha01_4.m3);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha01_5.m1[0]);
	printf("%s\n"  , dsha04jw00ha01_5.m3);
	printf("\n");

	printf("%lu\n" , dsha04jw00ha04_0.m1[0]);
	printf("%lu\n" , dsha04jw00ha04_0.m1[1]);
	printf("%lu\n" , dsha04jw00ha04_0.m3[0]);
	printf("%lu\n" , dsha04jw00ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha04_1.m1[0]);
	printf("%lu\n" , dsha04jw00ha04_1.m3[0]);
	printf("%lu\n" , dsha04jw00ha04_1.m3[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha04_2.m1[0]);
	printf("%lu\n" , dsha04jw00ha04_2.m1[1]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha04_3.m1[0]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha04_4.m1[0]);
	printf("%lu\n" , dsha04jw00ha04_4.m1[1]);
	printf("%lu\n" , dsha04jw00ha04_4.m3[0]);
	printf("\n");
	printf("%lu\n" , dsha04jw00ha04_5.m1[0]);
	printf("%lu\n" , dsha04jw00ha04_5.m3[0]);
	printf("\n");

	return 0;
}
