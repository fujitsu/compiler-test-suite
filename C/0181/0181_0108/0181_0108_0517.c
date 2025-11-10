
	
	
	

#include <stdio.h>                                              

union CUJH00HB00 {
	unsigned short   :0;
	unsigned char m2;
} cujh00hb00 = { 1 };

union CUJH00IB03 {
	unsigned short   :0;
	unsigned char m2:3;
} cujh00ib03 = { 1 };

union CUJH00IB05 {
	unsigned short   :0;
	unsigned char m2:5;
} cujh00ib05 = { 1 };

union CUJH00HH00 {
	unsigned short   :0;
	unsigned short m2;
} cujh00hh00 = { 1 };

union CUJH00IH03 {
	unsigned short   :0;
	unsigned short m2:3;
} cujh00ih03 = { 1 };

union CUJH00IH13 {
	unsigned short   :0;
	unsigned short m2:13;
} cujh00ih13 = { 1 };

union CUJH00HW00 {
	unsigned short   :0;
	unsigned long m2;
} cujh00hw00 = { 1 };

union CUJH00IW03 {
	unsigned short   :0;
	unsigned long m2:3;
} cujh00iw03 = { 1 };

union CUJH00IW29 {
	unsigned short   :0;
	unsigned long m2:29;
} cujh00iw29 = { 1 };

union CUJH00HD00 {
	unsigned short   :0;
	unsigned long long m2;
} cujh00hd00 = { 1 };

union CUJH00ID03 {
	unsigned short   :0;
	unsigned long long m2:3;
} cujh00id03 = { 1 };

union CUJH00ID61 {
	unsigned short   :0;
	unsigned long long m2:61;
} cujh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJH00HS00 {
	unsigned short   :0;
	struct TAGHB00 m2;
} cujh00hs00 = { { 1 } };

int lto_sub_532() {

	printf("%u\n"  , cujh00hb00.m2);
	printf("\n");

	printf("%u\n"  , cujh00ib03.m2);
	printf("\n");

	printf("%u\n"  , cujh00ib05.m2);
	printf("\n");

	printf("%u\n"  , cujh00hh00.m2);
	printf("\n");

	printf("%u\n"  , cujh00ih03.m2);
	printf("\n");

	printf("%u\n"  , cujh00ih13.m2);
	printf("\n");

	printf("%lu\n" , cujh00hw00.m2);
	printf("\n");

	printf("%lu\n" , cujh00iw03.m2);
	printf("\n");

	printf("%lu\n" , cujh00iw29.m2);
	printf("\n");

	printf("%llu\n", cujh00hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujh00id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujh00id61.m2);
	printf("\n");

	printf("%u\n"  , cujh00hs00.m2.m1);
	printf("\n");

	return 0;
}
