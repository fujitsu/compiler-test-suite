
	
	
	

#include <stdio.h>                                              

union CUJH13HB00 {
	unsigned short   :13;
	unsigned char m2;
} cujh13hb00 = { 1 };

union CUJH13IB03 {
	unsigned short   :13;
	unsigned char m2:3;
} cujh13ib03 = { 1 };

union CUJH13IB05 {
	unsigned short   :13;
	unsigned char m2:5;
} cujh13ib05 = { 1 };

union CUJH13HH00 {
	unsigned short   :13;
	unsigned short m2;
} cujh13hh00 = { 1 };

union CUJH13IH03 {
	unsigned short   :13;
	unsigned short m2:3;
} cujh13ih03 = { 1 };

union CUJH13IH13 {
	unsigned short   :13;
	unsigned short m2:13;
} cujh13ih13 = { 1 };

union CUJH13HW00 {
	unsigned short   :13;
	unsigned long m2;
} cujh13hw00 = { 1 };

union CUJH13IW03 {
	unsigned short   :13;
	unsigned long m2:3;
} cujh13iw03 = { 1 };

union CUJH13IW29 {
	unsigned short   :13;
	unsigned long m2:29;
} cujh13iw29 = { 1 };

union CUJH13HD00 {
	unsigned short   :13;
	unsigned long long m2;
} cujh13hd00 = { 1 };

union CUJH13ID03 {
	unsigned short   :13;
	unsigned long long m2:3;
} cujh13id03 = { 1 };

union CUJH13ID61 {
	unsigned short   :13;
	unsigned long long m2:61;
} cujh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJH13HS00 {
	unsigned short   :13;
	struct TAGHB00 m2;
} cujh13hs00 = { { 1 } };

int lto_sub_534() {

	printf("%u\n"  , cujh13hb00.m2);
	printf("\n");

	printf("%u\n"  , cujh13ib03.m2);
	printf("\n");

	printf("%u\n"  , cujh13ib05.m2);
	printf("\n");

	printf("%u\n"  , cujh13hh00.m2);
	printf("\n");

	printf("%u\n"  , cujh13ih03.m2);
	printf("\n");

	printf("%u\n"  , cujh13ih13.m2);
	printf("\n");

	printf("%lu\n" , cujh13hw00.m2);
	printf("\n");

	printf("%lu\n" , cujh13iw03.m2);
	printf("\n");

	printf("%lu\n" , cujh13iw29.m2);
	printf("\n");

	printf("%llu\n", cujh13hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujh13id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujh13id61.m2);
	printf("\n");

	printf("%u\n"  , cujh13hs00.m2.m1);
	printf("\n");

	return 0;
}
