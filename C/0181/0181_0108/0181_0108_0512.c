
	
	
	

#include <stdio.h>                                              

union CUJB03HB00 {
	unsigned char   :3;
	unsigned char m2;
} cujb03hb00 = { 1 };

union CUJB03IB03 {
	unsigned char   :3;
	unsigned char m2:3;
} cujb03ib03 = { 1 };

union CUJB03IB05 {
	unsigned char   :3;
	unsigned char m2:5;
} cujb03ib05 = { 1 };

union CUJB03HH00 {
	unsigned char   :3;
	unsigned short m2;
} cujb03hh00 = { 1 };

union CUJB03IH03 {
	unsigned char   :3;
	unsigned short m2:3;
} cujb03ih03 = { 1 };

union CUJB03IH13 {
	unsigned char   :3;
	unsigned short m2:13;
} cujb03ih13 = { 1 };

union CUJB03HW00 {
	unsigned char   :3;
	unsigned long m2;
} cujb03hw00 = { 1 };

union CUJB03IW03 {
	unsigned char   :3;
	unsigned long m2:3;
} cujb03iw03 = { 1 };

union CUJB03IW29 {
	unsigned char   :3;
	unsigned long m2:29;
} cujb03iw29 = { 1 };

union CUJB03HD00 {
	unsigned char   :3;
	unsigned long long m2;
} cujb03hd00 = { 1 };

union CUJB03ID03 {
	unsigned char   :3;
	unsigned long long m2:3;
} cujb03id03 = { 1 };

union CUJB03ID61 {
	unsigned char   :3;
	unsigned long long m2:61;
} cujb03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJB03HS00 {
	unsigned char   :3;
	struct TAGHB00 m2;
} cujb03hs00 = { { 1 } };

int lto_sub_527() {

	printf("%u\n"  , cujb03hb00.m2);
	printf("\n");

	printf("%u\n"  , cujb03ib03.m2);
	printf("\n");

	printf("%u\n"  , cujb03ib05.m2);
	printf("\n");

	printf("%u\n"  , cujb03hh00.m2);
	printf("\n");

	printf("%u\n"  , cujb03ih03.m2);
	printf("\n");

	printf("%u\n"  , cujb03ih13.m2);
	printf("\n");

	printf("%lu\n" , cujb03hw00.m2);
	printf("\n");

	printf("%lu\n" , cujb03iw03.m2);
	printf("\n");

	printf("%lu\n" , cujb03iw29.m2);
	printf("\n");

	printf("%llu\n", cujb03hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujb03id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujb03id61.m2);
	printf("\n");

	printf("%u\n"  , cujb03hs00.m2.m1);
	printf("\n");

	return 0;
}
