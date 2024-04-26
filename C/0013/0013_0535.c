                                                             
#include <stdio.h>                                              

union CUJW00HB00 {
	unsigned long   :0;
	unsigned char m2;
} cujw00hb00 = { 1 };

union CUJW00IB03 {
	unsigned long   :0;
	unsigned char m2:3;
} cujw00ib03 = { 1 };

union CUJW00IB05 {
	unsigned long   :0;
	unsigned char m2:5;
} cujw00ib05 = { 1 };

union CUJW00HH00 {
	unsigned long   :0;
	unsigned short m2;
} cujw00hh00 = { 1 };

union CUJW00IH03 {
	unsigned long   :0;
	unsigned short m2:3;
} cujw00ih03 = { 1 };

union CUJW00IH13 {
	unsigned long   :0;
	unsigned short m2:13;
} cujw00ih13 = { 1 };

union CUJW00HW00 {
	unsigned long   :0;
	unsigned long m2;
} cujw00hw00 = { 1 };

union CUJW00IW03 {
	unsigned long   :0;
	unsigned long m2:3;
} cujw00iw03 = { 1 };

union CUJW00IW29 {
	unsigned long   :0;
	unsigned long m2:29;
} cujw00iw29 = { 1 };

union CUJW00HD00 {
	unsigned long   :0;
	unsigned long long m2;
} cujw00hd00 = { 1 };

union CUJW00ID03 {
	unsigned long   :0;
	unsigned long long m2:3;
} cujw00id03 = { 1 };

union CUJW00ID61 {
	unsigned long   :0;
	unsigned long long m2:61;
} cujw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJW00HS00 {
	unsigned long   :0;
	struct TAGHB00 m2;
} cujw00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , cujw00hb00.m2);
	printf("\n");

	printf("%u\n"  , cujw00ib03.m2);
	printf("\n");

	printf("%u\n"  , cujw00ib05.m2);
	printf("\n");

	printf("%u\n"  , cujw00hh00.m2);
	printf("\n");

	printf("%u\n"  , cujw00ih03.m2);
	printf("\n");

	printf("%u\n"  , cujw00ih13.m2);
	printf("\n");

	printf("%lu\n" , cujw00hw00.m2);
	printf("\n");

	printf("%d\n" , cujw00iw03.m2);
	printf("\n");

	printf("%d\n" , cujw00iw29.m2);
	printf("\n");

	printf("%llu\n", cujw00hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujw00id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujw00id61.m2);
	printf("\n");

	printf("%u\n"  , cujw00hs00.m2.m1);
	printf("\n");

	return 0;
}
