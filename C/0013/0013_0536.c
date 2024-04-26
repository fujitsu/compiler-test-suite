                                                             
#include <stdio.h>                                              

union CUJW03HB00 {
	unsigned long   :3;
	unsigned char m2;
} cujw03hb00 = { 1 };

union CUJW03IB03 {
	unsigned long   :3;
	unsigned char m2:3;
} cujw03ib03 = { 1 };

union CUJW03IB05 {
	unsigned long   :3;
	unsigned char m2:5;
} cujw03ib05 = { 1 };

union CUJW03HH00 {
	unsigned long   :3;
	unsigned short m2;
} cujw03hh00 = { 1 };

union CUJW03IH03 {
	unsigned long   :3;
	unsigned short m2:3;
} cujw03ih03 = { 1 };

union CUJW03IH13 {
	unsigned long   :3;
	unsigned short m2:13;
} cujw03ih13 = { 1 };

union CUJW03HW00 {
	unsigned long   :3;
	unsigned long m2;
} cujw03hw00 = { 1 };

union CUJW03IW03 {
	unsigned long   :3;
	unsigned long m2:3;
} cujw03iw03 = { 1 };

union CUJW03IW29 {
	unsigned long   :3;
	unsigned long m2:29;
} cujw03iw29 = { 1 };

union CUJW03HD00 {
	unsigned long   :3;
	unsigned long long m2;
} cujw03hd00 = { 1 };

union CUJW03ID03 {
	unsigned long   :3;
	unsigned long long m2:3;
} cujw03id03 = { 1 };

union CUJW03ID61 {
	unsigned long   :3;
	unsigned long long m2:61;
} cujw03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJW03HS00 {
	unsigned long   :3;
	struct TAGHB00 m2;
} cujw03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , cujw03hb00.m2);
	printf("\n");

	printf("%u\n"  , cujw03ib03.m2);
	printf("\n");

	printf("%u\n"  , cujw03ib05.m2);
	printf("\n");

	printf("%u\n"  , cujw03hh00.m2);
	printf("\n");

	printf("%u\n"  , cujw03ih03.m2);
	printf("\n");

	printf("%u\n"  , cujw03ih13.m2);
	printf("\n");

	printf("%lu\n" , cujw03hw00.m2);
	printf("\n");

	printf("%d\n" , cujw03iw03.m2);
	printf("\n");

	printf("%d\n" , cujw03iw29.m2);
	printf("\n");

	printf("%llu\n", cujw03hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujw03id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujw03id61.m2);
	printf("\n");

	printf("%u\n"  , cujw03hs00.m2.m1);
	printf("\n");

	return 0;
}
