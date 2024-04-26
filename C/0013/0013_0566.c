                                                             
#include <stdio.h>                                              

struct DSIW03JW03HW00 {
	unsigned long m1:3;
	unsigned long   :3;
	unsigned long m3;
};

struct DSIW03JW03HW00 dsiw03jw03hw00_0 = { 1, 2 };
struct DSIW03JW03HW00 dsiw03jw03hw00_1 = { 1 };

struct DSIW03JW03IW03 {
	unsigned long m1:3;
	unsigned long   :3;
	unsigned long m3:3;
};

struct DSIW03JW03IW03 dsiw03jw03iw03_0 = { 1, 2 };
struct DSIW03JW03IW03 dsiw03jw03iw03_1 = { 1 };

struct DSIW03JW03IW29 {
	unsigned long m1:3;
	unsigned long   :3;
	unsigned long m3:29;
};

struct DSIW03JW03IW29 dsiw03jw03iw29_0 = { 1, 2 };
struct DSIW03JW03IW29 dsiw03jw03iw29_1 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW03JW03HS00 {
	unsigned long m1:3;
	unsigned long   :3;
	struct SUB_SHB00HW00 m3;
};

struct DSIW03JW03HS00 dsiw03jw03hs00_0 = { 1, { 2, 3 } };
struct DSIW03JW03HS00 dsiw03jw03hs00_1 = { 1 };
struct DSIW03JW03HS00 dsiw03jw03hs00_2 = { 1, { 2 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW03JW03HU00 {
	unsigned long m1:3;
	unsigned long   :3;
	union SUB_UHB00HW00 m3;
};

struct DSIW03JW03HU00 dsiw03jw03hu00_0 = { 1, { 2 } };
struct DSIW03JW03HU00 dsiw03jw03hu00_1 = { 1 };

struct DSIW03JW03HA01 {
	unsigned long m1:3;
	unsigned long   :3;
	unsigned char m3[3];
};

struct DSIW03JW03HA01 dsiw03jw03ha01_0 = { 1, "23" };
struct DSIW03JW03HA01 dsiw03jw03ha01_1 = { 1 };
struct DSIW03JW03HA01 dsiw03jw03ha01_2 = { 1, "2" };

struct DSIW03JW03HA04 {
	unsigned long m1:3;
	unsigned long   :3;
	unsigned long m3[2];
};

struct DSIW03JW03HA04 dsiw03jw03ha04_0 = { 1, {2,3} };
struct DSIW03JW03HA04 dsiw03jw03ha04_1 = { 1 };
struct DSIW03JW03HA04 dsiw03jw03ha04_2 = { 1, {2} };

int main() {

	printf("%d\n" , dsiw03jw03hw00_0.m1);
	printf("%lu\n" , dsiw03jw03hw00_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03jw03hw00_1.m1);
	printf("\n");

	printf("%d\n" , dsiw03jw03iw03_0.m1);
	printf("%d\n" , dsiw03jw03iw03_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03jw03iw03_1.m1);
	printf("\n");

	printf("%d\n" , dsiw03jw03iw29_0.m1);
	printf("%d\n" , dsiw03jw03iw29_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03jw03iw29_1.m1);
	printf("\n");

	printf("%d\n" , dsiw03jw03hs00_0.m1);
	printf("%u\n"  , dsiw03jw03hs00_0.m3.m1);
	printf("%lu\n" , dsiw03jw03hs00_0.m3.m2);
	printf("\n");
	printf("%d\n" , dsiw03jw03hs00_1.m1);
	printf("\n");
	printf("%d\n" , dsiw03jw03hs00_2.m1);
	printf("%u\n"  , dsiw03jw03hs00_2.m3.m1);
	printf("\n");

	printf("%d\n" , dsiw03jw03hu00_0.m1);
	printf("%u\n"  , dsiw03jw03hu00_0.m3.m1);
	printf("\n");
	printf("%d\n" , dsiw03jw03hu00_1.m1);
	printf("\n");

	printf("%d\n" , dsiw03jw03ha01_0.m1);
	printf("%s\n"  , dsiw03jw03ha01_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03jw03ha01_1.m1);
	printf("\n");
	printf("%d\n" , dsiw03jw03ha01_2.m1);
	printf("%s\n"  , dsiw03jw03ha01_2.m3);
	printf("\n");

	printf("%d\n" , dsiw03jw03ha04_0.m1);
	printf("%lu\n" , dsiw03jw03ha04_0.m3[0]);
	printf("%lu\n" , dsiw03jw03ha04_0.m3[1]);
	printf("\n");
	printf("%d\n" , dsiw03jw03ha04_1.m1);
	printf("\n");
	printf("%d\n" , dsiw03jw03ha04_2.m1);
	printf("%lu\n" , dsiw03jw03ha04_2.m3[0]);
	printf("\n");

	return 0;
}
