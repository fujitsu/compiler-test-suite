
	
	
	

#include <stdio.h>                                              

union CUJW29HB00 {
	unsigned long   :29;
	unsigned char m2;
} cujw29hb00 = { 1 };

union CUJW29IB03 {
	unsigned long   :29;
	unsigned char m2:3;
} cujw29ib03 = { 1 };

union CUJW29IB05 {
	unsigned long   :29;
	unsigned char m2:5;
} cujw29ib05 = { 1 };

union CUJW29HH00 {
	unsigned long   :29;
	unsigned short m2;
} cujw29hh00 = { 1 };

union CUJW29IH03 {
	unsigned long   :29;
	unsigned short m2:3;
} cujw29ih03 = { 1 };

union CUJW29IH13 {
	unsigned long   :29;
	unsigned short m2:13;
} cujw29ih13 = { 1 };

union CUJW29HW00 {
	unsigned long   :29;
	unsigned long m2;
} cujw29hw00 = { 1 };

union CUJW29IW03 {
	unsigned long   :29;
	unsigned long m2:3;
} cujw29iw03 = { 1 };

union CUJW29IW29 {
	unsigned long   :29;
	unsigned long m2:29;
} cujw29iw29 = { 1 };

union CUJW29HD00 {
	unsigned long   :29;
	unsigned long long m2;
} cujw29hd00 = { 1 };

union CUJW29ID03 {
	unsigned long   :29;
	unsigned long long m2:3;
} cujw29id03 = { 1 };

union CUJW29ID61 {
	unsigned long   :29;
	unsigned long long m2:61;
} cujw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJW29HS00 {
	unsigned long   :29;
	struct TAGHB00 m2;
} cujw29hs00 = { { 1 } };

int lto_sub_537() {

	printf("%u\n"  , cujw29hb00.m2);
	printf("\n");

	printf("%u\n"  , cujw29ib03.m2);
	printf("\n");

	printf("%u\n"  , cujw29ib05.m2);
	printf("\n");

	printf("%u\n"  , cujw29hh00.m2);
	printf("\n");

	printf("%u\n"  , cujw29ih03.m2);
	printf("\n");

	printf("%u\n"  , cujw29ih13.m2);
	printf("\n");

	printf("%lu\n" , cujw29hw00.m2);
	printf("\n");

	printf("%lu\n" , cujw29iw03.m2);
	printf("\n");

	printf("%lu\n" , cujw29iw29.m2);
	printf("\n");

	printf("%llu\n", cujw29hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujw29id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujw29id61.m2);
	printf("\n");

	printf("%u\n"  , cujw29hs00.m2.m1);
	printf("\n");

	return 0;
}
