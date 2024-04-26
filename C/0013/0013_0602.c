                                                             
#include <stdio.h>                                              

union FUJW00HW00 {
	unsigned long   :0;
	unsigned long m2;
};

union FUJW00HW00 fujw00hw00_0 = { 1 };

union FUJW00IW03 {
	unsigned long   :0;
	unsigned long m2:3;
};

union FUJW00IW03 fujw00iw03_0 = { 1 };

union FUJW00IW29 {
	unsigned long   :0;
	unsigned long m2:29;
};

union FUJW00IW29 fujw00iw29_0 = { 1 };

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union FUJW00HS00 {
	unsigned long   :0;
	struct SUB_SHB00HW00 m2;
};

union FUJW00HS00 fujw00hs00_0 = { { 1, 2 } };
union FUJW00HS00 fujw00hs00_1 = { { 1 } };

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union FUJW00HU00 {
	unsigned long   :0;
	union SUB_UHB00HW00 m2;
};

union FUJW00HU00 fujw00hu00_0 = { { 1 } };

union FUJW00HA01 {
	unsigned long   :0;
	unsigned char m2[3];
};

union FUJW00HA01 fujw00ha01_0 = { "12" };
union FUJW00HA01 fujw00ha01_1 = { "1" };

union FUJW00HA04 {
	unsigned long   :0;
	unsigned long m2[2];
};

union FUJW00HA04 fujw00ha04_0 = { {1,2} };
union FUJW00HA04 fujw00ha04_1 = { {1} };

int main() {

	printf("%lu\n" , fujw00hw00_0.m2);
	printf("\n");

	printf("%d\n" , fujw00iw03_0.m2);
	printf("\n");

	printf("%d\n" , fujw00iw29_0.m2);
	printf("\n");

	printf("%u\n"  , fujw00hs00_0.m2.m1);
	printf("%lu\n" , fujw00hs00_0.m2.m2);
	printf("\n");
	printf("%u\n"  , fujw00hs00_1.m2.m1);
	printf("\n");

	printf("%u\n"  , fujw00hu00_0.m2.m1);
	printf("\n");

	printf("%s\n"  , fujw00ha01_0.m2);
	printf("\n");
	printf("%s\n"  , fujw00ha01_1.m2);
	printf("\n");

	printf("%lu\n" , fujw00ha04_0.m2[0]);
	printf("%lu\n" , fujw00ha04_0.m2[1]);
	printf("\n");
	printf("%lu\n" , fujw00ha04_1.m2[0]);
	printf("\n");

	return 0;
}
