                                                             
#include <stdio.h>                                              

struct DSJW29JW00HW00 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3;
};

struct DSJW29JW00HW00 dsjw29jw00hw00_0 = { 1 };

struct DSJW29JW00IW03 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3:3;
};

struct DSJW29JW00IW03 dsjw29jw00iw03_0 = { 1 };

struct DSJW29JW00IW29 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3:29;
};

struct DSJW29JW00IW29 dsjw29jw00iw29_0 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW29JW00HS00 {
	unsigned long   :29;
	unsigned long   :0;
	struct SUB_SHB00HW00 m3;
};

struct DSJW29JW00HS00 dsjw29jw00hs00_0 = { { 1, 2 } };
struct DSJW29JW00HS00 dsjw29jw00hs00_1 = { { 1 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW29JW00HU00 {
	unsigned long   :29;
	unsigned long   :0;
	union SUB_UHB00HW00 m3;
};

struct DSJW29JW00HU00 dsjw29jw00hu00_0 = { { 1 } };

struct DSJW29JW00HA01 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned char m3[3];
};

struct DSJW29JW00HA01 dsjw29jw00ha01_0 = { "12" };
struct DSJW29JW00HA01 dsjw29jw00ha01_1 = { "1" };

struct DSJW29JW00HA04 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3[2];
};

struct DSJW29JW00HA04 dsjw29jw00ha04_0 = { {1,2} };
struct DSJW29JW00HA04 dsjw29jw00ha04_1 = { {1} };

int main() {

	printf("%lu\n" , dsjw29jw00hw00_0.m3);
	printf("\n");

	printf("%d\n" , dsjw29jw00iw03_0.m3);
	printf("\n");

	printf("%d\n" , dsjw29jw00iw29_0.m3);
	printf("\n");

	printf("%u\n"  , dsjw29jw00hs00_0.m3.m1);
	printf("%lu\n" , dsjw29jw00hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dsjw29jw00hs00_1.m3.m1);
	printf("\n");

	printf("%u\n"  , dsjw29jw00hu00_0.m3.m1);
	printf("\n");

	printf("%s\n"  , dsjw29jw00ha01_0.m3);
	printf("\n");
	printf("%s\n"  , dsjw29jw00ha01_1.m3);
	printf("\n");

	printf("%lu\n" , dsjw29jw00ha04_0.m3[0]);
	printf("%lu\n" , dsjw29jw00ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsjw29jw00ha04_1.m3[0]);
	printf("\n");

	return 0;
}
