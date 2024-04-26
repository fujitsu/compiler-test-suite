                                                             
#include <stdio.h>                                              

union CUJD61HB00 {
	unsigned long long   :61;
	unsigned char m2;
} cujd61hb00 = { 1 };

union CUJD61IB03 {
	unsigned long long   :61;
	unsigned char m2:3;
} cujd61ib03 = { 1 };

union CUJD61IB05 {
	unsigned long long   :61;
	unsigned char m2:5;
} cujd61ib05 = { 1 };

union CUJD61HH00 {
	unsigned long long   :61;
	unsigned short m2;
} cujd61hh00 = { 1 };

union CUJD61IH03 {
	unsigned long long   :61;
	unsigned short m2:3;
} cujd61ih03 = { 1 };

union CUJD61IH13 {
	unsigned long long   :61;
	unsigned short m2:13;
} cujd61ih13 = { 1 };

union CUJD61HW00 {
	unsigned long long   :61;
	unsigned long m2;
} cujd61hw00 = { 1 };

union CUJD61IW03 {
	unsigned long long   :61;
	unsigned long m2:3;
} cujd61iw03 = { 1 };

union CUJD61IW29 {
	unsigned long long   :61;
	unsigned long m2:29;
} cujd61iw29 = { 1 };

union CUJD61HD00 {
	unsigned long long   :61;
	unsigned long long m2;
} cujd61hd00 = { 1 };

union CUJD61ID03 {
	unsigned long long   :61;
	unsigned long long m2:3;
} cujd61id03 = { 1 };

union CUJD61ID61 {
	unsigned long long   :61;
	unsigned long long m2:61;
} cujd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJD61HS00 {
	unsigned long long   :61;
	struct TAGHB00 m2;
} cujd61hs00 = { { 1 } };

int main() {

	printf("%u\n"  , cujd61hb00.m2);
	printf("\n");

	printf("%u\n"  , cujd61ib03.m2);
	printf("\n");

	printf("%u\n"  , cujd61ib05.m2);
	printf("\n");

	printf("%u\n"  , cujd61hh00.m2);
	printf("\n");

	printf("%u\n"  , cujd61ih03.m2);
	printf("\n");

	printf("%u\n"  , cujd61ih13.m2);
	printf("\n");

	printf("%lu\n" , cujd61hw00.m2);
	printf("\n");

	printf("%d\n" , cujd61iw03.m2);
	printf("\n");

	printf("%d\n" , cujd61iw29.m2);
	printf("\n");

	printf("%llu\n", cujd61hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujd61id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujd61id61.m2);
	printf("\n");

	printf("%u\n"  , cujd61hs00.m2.m1);
	printf("\n");

	return 0;
}
