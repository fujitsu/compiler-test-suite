#include <stdio.h>                                              

struct ASID03IW03HB00 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned char m3;
} asid03iw03hb00 = { 1, 2, 3 };

struct ASID03IW03IB03 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned char m3:3;
} asid03iw03ib03 = { 1, 2, 3 };

struct ASID03IW03IB05 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned char m3:5;
} asid03iw03ib05 = { 1, 2, 3 };

struct ASID03IW03HH00 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned short m3;
} asid03iw03hh00 = { 1, 2, 3 };

struct ASID03IW03IH03 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned short m3:3;
} asid03iw03ih03 = { 1, 2, 3 };

struct ASID03IW03IH13 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned short m3:13;
} asid03iw03ih13 = { 1, 2, 3 };

struct ASID03IW03HW00 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned long m3;
} asid03iw03hw00 = { 1, 2, 3 };

struct ASID03IW03IW03 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned long m3:3;
} asid03iw03iw03 = { 1, 2, 3 };

struct ASID03IW03IW29 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned long m3:29;
} asid03iw03iw29 = { 1, 2, 3 };

struct ASID03IW03HD00 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned long long m3;
} asid03iw03hd00 = { 1, 2, 3 };

struct ASID03IW03ID03 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned long long m3:3;
} asid03iw03id03 = { 1, 2, 3 };

struct ASID03IW03ID61 {
	unsigned long long m1:3;
	unsigned long m2:3;
	unsigned long long m3:61;
} asid03iw03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID03IW03HS00 {
	unsigned long long m1:3;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asid03iw03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%llu\n", (unsigned long long)asid03iw03hb00.m1);
	printf("%d\n" , asid03iw03hb00.m2);
	printf("%u\n"  , asid03iw03hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03ib03.m1);
	printf("%d\n" , asid03iw03ib03.m2);
	printf("%u\n"  , asid03iw03ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03ib05.m1);
	printf("%d\n" , asid03iw03ib05.m2);
	printf("%u\n"  , asid03iw03ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03hh00.m1);
	printf("%d\n" , asid03iw03hh00.m2);
	printf("%u\n"  , asid03iw03hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03ih03.m1);
	printf("%d\n" , asid03iw03ih03.m2);
	printf("%u\n"  , asid03iw03ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03ih13.m1);
	printf("%d\n" , asid03iw03ih13.m2);
	printf("%u\n"  , asid03iw03ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03hw00.m1);
	printf("%d\n" , asid03iw03hw00.m2);
	printf("%lu\n" , asid03iw03hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03iw03.m1);
	printf("%d\n" , asid03iw03iw03.m2);
	printf("%d\n" , asid03iw03iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03iw29.m1);
	printf("%d\n" , asid03iw03iw29.m2);
	printf("%d\n" , asid03iw03iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03hd00.m1);
	printf("%d\n" , asid03iw03hd00.m2);
	printf("%llu\n", asid03iw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03id03.m1);
	printf("%d\n" , asid03iw03id03.m2);
	printf("%llu\n", (unsigned long long)asid03iw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03id61.m1);
	printf("%d\n" , asid03iw03id61.m2);
	printf("%llu\n", (unsigned long long)asid03iw03id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03iw03hs00.m1);
	printf("%d\n" , asid03iw03hs00.m2);
	printf("%u\n"  , asid03iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
