                                                             
#include <stdio.h>                                              

union FUJW29HW00 {
	unsigned long   :29;
	unsigned long m2;
};

union FUJW29HW00 fujw29hw00_0 = { 1 };

union FUJW29IW03 {
	unsigned long   :29;
	unsigned long m2:3;
};

union FUJW29IW03 fujw29iw03_0 = { 1 };

union FUJW29IW29 {
	unsigned long   :29;
	unsigned long m2:29;
};

union FUJW29IW29 fujw29iw29_0 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union FUJW29HS00 {
	unsigned long   :29;
	struct SUB_SHB00HW00 m2;
};

union FUJW29HS00 fujw29hs00_0 = { { 1, 2 } };
union FUJW29HS00 fujw29hs00_1 = { { 1 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union FUJW29HU00 {
	unsigned long   :29;
	union SUB_UHB00HW00 m2;
};

union FUJW29HU00 fujw29hu00_0 = { { 1 } };

union FUJW29HA01 {
	unsigned long   :29;
	unsigned char m2[3];
};

union FUJW29HA01 fujw29ha01_0 = { "12" };
union FUJW29HA01 fujw29ha01_1 = { "1" };

union FUJW29HA04 {
	unsigned long   :29;
	unsigned long m2[2];
};

union FUJW29HA04 fujw29ha04_0 = { {1,2} };
union FUJW29HA04 fujw29ha04_1 = { {1} };

int main() {

	printf("%lu\n" , fujw29hw00_0.m2);
	printf("\n");

	printf("%d\n" , fujw29iw03_0.m2);
	printf("\n");

	printf("%d\n" , fujw29iw29_0.m2);
	printf("\n");

	printf("%u\n"  , fujw29hs00_0.m2.m1);
	printf("%lu\n" , fujw29hs00_0.m2.m2);
	printf("\n");
	printf("%u\n"  , fujw29hs00_1.m2.m1);
	printf("\n");

	printf("%u\n"  , fujw29hu00_0.m2.m1);
	printf("\n");

	printf("%s\n"  , fujw29ha01_0.m2);
	printf("\n");
	printf("%s\n"  , fujw29ha01_1.m2);
	printf("\n");

	printf("%lu\n" , fujw29ha04_0.m2[0]);
	printf("%lu\n" , fujw29ha04_0.m2[1]);
	printf("\n");
	printf("%lu\n" , fujw29ha04_1.m2[0]);
	printf("\n");

	return 0;
}
