
	
	
	

#include <stdio.h>                                              

union CUJB05HB00 {
	unsigned char   :5;
	unsigned char m2;
} cujb05hb00 = { 1 };

union CUJB05IB03 {
	unsigned char   :5;
	unsigned char m2:3;
} cujb05ib03 = { 1 };

union CUJB05IB05 {
	unsigned char   :5;
	unsigned char m2:5;
} cujb05ib05 = { 1 };

union CUJB05HH00 {
	unsigned char   :5;
	unsigned short m2;
} cujb05hh00 = { 1 };

union CUJB05IH03 {
	unsigned char   :5;
	unsigned short m2:3;
} cujb05ih03 = { 1 };

union CUJB05IH13 {
	unsigned char   :5;
	unsigned short m2:13;
} cujb05ih13 = { 1 };

union CUJB05HW00 {
	unsigned char   :5;
	unsigned long m2;
} cujb05hw00 = { 1 };

union CUJB05IW03 {
	unsigned char   :5;
	unsigned long m2:3;
} cujb05iw03 = { 1 };

union CUJB05IW29 {
	unsigned char   :5;
	unsigned long m2:29;
} cujb05iw29 = { 1 };

union CUJB05HD00 {
	unsigned char   :5;
	unsigned long long m2;
} cujb05hd00 = { 1 };

union CUJB05ID03 {
	unsigned char   :5;
	unsigned long long m2:3;
} cujb05id03 = { 1 };

union CUJB05ID61 {
	unsigned char   :5;
	unsigned long long m2:61;
} cujb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJB05HS00 {
	unsigned char   :5;
	struct TAGHB00 m2;
} cujb05hs00 = { { 1 } };

int lto_sub_528() {

	printf("%u\n"  , cujb05hb00.m2);
	printf("\n");

	printf("%u\n"  , cujb05ib03.m2);
	printf("\n");

	printf("%u\n"  , cujb05ib05.m2);
	printf("\n");

	printf("%u\n"  , cujb05hh00.m2);
	printf("\n");

	printf("%u\n"  , cujb05ih03.m2);
	printf("\n");

	printf("%u\n"  , cujb05ih13.m2);
	printf("\n");

	printf("%lu\n" , cujb05hw00.m2);
	printf("\n");

	printf("%lu\n" , cujb05iw03.m2);
	printf("\n");

	printf("%lu\n" , cujb05iw29.m2);
	printf("\n");

	printf("%llu\n", cujb05hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujb05id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujb05id61.m2);
	printf("\n");

	printf("%u\n"  , cujb05hs00.m2.m1);
	printf("\n");

	return 0;
}
