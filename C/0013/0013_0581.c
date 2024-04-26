                                                             
#include <stdio.h>                                              

struct DSJW03JW03HW00 {
	unsigned long   :3;
	unsigned long   :3;
	unsigned long m3;
};

struct DSJW03JW03HW00 dsjw03jw03hw00_0 = { 1 };

struct DSJW03JW03IW03 {
	unsigned long   :3;
	unsigned long   :3;
	unsigned long m3:3;
};

struct DSJW03JW03IW03 dsjw03jw03iw03_0 = { 1 };

struct DSJW03JW03IW29 {
	unsigned long   :3;
	unsigned long   :3;
	unsigned long m3:29;
};

struct DSJW03JW03IW29 dsjw03jw03iw29_0 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW03JW03HS00 {
	unsigned long   :3;
	unsigned long   :3;
	struct SUB_SHB00HW00 m3;
};

struct DSJW03JW03HS00 dsjw03jw03hs00_0 = { { 1, 2 } };
struct DSJW03JW03HS00 dsjw03jw03hs00_1 = { { 1 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW03JW03HU00 {
	unsigned long   :3;
	unsigned long   :3;
	union SUB_UHB00HW00 m3;
};

struct DSJW03JW03HU00 dsjw03jw03hu00_0 = { { 1 } };

struct DSJW03JW03HA01 {
	unsigned long   :3;
	unsigned long   :3;
	unsigned char m3[3];
};

struct DSJW03JW03HA01 dsjw03jw03ha01_0 = { "12" };
struct DSJW03JW03HA01 dsjw03jw03ha01_1 = { "1" };

struct DSJW03JW03HA04 {
	unsigned long   :3;
	unsigned long   :3;
	unsigned long m3[2];
};

struct DSJW03JW03HA04 dsjw03jw03ha04_0 = { {1,2} };
struct DSJW03JW03HA04 dsjw03jw03ha04_1 = { {1} };

int main() {

	printf("%lu\n" , dsjw03jw03hw00_0.m3);
	printf("\n");

	printf("%d\n" , dsjw03jw03iw03_0.m3);
	printf("\n");

	printf("%d\n" , dsjw03jw03iw29_0.m3);
	printf("\n");

	printf("%u\n"  , dsjw03jw03hs00_0.m3.m1);
	printf("%lu\n" , dsjw03jw03hs00_0.m3.m2);
	printf("\n");
	printf("%u\n"  , dsjw03jw03hs00_1.m3.m1);
	printf("\n");

	printf("%u\n"  , dsjw03jw03hu00_0.m3.m1);
	printf("\n");

	printf("%s\n"  , dsjw03jw03ha01_0.m3);
	printf("\n");
	printf("%s\n"  , dsjw03jw03ha01_1.m3);
	printf("\n");

	printf("%lu\n" , dsjw03jw03ha04_0.m3[0]);
	printf("%lu\n" , dsjw03jw03ha04_0.m3[1]);
	printf("\n");
	printf("%lu\n" , dsjw03jw03ha04_1.m3[0]);
	printf("\n");

	return 0;
}
