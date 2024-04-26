                                                             
#include <stdio.h>                                              

union CUJD03HB00 {
	unsigned long long   :3;
	unsigned char m2;
} cujd03hb00 = { 1 };

union CUJD03IB03 {
	unsigned long long   :3;
	unsigned char m2:3;
} cujd03ib03 = { 1 };

union CUJD03IB05 {
	unsigned long long   :3;
	unsigned char m2:5;
} cujd03ib05 = { 1 };

union CUJD03HH00 {
	unsigned long long   :3;
	unsigned short m2;
} cujd03hh00 = { 1 };

union CUJD03IH03 {
	unsigned long long   :3;
	unsigned short m2:3;
} cujd03ih03 = { 1 };

union CUJD03IH13 {
	unsigned long long   :3;
	unsigned short m2:13;
} cujd03ih13 = { 1 };

union CUJD03HW00 {
	unsigned long long   :3;
	unsigned long m2;
} cujd03hw00 = { 1 };

union CUJD03IW03 {
	unsigned long long   :3;
	unsigned long m2:3;
} cujd03iw03 = { 1 };

union CUJD03IW29 {
	unsigned long long   :3;
	unsigned long m2:29;
} cujd03iw29 = { 1 };

union CUJD03HD00 {
	unsigned long long   :3;
	unsigned long long m2;
} cujd03hd00 = { 1 };

union CUJD03ID03 {
	unsigned long long   :3;
	unsigned long long m2:3;
} cujd03id03 = { 1 };

union CUJD03ID61 {
	unsigned long long   :3;
	unsigned long long m2:61;
} cujd03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJD03HS00 {
	unsigned long long   :3;
	struct TAGHB00 m2;
} cujd03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , cujd03hb00.m2);
	printf("\n");

	printf("%u\n"  , cujd03ib03.m2);
	printf("\n");

	printf("%u\n"  , cujd03ib05.m2);
	printf("\n");

	printf("%u\n"  , cujd03hh00.m2);
	printf("\n");

	printf("%u\n"  , cujd03ih03.m2);
	printf("\n");

	printf("%u\n"  , cujd03ih13.m2);
	printf("\n");

	printf("%lu\n" , cujd03hw00.m2);
	printf("\n");

	printf("%d\n" , cujd03iw03.m2);
	printf("\n");

	printf("%d\n" , cujd03iw29.m2);
	printf("\n");

	printf("%llu\n", cujd03hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujd03id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujd03id61.m2);
	printf("\n");

	printf("%u\n"  , cujd03hs00.m2.m1);
	printf("\n");

	return 0;
}
