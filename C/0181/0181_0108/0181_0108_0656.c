                                                             
#include <stdio.h>                                              

union IUJW29HW00 {
	unsigned long   :29;
	unsigned long m2;
};

union IUJW29HW00 iujw29hw00_0[2] = {{ 1 },{ 2 }};
union IUJW29HW00 iujw29hw00_1[2] = {{ 1 }};

union IUJW29IW03 {
	unsigned long   :29;
	unsigned long m2:3;
};

union IUJW29IW03 iujw29iw03_0[2] = {{ 1 },{ 2 }};
union IUJW29IW03 iujw29iw03_1[2] = {{ 1 }};

union IUJW29IW29 {
	unsigned long   :29;
	unsigned long m2:29;
};

union IUJW29IW29 iujw29iw29_0[2] = {{ 1 },{ 2 }};
union IUJW29IW29 iujw29iw29_1[2] = {{ 1 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union IUJW29HS00 {
	unsigned long   :29;
	struct SUB_SHB00HW00 m2;
};

union IUJW29HS00 iujw29hs00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
union IUJW29HS00 iujw29hs00_1[2] = {{ { 1, 2 } }};
union IUJW29HS00 iujw29hs00_2[2] = {{ { 1 } }};
union IUJW29HS00 iujw29hs00_3[2] = {{ { 1 } }};
union IUJW29HS00 iujw29hs00_4[2] = {{ { 1, 2 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union IUJW29HU00 {
	unsigned long   :29;
	union SUB_UHB00HW00 m2;
};

union IUJW29HU00 iujw29hu00_0[2] = {{ { 1 } },{ { 2 } }};
union IUJW29HU00 iujw29hu00_1[2] = {{ { 1 } }};

union IUJW29HA01 {
	unsigned long   :29;
	unsigned char m2[3];
};

union IUJW29HA01 iujw29ha01_0[2] = {{ "12" },{ "34" }};
union IUJW29HA01 iujw29ha01_1[2] = {{ "12" }};
union IUJW29HA01 iujw29ha01_2[2] = {{ "1" }};
union IUJW29HA01 iujw29ha01_3[2] = {{ "1" }};
union IUJW29HA01 iujw29ha01_4[2] = {{ "12" }};

union IUJW29HA04 {
	unsigned long   :29;
	unsigned long m2[2];
};

union IUJW29HA04 iujw29ha04_0[2] = {{ {1,2} },{ {3,4} }};
union IUJW29HA04 iujw29ha04_1[2] = {{ {1,2} }};
union IUJW29HA04 iujw29ha04_2[2] = {{ {1} }};
union IUJW29HA04 iujw29ha04_3[2] = {{ {1} }};
union IUJW29HA04 iujw29ha04_4[2] = {{ {1,2} }};

int lto_sub_671() {

	printf("%lu\n" , iujw29hw00_0[0].m2);
	printf("%lu\n" , iujw29hw00_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw29hw00_1[0].m2);
	printf("\n");

	printf("%lu\n" , iujw29iw03_0[0].m2);
	printf("%lu\n" , iujw29iw03_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw29iw03_1[0].m2);
	printf("\n");

	printf("%lu\n" , iujw29iw29_0[0].m2);
	printf("%lu\n" , iujw29iw29_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw29iw29_1[0].m2);
	printf("\n");

	printf("%u\n"  , iujw29hs00_0[0].m2.m1);
	printf("%lu\n" , iujw29hs00_0[0].m2.m2);
	printf("%u\n"  , iujw29hs00_0[1].m2.m1);
	printf("%lu\n" , iujw29hs00_0[1].m2.m2);
	printf("\n");
	printf("%u\n"  , iujw29hs00_1[0].m2.m1);
	printf("%lu\n" , iujw29hs00_1[0].m2.m2);
	printf("\n");
	printf("%u\n"  , iujw29hs00_2[0].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw29hs00_3[0].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw29hs00_4[0].m2.m1);
	printf("%lu\n" , iujw29hs00_4[0].m2.m2);
	printf("\n");

	printf("%u\n"  , iujw29hu00_0[0].m2.m1);
	printf("%u\n"  , iujw29hu00_0[1].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw29hu00_1[0].m2.m1);
	printf("\n");

	printf("%s\n"  , iujw29ha01_0[0].m2);
	printf("%s\n"  , iujw29ha01_0[1].m2);
	printf("\n");
	printf("%s\n"  , iujw29ha01_1[0].m2);
	printf("\n");
	printf("%s\n"  , iujw29ha01_2[0].m2);
	printf("\n");
	printf("%s\n"  , iujw29ha01_3[0].m2);
	printf("\n");
	printf("%s\n"  , iujw29ha01_4[0].m2);
	printf("\n");

	printf("%lu\n" , iujw29ha04_0[0].m2[0]);
	printf("%lu\n" , iujw29ha04_0[0].m2[1]);
	printf("%lu\n" , iujw29ha04_0[1].m2[0]);
	printf("%lu\n" , iujw29ha04_0[1].m2[1]);
	printf("\n");
	printf("%lu\n" , iujw29ha04_1[0].m2[0]);
	printf("%lu\n" , iujw29ha04_1[0].m2[1]);
	printf("\n");
	printf("%lu\n" , iujw29ha04_2[0].m2[0]);
	printf("\n");
	printf("%lu\n" , iujw29ha04_3[0].m2[0]);
	printf("\n");
	printf("%lu\n" , iujw29ha04_4[0].m2[0]);
	printf("%lu\n" , iujw29ha04_4[0].m2[1]);
	printf("\n");

	return 0;
}
