
	
	
	

#include <stdio.h>                                              

union CUJD00HB00 {
	unsigned long long   :0;
	unsigned char m2;
} cujd00hb00 = { 1 };

union CUJD00IB03 {
	unsigned long long   :0;
	unsigned char m2:3;
} cujd00ib03 = { 1 };

union CUJD00IB05 {
	unsigned long long   :0;
	unsigned char m2:5;
} cujd00ib05 = { 1 };

union CUJD00HH00 {
	unsigned long long   :0;
	unsigned short m2;
} cujd00hh00 = { 1 };

union CUJD00IH03 {
	unsigned long long   :0;
	unsigned short m2:3;
} cujd00ih03 = { 1 };

union CUJD00IH13 {
	unsigned long long   :0;
	unsigned short m2:13;
} cujd00ih13 = { 1 };

union CUJD00HW00 {
	unsigned long long   :0;
	unsigned long m2;
} cujd00hw00 = { 1 };

union CUJD00IW03 {
	unsigned long long   :0;
	unsigned long m2:3;
} cujd00iw03 = { 1 };

union CUJD00IW29 {
	unsigned long long   :0;
	unsigned long m2:29;
} cujd00iw29 = { 1 };

union CUJD00HD00 {
	unsigned long long   :0;
	unsigned long long m2;
} cujd00hd00 = { 1 };

union CUJD00ID03 {
	unsigned long long   :0;
	unsigned long long m2:3;
} cujd00id03 = { 1 };

union CUJD00ID61 {
	unsigned long long   :0;
	unsigned long long m2:61;
} cujd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJD00HS00 {
	unsigned long long   :0;
	struct TAGHB00 m2;
} cujd00hs00 = { { 1 } };

int lto_sub_529() {

	printf("%u\n"  , cujd00hb00.m2);
	printf("\n");

	printf("%u\n"  , cujd00ib03.m2);
	printf("\n");

	printf("%u\n"  , cujd00ib05.m2);
	printf("\n");

	printf("%u\n"  , cujd00hh00.m2);
	printf("\n");

	printf("%u\n"  , cujd00ih03.m2);
	printf("\n");

	printf("%u\n"  , cujd00ih13.m2);
	printf("\n");

	printf("%lu\n" , cujd00hw00.m2);
	printf("\n");

	printf("%lu\n" , cujd00iw03.m2);
	printf("\n");

	printf("%lu\n" , cujd00iw29.m2);
	printf("\n");

	printf("%llu\n", cujd00hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujd00id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujd00id61.m2);
	printf("\n");

	printf("%u\n"  , cujd00hs00.m2.m1);
	printf("\n");

	return 0;
}
