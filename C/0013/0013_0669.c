                                                             
#include <stdio.h>                                              

union IUJW00HW00 {
	unsigned long   :0;
	unsigned long m2;
};

union IUJW00HW00 iujw00hw00_0[2] = {{ 1 },{ 2 }};
union IUJW00HW00 iujw00hw00_1[2] = {{ 1 }};

union IUJW00IW03 {
	unsigned long   :0;
	unsigned long m2:3;
};

union IUJW00IW03 iujw00iw03_0[2] = {{ 1 },{ 2 }};
union IUJW00IW03 iujw00iw03_1[2] = {{ 1 }};

union IUJW00IW29 {
	unsigned long   :0;
	unsigned long m2:29;
};

union IUJW00IW29 iujw00iw29_0[2] = {{ 1 },{ 2 }};
union IUJW00IW29 iujw00iw29_1[2] = {{ 1 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union IUJW00HS00 {
	unsigned long   :0;
	struct SUB_SHB00HW00 m2;
};

union IUJW00HS00 iujw00hs00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
union IUJW00HS00 iujw00hs00_1[2] = {{ { 1, 2 } }};
union IUJW00HS00 iujw00hs00_2[2] = {{ { 1 } }};
union IUJW00HS00 iujw00hs00_3[2] = {{ { 1 } }};
union IUJW00HS00 iujw00hs00_4[2] = {{ { 1, 2 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union IUJW00HU00 {
	unsigned long   :0;
	union SUB_UHB00HW00 m2;
};

union IUJW00HU00 iujw00hu00_0[2] = {{ { 1 } },{ { 2 } }};
union IUJW00HU00 iujw00hu00_1[2] = {{ { 1 } }};

union IUJW00HA01 {
	unsigned long   :0;
	unsigned char m2[3];
};

union IUJW00HA01 iujw00ha01_0[2] = {{ "12" },{ "34" }};
union IUJW00HA01 iujw00ha01_1[2] = {{ "12" }};
union IUJW00HA01 iujw00ha01_2[2] = {{ "1" }};
union IUJW00HA01 iujw00ha01_3[2] = {{ "1" }};
union IUJW00HA01 iujw00ha01_4[2] = {{ "12" }};

union IUJW00HA04 {
	unsigned long   :0;
	unsigned long m2[2];
};

union IUJW00HA04 iujw00ha04_0[2] = {{ {1,2} },{ {3,4} }};
union IUJW00HA04 iujw00ha04_1[2] = {{ {1,2} }};
union IUJW00HA04 iujw00ha04_2[2] = {{ {1} }};
union IUJW00HA04 iujw00ha04_3[2] = {{ {1} }};
union IUJW00HA04 iujw00ha04_4[2] = {{ {1,2} }};

int main() {

	printf("%lu\n" , iujw00hw00_0[0].m2);
	printf("%lu\n" , iujw00hw00_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw00hw00_1[0].m2);
	printf("\n");

	printf("%d\n" , iujw00iw03_0[0].m2);
	printf("%d\n" , iujw00iw03_0[1].m2);
	printf("\n");
	printf("%d\n" , iujw00iw03_1[0].m2);
	printf("\n");

	printf("%d\n" , iujw00iw29_0[0].m2);
	printf("%d\n" , iujw00iw29_0[1].m2);
	printf("\n");
	printf("%d\n" , iujw00iw29_1[0].m2);
	printf("\n");

	printf("%u\n"  , iujw00hs00_0[0].m2.m1);
	printf("%lu\n" , iujw00hs00_0[0].m2.m2);
	printf("%u\n"  , iujw00hs00_0[1].m2.m1);
	printf("%lu\n" , iujw00hs00_0[1].m2.m2);
	printf("\n");
	printf("%u\n"  , iujw00hs00_1[0].m2.m1);
	printf("%lu\n" , iujw00hs00_1[0].m2.m2);
	printf("\n");
	printf("%u\n"  , iujw00hs00_2[0].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw00hs00_3[0].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw00hs00_4[0].m2.m1);
	printf("%lu\n" , iujw00hs00_4[0].m2.m2);
	printf("\n");

	printf("%u\n"  , iujw00hu00_0[0].m2.m1);
	printf("%u\n"  , iujw00hu00_0[1].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw00hu00_1[0].m2.m1);
	printf("\n");

	printf("%s\n"  , iujw00ha01_0[0].m2);
	printf("%s\n"  , iujw00ha01_0[1].m2);
	printf("\n");
	printf("%s\n"  , iujw00ha01_1[0].m2);
	printf("\n");
	printf("%s\n"  , iujw00ha01_2[0].m2);
	printf("\n");
	printf("%s\n"  , iujw00ha01_3[0].m2);
	printf("\n");
	printf("%s\n"  , iujw00ha01_4[0].m2);
	printf("\n");

	printf("%lu\n" , iujw00ha04_0[0].m2[0]);
	printf("%lu\n" , iujw00ha04_0[0].m2[1]);
	printf("%lu\n" , iujw00ha04_0[1].m2[0]);
	printf("%lu\n" , iujw00ha04_0[1].m2[1]);
	printf("\n");
	printf("%lu\n" , iujw00ha04_1[0].m2[0]);
	printf("%lu\n" , iujw00ha04_1[0].m2[1]);
	printf("\n");
	printf("%lu\n" , iujw00ha04_2[0].m2[0]);
	printf("\n");
	printf("%lu\n" , iujw00ha04_3[0].m2[0]);
	printf("\n");
	printf("%lu\n" , iujw00ha04_4[0].m2[0]);
	printf("%lu\n" , iujw00ha04_4[0].m2[1]);
	printf("\n");

	return 0;
}
