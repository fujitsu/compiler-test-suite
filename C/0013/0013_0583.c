                                                             
#include <stdio.h>                                              

struct DSJW29IW03HW00 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3;
};

struct DSJW29IW03HW00 dsjw29iw03hw00_0 = { 1, 2 };
struct DSJW29IW03HW00 dsjw29iw03hw00_1 = { 1 };

struct DSJW29IW03IW03 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3:3;
};

struct DSJW29IW03IW03 dsjw29iw03iw03_0 = { 1, 2 };
struct DSJW29IW03IW03 dsjw29iw03iw03_1 = { 1 };

struct DSJW29IW03IW29 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3:29;
};

struct DSJW29IW03IW29 dsjw29iw03iw29_0 = { 1, 2 };
struct DSJW29IW03IW29 dsjw29iw03iw29_1 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW29IW03HS00 {
	unsigned long   :29;
	unsigned long m2:3;
	struct SUB_SHB00HW00 m3;
};

struct DSJW29IW03HS00 dsjw29iw03hs00_0 = { 1, { 2, 3 } };
struct DSJW29IW03HS00 dsjw29iw03hs00_1 = { 1 };
struct DSJW29IW03HS00 dsjw29iw03hs00_2 = { 1, { 2 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct DSJW29IW03HU00 {
	unsigned long   :29;
	unsigned long m2:3;
	union SUB_UHB00HW00 m3;
};

struct DSJW29IW03HU00 dsjw29iw03hu00_0 = { 1, { 2 } };
struct DSJW29IW03HU00 dsjw29iw03hu00_1 = { 1 };

struct DSJW29IW03HA01 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned char m3[3];
};

struct DSJW29IW03HA01 dsjw29iw03ha01_0 = { 1, "23" };
struct DSJW29IW03HA01 dsjw29iw03ha01_1 = { 1 };
struct DSJW29IW03HA01 dsjw29iw03ha01_2 = { 1, "2" };

struct DSJW29IW03HA04 {
	unsigned long   :29;
	unsigned long m2:3;
	unsigned long m3[2];
};

struct DSJW29IW03HA04 dsjw29iw03ha04_0 = { 1, {2,3} };
struct DSJW29IW03HA04 dsjw29iw03ha04_1 = { 1 };
struct DSJW29IW03HA04 dsjw29iw03ha04_2 = { 1, {2} };

int main() {

	printf("%d\n" , dsjw29iw03hw00_0.m2);
	printf("%lu\n" , dsjw29iw03hw00_0.m3);
	printf("\n");
	printf("%d\n" , dsjw29iw03hw00_1.m2);
	printf("\n");

	printf("%d\n" , dsjw29iw03iw03_0.m2);
	printf("%d\n" , dsjw29iw03iw03_0.m3);
	printf("\n");
	printf("%d\n" , dsjw29iw03iw03_1.m2);
	printf("\n");

	printf("%d\n" , dsjw29iw03iw29_0.m2);
	printf("%d\n" , dsjw29iw03iw29_0.m3);
	printf("\n");
	printf("%d\n" , dsjw29iw03iw29_1.m2);
	printf("\n");

	printf("%d\n" , dsjw29iw03hs00_0.m2);
	printf("%u\n"  , dsjw29iw03hs00_0.m3.m1);
	printf("%lu\n" , dsjw29iw03hs00_0.m3.m2);
	printf("\n");
	printf("%d\n" , dsjw29iw03hs00_1.m2);
	printf("\n");
	printf("%d\n" , dsjw29iw03hs00_2.m2);
	printf("%u\n"  , dsjw29iw03hs00_2.m3.m1);
	printf("\n");

	printf("%d\n" , dsjw29iw03hu00_0.m2);
	printf("%u\n"  , dsjw29iw03hu00_0.m3.m1);
	printf("\n");
	printf("%d\n" , dsjw29iw03hu00_1.m2);
	printf("\n");

	printf("%d\n" , dsjw29iw03ha01_0.m2);
	printf("%s\n"  , dsjw29iw03ha01_0.m3);
	printf("\n");
	printf("%d\n" , dsjw29iw03ha01_1.m2);
	printf("\n");
	printf("%d\n" , dsjw29iw03ha01_2.m2);
	printf("%s\n"  , dsjw29iw03ha01_2.m3);
	printf("\n");

	printf("%d\n" , dsjw29iw03ha04_0.m2);
	printf("%lu\n" , dsjw29iw03ha04_0.m3[0]);
	printf("%lu\n" , dsjw29iw03ha04_0.m3[1]);
	printf("\n");
	printf("%d\n" , dsjw29iw03ha04_1.m2);
	printf("\n");
	printf("%d\n" , dsjw29iw03ha04_2.m2);
	printf("%lu\n" , dsjw29iw03ha04_2.m3[0]);
	printf("\n");

	return 0;
}
