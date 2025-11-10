
	
	
	

#include <stdio.h>                                              

union IUJW03HW00 {
	unsigned long   :3;
	unsigned long m2;
};

union IUJW03HW00 iujw03hw00_0[2] = {{ 1 },{ 2 }};
union IUJW03HW00 iujw03hw00_1[2] = {{ 1 }};

union IUJW03IW03 {
	unsigned long   :3;
	unsigned long m2:3;
};

union IUJW03IW03 iujw03iw03_0[2] = {{ 1 },{ 2 }};
union IUJW03IW03 iujw03iw03_1[2] = {{ 1 }};

union IUJW03IW29 {
	unsigned long   :3;
	unsigned long m2:29;
};

union IUJW03IW29 iujw03iw29_0[2] = {{ 1 },{ 2 }};
union IUJW03IW29 iujw03iw29_1[2] = {{ 1 }};

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union IUJW03HS00 {
	unsigned long   :3;
	struct SUB_SHB00HW00 m2;
};

union IUJW03HS00 iujw03hs00_0[2] = {{ { 1, 2 } },{ { 3, 4 } }};
union IUJW03HS00 iujw03hs00_1[2] = {{ { 1, 2 } }};
union IUJW03HS00 iujw03hs00_2[2] = {{ { 1 } }};
union IUJW03HS00 iujw03hs00_3[2] = {{ { 1 } }};
union IUJW03HS00 iujw03hs00_4[2] = {{ { 1, 2 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union IUJW03HU00 {
	unsigned long   :3;
	union SUB_UHB00HW00 m2;
};

union IUJW03HU00 iujw03hu00_0[2] = {{ { 1 } },{ { 2 } }};
union IUJW03HU00 iujw03hu00_1[2] = {{ { 1 } }};

union IUJW03HA01 {
	unsigned long   :3;
	unsigned char m2[3];
};

union IUJW03HA01 iujw03ha01_0[2] = {{ "12" },{ "34" }};
union IUJW03HA01 iujw03ha01_1[2] = {{ "12" }};
union IUJW03HA01 iujw03ha01_2[2] = {{ "1" }};
union IUJW03HA01 iujw03ha01_3[2] = {{ "1" }};
union IUJW03HA01 iujw03ha01_4[2] = {{ "12" }};

union IUJW03HA04 {
	unsigned long   :3;
	unsigned long m2[2];
};

union IUJW03HA04 iujw03ha04_0[2] = {{ {1,2} },{ {3,4} }};
union IUJW03HA04 iujw03ha04_1[2] = {{ {1,2} }};
union IUJW03HA04 iujw03ha04_2[2] = {{ {1} }};
union IUJW03HA04 iujw03ha04_3[2] = {{ {1} }};
union IUJW03HA04 iujw03ha04_4[2] = {{ {1,2} }};

int lto_sub_670() {

	printf("%lu\n" , iujw03hw00_0[0].m2);
	printf("%lu\n" , iujw03hw00_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw03hw00_1[0].m2);
	printf("\n");

	printf("%lu\n" , iujw03iw03_0[0].m2);
	printf("%lu\n" , iujw03iw03_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw03iw03_1[0].m2);
	printf("\n");

	printf("%lu\n" , iujw03iw29_0[0].m2);
	printf("%lu\n" , iujw03iw29_0[1].m2);
	printf("\n");
	printf("%lu\n" , iujw03iw29_1[0].m2);
	printf("\n");

	printf("%u\n"  , iujw03hs00_0[0].m2.m1);
	printf("%lu\n" , iujw03hs00_0[0].m2.m2);
	printf("%u\n"  , iujw03hs00_0[1].m2.m1);
	printf("%lu\n" , iujw03hs00_0[1].m2.m2);
	printf("\n");
	printf("%u\n"  , iujw03hs00_1[0].m2.m1);
	printf("%lu\n" , iujw03hs00_1[0].m2.m2);
	printf("\n");
	printf("%u\n"  , iujw03hs00_2[0].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw03hs00_3[0].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw03hs00_4[0].m2.m1);
	printf("%lu\n" , iujw03hs00_4[0].m2.m2);
	printf("\n");

	printf("%u\n"  , iujw03hu00_0[0].m2.m1);
	printf("%u\n"  , iujw03hu00_0[1].m2.m1);
	printf("\n");
	printf("%u\n"  , iujw03hu00_1[0].m2.m1);
	printf("\n");

	printf("%s\n"  , iujw03ha01_0[0].m2);
	printf("%s\n"  , iujw03ha01_0[1].m2);
	printf("\n");
	printf("%s\n"  , iujw03ha01_1[0].m2);
	printf("\n");
	printf("%s\n"  , iujw03ha01_2[0].m2);
	printf("\n");
	printf("%s\n"  , iujw03ha01_3[0].m2);
	printf("\n");
	printf("%s\n"  , iujw03ha01_4[0].m2);
	printf("\n");

	printf("%lu\n" , iujw03ha04_0[0].m2[0]);
	printf("%lu\n" , iujw03ha04_0[0].m2[1]);
	printf("%lu\n" , iujw03ha04_0[1].m2[0]);
	printf("%lu\n" , iujw03ha04_0[1].m2[1]);
	printf("\n");
	printf("%lu\n" , iujw03ha04_1[0].m2[0]);
	printf("%lu\n" , iujw03ha04_1[0].m2[1]);
	printf("\n");
	printf("%lu\n" , iujw03ha04_2[0].m2[0]);
	printf("\n");
	printf("%lu\n" , iujw03ha04_3[0].m2[0]);
	printf("\n");
	printf("%lu\n" , iujw03ha04_4[0].m2[0]);
	printf("%lu\n" , iujw03ha04_4[0].m2[1]);
	printf("\n");

	return 0;
}
