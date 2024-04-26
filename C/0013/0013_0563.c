                                                             
#include <stdio.h>                                              

struct DSIW03IW03HW00 {
	unsigned long m1:3;
	unsigned long m2:3;
	unsigned long m3;
};

struct DSIW03IW03HW00 dsiw03iw03hw00_0 = { 1, 2, 3 };
struct DSIW03IW03HW00 dsiw03iw03hw00_1 = { 1, 2 };

struct DSIW03IW03IW03 {
	unsigned long m1:3;
	unsigned long m2:3;
	unsigned long m3:3;
};

struct DSIW03IW03IW03 dsiw03iw03iw03_0 = { 1, 2, 3 };
struct DSIW03IW03IW03 dsiw03iw03iw03_1 = { 1, 2 };

struct DSIW03IW03IW29 {
	unsigned long m1:3;
	unsigned long m2:3;
	unsigned long m3:29;
};

struct DSIW03IW03IW29 dsiw03iw03iw29_0 = { 1, 2, 3 };
struct DSIW03IW03IW29 dsiw03iw03iw29_1 = { 1, 2 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW03IW03HS00 {
	unsigned long m1:3;
	unsigned long m2:3;
	struct SUB_SHB00HW00 m3;
};

struct DSIW03IW03HS00 dsiw03iw03hs00_0 = { 1, 2, { 3, 4 } };
struct DSIW03IW03HS00 dsiw03iw03hs00_1 = { 1, 2 };
struct DSIW03IW03HS00 dsiw03iw03hs00_2 = { 1, 2, { 3 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSIW03IW03HU00 {
	unsigned long m1:3;
	unsigned long m2:3;
	union SUB_UHB00HW00 m3;
};

struct DSIW03IW03HU00 dsiw03iw03hu00_0 = { 1, 2, { 3 } };
struct DSIW03IW03HU00 dsiw03iw03hu00_1 = { 1, 2 };

struct DSIW03IW03HA01 {
	unsigned long m1:3;
	unsigned long m2:3;
	unsigned char m3[3];
};

struct DSIW03IW03HA01 dsiw03iw03ha01_0 = { 1, 2, "34" };
struct DSIW03IW03HA01 dsiw03iw03ha01_1 = { 1, 2 };
struct DSIW03IW03HA01 dsiw03iw03ha01_2 = { 1, 2, "3" };

struct DSIW03IW03HA04 {
	unsigned long m1:3;
	unsigned long m2:3;
	unsigned long m3[2];
};

struct DSIW03IW03HA04 dsiw03iw03ha04_0 = { 1, 2, {3,4} };
struct DSIW03IW03HA04 dsiw03iw03ha04_1 = { 1, 2 };
struct DSIW03IW03HA04 dsiw03iw03ha04_2 = { 1, 2, {3} };

int main() {

	printf("%d\n" , dsiw03iw03hw00_0.m1);
	printf("%d\n" , dsiw03iw03hw00_0.m2);
	printf("%lu\n" , dsiw03iw03hw00_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03iw03hw00_1.m1);
	printf("%d\n" , dsiw03iw03hw00_1.m2);
	printf("\n");

	printf("%d\n" , dsiw03iw03iw03_0.m1);
	printf("%d\n" , dsiw03iw03iw03_0.m2);
	printf("%d\n" , dsiw03iw03iw03_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03iw03iw03_1.m1);
	printf("%d\n" , dsiw03iw03iw03_1.m2);
	printf("\n");

	printf("%d\n" , dsiw03iw03iw29_0.m1);
	printf("%d\n" , dsiw03iw03iw29_0.m2);
	printf("%d\n" , dsiw03iw03iw29_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03iw03iw29_1.m1);
	printf("%d\n" , dsiw03iw03iw29_1.m2);
	printf("\n");

	printf("%d\n" , dsiw03iw03hs00_0.m1);
	printf("%d\n" , dsiw03iw03hs00_0.m2);
	printf("%u\n"  , dsiw03iw03hs00_0.m3.m1);
	printf("%lu\n" , dsiw03iw03hs00_0.m3.m2);
	printf("\n");
	printf("%d\n" , dsiw03iw03hs00_1.m1);
	printf("%d\n" , dsiw03iw03hs00_1.m2);
	printf("\n");
	printf("%d\n" , dsiw03iw03hs00_2.m1);
	printf("%d\n" , dsiw03iw03hs00_2.m2);
	printf("%u\n"  , dsiw03iw03hs00_2.m3.m1);
	printf("\n");

	printf("%d\n" , dsiw03iw03hu00_0.m1);
	printf("%d\n" , dsiw03iw03hu00_0.m2);
	printf("%u\n"  , dsiw03iw03hu00_0.m3.m1);
	printf("\n");
	printf("%d\n" , dsiw03iw03hu00_1.m1);
	printf("%d\n" , dsiw03iw03hu00_1.m2);
	printf("\n");

	printf("%d\n" , dsiw03iw03ha01_0.m1);
	printf("%d\n" , dsiw03iw03ha01_0.m2);
	printf("%s\n"  , dsiw03iw03ha01_0.m3);
	printf("\n");
	printf("%d\n" , dsiw03iw03ha01_1.m1);
	printf("%d\n" , dsiw03iw03ha01_1.m2);
	printf("\n");
	printf("%d\n" , dsiw03iw03ha01_2.m1);
	printf("%d\n" , dsiw03iw03ha01_2.m2);
	printf("%s\n"  , dsiw03iw03ha01_2.m3);
	printf("\n");

	printf("%d\n" , dsiw03iw03ha04_0.m1);
	printf("%d\n" , dsiw03iw03ha04_0.m2);
	printf("%lu\n" , dsiw03iw03ha04_0.m3[0]);
	printf("%lu\n" , dsiw03iw03ha04_0.m3[1]);
	printf("\n");
	printf("%d\n" , dsiw03iw03ha04_1.m1);
	printf("%d\n" , dsiw03iw03ha04_1.m2);
	printf("\n");
	printf("%d\n" , dsiw03iw03ha04_2.m1);
	printf("%d\n" , dsiw03iw03ha04_2.m2);
	printf("%lu\n" , dsiw03iw03ha04_2.m3[0]);
	printf("\n");

	return 0;
}
