                                                             
#include <stdio.h>                                              

union CUJH03HB00 {
	unsigned short   :3;
	unsigned char m2;
} cujh03hb00 = { 1 };

union CUJH03IB03 {
	unsigned short   :3;
	unsigned char m2:3;
} cujh03ib03 = { 1 };

union CUJH03IB05 {
	unsigned short   :3;
	unsigned char m2:5;
} cujh03ib05 = { 1 };

union CUJH03HH00 {
	unsigned short   :3;
	unsigned short m2;
} cujh03hh00 = { 1 };

union CUJH03IH03 {
	unsigned short   :3;
	unsigned short m2:3;
} cujh03ih03 = { 1 };

union CUJH03IH13 {
	unsigned short   :3;
	unsigned short m2:13;
} cujh03ih13 = { 1 };

union CUJH03HW00 {
	unsigned short   :3;
	unsigned long m2;
} cujh03hw00 = { 1 };

union CUJH03IW03 {
	unsigned short   :3;
	unsigned long m2:3;
} cujh03iw03 = { 1 };

union CUJH03IW29 {
	unsigned short   :3;
	unsigned long m2:29;
} cujh03iw29 = { 1 };

union CUJH03HD00 {
	unsigned short   :3;
	unsigned long long m2;
} cujh03hd00 = { 1 };

union CUJH03ID03 {
	unsigned short   :3;
	unsigned long long m2:3;
} cujh03id03 = { 1 };

union CUJH03ID61 {
	unsigned short   :3;
	unsigned long long m2:61;
} cujh03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

union CUJH03HS00 {
	unsigned short   :3;
	struct TAGHB00 m2;
} cujh03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , cujh03hb00.m2);
	printf("\n");

	printf("%u\n"  , cujh03ib03.m2);
	printf("\n");

	printf("%u\n"  , cujh03ib05.m2);
	printf("\n");

	printf("%u\n"  , cujh03hh00.m2);
	printf("\n");

	printf("%u\n"  , cujh03ih03.m2);
	printf("\n");

	printf("%u\n"  , cujh03ih13.m2);
	printf("\n");

	printf("%lu\n" , cujh03hw00.m2);
	printf("\n");

	printf("%d\n" , cujh03iw03.m2);
	printf("\n");

	printf("%d\n" , cujh03iw29.m2);
	printf("\n");

	printf("%llu\n", cujh03hd00.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujh03id03.m2);
	printf("\n");

	printf("%llu\n", (unsigned long long)cujh03id61.m2);
	printf("\n");

	printf("%u\n"  , cujh03hs00.m2.m1);
	printf("\n");

	return 0;
}
