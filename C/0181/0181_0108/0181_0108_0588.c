
	
	
	

#include <stdio.h>                                              

union FUJW03HW00 {
	unsigned long   :3;
	unsigned long m2;
};

union FUJW03HW00 fujw03hw00_0 = { 1 };

union FUJW03IW03 {
	unsigned long   :3;
	unsigned long m2:3;
};

union FUJW03IW03 fujw03iw03_0 = { 1 };

union FUJW03IW29 {
	unsigned long   :3;
	unsigned long m2:29;
};

union FUJW03IW29 fujw03iw29_0 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union FUJW03HS00 {
	unsigned long   :3;
	struct SUB_SHB00HW00 m2;
};

union FUJW03HS00 fujw03hs00_0 = { { 1, 2 } };
union FUJW03HS00 fujw03hs00_1 = { { 1 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union FUJW03HU00 {
	unsigned long   :3;
	union SUB_UHB00HW00 m2;
};

union FUJW03HU00 fujw03hu00_0 = { { 1 } };

union FUJW03HA01 {
	unsigned long   :3;
	unsigned char m2[3];
};

union FUJW03HA01 fujw03ha01_0 = { "12" };
union FUJW03HA01 fujw03ha01_1 = { "1" };

union FUJW03HA04 {
	unsigned long   :3;
	unsigned long m2[2];
};

union FUJW03HA04 fujw03ha04_0 = { {1,2} };
union FUJW03HA04 fujw03ha04_1 = { {1} };

int lto_sub_603() {

	printf("%lu\n" , fujw03hw00_0.m2);
	printf("\n");

	printf("%lu\n" , fujw03iw03_0.m2);
	printf("\n");

	printf("%lu\n" , fujw03iw29_0.m2);
	printf("\n");

	printf("%u\n"  , fujw03hs00_0.m2.m1);
	printf("%lu\n" , fujw03hs00_0.m2.m2);
	printf("\n");
	printf("%u\n"  , fujw03hs00_1.m2.m1);
	printf("\n");

	printf("%u\n"  , fujw03hu00_0.m2.m1);
	printf("\n");

	printf("%s\n"  , fujw03ha01_0.m2);
	printf("\n");
	printf("%s\n"  , fujw03ha01_1.m2);
	printf("\n");

	printf("%lu\n" , fujw03ha04_0.m2[0]);
	printf("%lu\n" , fujw03ha04_0.m2[1]);
	printf("\n");
	printf("%lu\n" , fujw03ha04_1.m2[0]);
	printf("\n");

	return 0;
}
