
	
	
	
	

#include <stdio.h>                                              

struct DSHA01JW29HW00 {
	unsigned char m1[3];
	unsigned long   :29;
	unsigned long m3;
};

struct DSHA01JW29HW00 dsha01jw29hw00_0 = { "12", 3 };
struct DSHA01JW29HW00 dsha01jw29hw00_1 = { "1", 3 };
struct DSHA01JW29HW00 dsha01jw29hw00_2 = { "12" };
struct DSHA01JW29HW00 dsha01jw29hw00_3 = { "1" };

struct DSHA01JW29IW03 {
	unsigned char m1[3];
	unsigned long   :29;
	unsigned long m3:3;
};

struct DSHA01JW29IW03 dsha01jw29iw03_0 = { "12", 3 };
struct DSHA01JW29IW03 dsha01jw29iw03_1 = { "1", 3 };
struct DSHA01JW29IW03 dsha01jw29iw03_2 = { "12" };
struct DSHA01JW29IW03 dsha01jw29iw03_3 = { "1" };

struct DSHA01JW29IW29 {
	unsigned char m1[3];
	unsigned long   :29;
	unsigned long m3:29;
};

struct DSHA01JW29IW29 dsha01jw29iw29_0 = { "12", 3 };
struct DSHA01JW29IW29 dsha01jw29iw29_1 = { "1", 3 };
struct DSHA01JW29IW29 dsha01jw29iw29_2 = { "12" };
struct DSHA01JW29IW29 dsha01jw29iw29_3 = { "1" };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHA01JW29HS00 {
	unsigned char m1[3];
	unsigned long   :29;
	struct SUB_SHB00HW00 m3;
};

struct DSHA01JW29HS00 dsha01jw29hs00_0 = { "12", { 3, 4 } };
struct DSHA01JW29HS00 dsha01jw29hs00_1 = { "1", { 3, 4 } };
struct DSHA01JW29HS00 dsha01jw29hs00_2 = { "12" };
struct DSHA01JW29HS00 dsha01jw29hs00_3 = { "1" };
struct DSHA01JW29HS00 dsha01jw29hs00_4 = { "12", { 3 } };
struct DSHA01JW29HS00 dsha01jw29hs00_5 = { "1", { 3 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSHA01JW29HU00 {
	unsigned char m1[3];
	unsigned long   :29;
	union SUB_UHB00HW00 m3;
};

struct DSHA01JW29HU00 dsha01jw29hu00_0 = { "12", { 3 } };
struct DSHA01JW29HU00 dsha01jw29hu00_1 = { "1", { 3 } };
struct DSHA01JW29HU00 dsha01jw29hu00_2 = { "12" };
struct DSHA01JW29HU00 dsha01jw29hu00_3 = { "1" };

struct DSHA01JW29HA01 {
	unsigned char m1[3];
	unsigned long   :29;
	unsigned char m3[3];
};

struct DSHA01JW29HA01 dsha01jw29ha01_0 = { "12", "34" };
struct DSHA01JW29HA01 dsha01jw29ha01_1 = { "1", "34" };
struct DSHA01JW29HA01 dsha01jw29ha01_2 = { "12" };
struct DSHA01JW29HA01 dsha01jw29ha01_3 = { "1" };
struct DSHA01JW29HA01 dsha01jw29ha01_4 = { "12", "3" };
struct DSHA01JW29HA01 dsha01jw29ha01_5 = { "1", "3" };

struct DSHA01JW29HA04 {
	unsigned char m1[3];
	unsigned long   :29;
	unsigned long m3[2];
};

struct DSHA01JW29HA04 dsha01jw29ha04_0 = { "12", {3,4} };
struct DSHA01JW29HA04 dsha01jw29ha04_1 = { "1", {3,4} };
struct DSHA01JW29HA04 dsha01jw29ha04_2 = { "12" };
struct DSHA01JW29HA04 dsha01jw29ha04_3 = { "1" };
struct DSHA01JW29HA04 dsha01jw29ha04_4 = { "12", {3} };
struct DSHA01JW29HA04 dsha01jw29ha04_5 = { "1", {3} };

int lto_sub_542() {

	printf("%s\n"  , dsha01jw29hw00_0.m1);
	printf("%lu\n" , dsha01jw29hw00_0.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29hw00_1.m1);
	printf("%lu\n" , dsha01jw29hw00_1.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29hw00_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hw00_3.m1);
	printf("\n");

	printf("%s\n"  , dsha01jw29iw03_0.m1);
	printf("%lu\n" , dsha01jw29iw03_0.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29iw03_1.m1);
	printf("%lu\n" , dsha01jw29iw03_1.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29iw03_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29iw03_3.m1);
	printf("\n");

	printf("%s\n"  , dsha01jw29iw29_0.m1);
	printf("%lu\n" , dsha01jw29iw29_0.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29iw29_1.m1);
	printf("%lu\n" , dsha01jw29iw29_1.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29iw29_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29iw29_3.m1);
	printf("\n");

	printf("%s\n"  , dsha01jw29hs00_0.m1);
	printf("%u\n"  , dsha01jw29hs00_0.m3.m1);
	printf("%lu\n" , dsha01jw29hs00_0.m3.m2);
	printf("\n");
	printf("%s\n"  , dsha01jw29hs00_1.m1);
	printf("%u\n"  , dsha01jw29hs00_1.m3.m1);
	printf("%lu\n" , dsha01jw29hs00_1.m3.m2);
	printf("\n");
	printf("%s\n"  , dsha01jw29hs00_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hs00_3.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hs00_4.m1);
	printf("%u\n"  , dsha01jw29hs00_4.m3.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hs00_5.m1);
	printf("%u\n"  , dsha01jw29hs00_5.m3.m1);
	printf("\n");

	printf("%s\n"  , dsha01jw29hu00_0.m1);
	printf("%u\n"  , dsha01jw29hu00_0.m3.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hu00_1.m1);
	printf("%u\n"  , dsha01jw29hu00_1.m3.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hu00_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29hu00_3.m1);
	printf("\n");

	printf("%s\n"  , dsha01jw29ha01_0.m1);
	printf("%s\n"  , dsha01jw29ha01_0.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha01_1.m1);
	printf("%s\n"  , dsha01jw29ha01_1.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha01_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha01_3.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha01_4.m1);
	printf("%s\n"  , dsha01jw29ha01_4.m3);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha01_5.m1);
	printf("%s\n"  , dsha01jw29ha01_5.m3);
	printf("\n");

	printf("%s\n"  , dsha01jw29ha04_0.m1);
	printf("%lu\n" , dsha01jw29ha04_0.m3[0]);
	printf("%lu\n" , dsha01jw29ha04_0.m3[1]);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha04_1.m1);
	printf("%lu\n" , dsha01jw29ha04_1.m3[0]);
	printf("%lu\n" , dsha01jw29ha04_1.m3[1]);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha04_2.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha04_3.m1);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha04_4.m1);
	printf("%lu\n" , dsha01jw29ha04_4.m3[0]);
	printf("\n");
	printf("%s\n"  , dsha01jw29ha04_5.m1);
	printf("%lu\n" , dsha01jw29ha04_5.m3[0]);
	printf("\n");

	return 0;
}
