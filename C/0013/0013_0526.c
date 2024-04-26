                                                             
#include <stdio.h>                                              

union CUJB00HB00 {
	unsigned char   :0;
	unsigned char m2;
} cujb00hb00 = { 1 };

union CUJB00IB03 {
	unsigned char   :0;
	unsigned char m2:3;
} cujb00ib03 = { 1 };

union CUJB00IB05 {
	unsigned char   :0;
	unsigned char m2:5;
} cujb00ib05 = { 1 };

union CUJB00HH00 {
	unsigned char   :0;
	unsigned short m2;
} cujb00hh00 = { 1 };

union CUJB00IH03 {
	unsigned char   :0;
	unsigned short m2:3;
} cujb00ih03 = { 1 };

union CUJB00IH13 {
	unsigned char   :0;
	unsigned short m2:13;
} cujb00ih13 = { 1 };

union CUJB00HW00 {
	unsigned char   :0;
	unsigned long m2;
} cujb00hw00 = { 1 };

union CUJB00IW03 {
	unsigned char   :0;
	unsigned long m2:3;
} cujb00iw03 = { 1 };

union CUJB00IW29 {
	unsigned char   :0;
	unsigned long m2:29;
} cujb00iw29 = { 1 };

union CUJB00HD00 {
	unsigned char   :0;
	unsigned long long m2;
} cujb00hd00 = { 1 };

union CUJB00ID03 {
	unsigned char   :0;
	unsigned long long m2:3;
} cujb00id03 = { 1 };

union CUJB00ID61 {
	unsigned char   :0;
	unsigned long long m2:61;
} cujb00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJB00HS00 {
	unsigned char   :0;
	struct TAGHB00 m2;
} cujb00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , cujb00hb00.m2);
	printf("\n");

	printf("%u\n"  , cujb00ib03.m2);
	printf("\n");

	printf("%u\n"  , cujb00ib05.m2);
	printf("\n");

	printf("%u\n"  , cujb00hh00.m2);
	printf("\n");

	printf("%u\n"  , cujb00ih03.m2);
	printf("\n");

	printf("%u\n"  , cujb00ih13.m2);
	printf("\n");

	printf("%lu\n" , cujb00hw00.m2);
	printf("\n");

	printf("%d\n" , cujb00iw03.m2);
	printf("\n");

	printf("%d\n" , cujb00iw29.m2);
	printf("\n");

	printf("%llu\n", cujb00hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujb00id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujb00id61.m2);
	printf("\n");

	printf("%u\n"  , cujb00hs00.m2.m1);
	printf("\n");

	return 0;
}
