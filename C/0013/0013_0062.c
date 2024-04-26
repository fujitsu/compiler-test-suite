#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00ID03HB00 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned char m3;
} ashs00id03hb00 = { { 1 }, 2, 3 };

struct ASHS00ID03IB03 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned char m3:3;
} ashs00id03ib03 = { { 1 }, 2, 3 };

struct ASHS00ID03IB05 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned char m3:5;
} ashs00id03ib05 = { { 1 }, 2, 3 };

struct ASHS00ID03HH00 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned short m3;
} ashs00id03hh00 = { { 1 }, 2, 3 };

struct ASHS00ID03IH03 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned short m3:3;
} ashs00id03ih03 = { { 1 }, 2, 3 };

struct ASHS00ID03IH13 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned short m3:13;
} ashs00id03ih13 = { { 1 }, 2, 3 };

struct ASHS00ID03HW00 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned long m3;
} ashs00id03hw00 = { { 1 }, 2, 3 };

struct ASHS00ID03IW03 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned long m3:3;
} ashs00id03iw03 = { { 1 }, 2, 3 };

struct ASHS00ID03IW29 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned long m3:29;
} ashs00id03iw29 = { { 1 }, 2, 3 };

struct ASHS00ID03HD00 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned long long m3;
} ashs00id03hd00 = { { 1 }, 2, 3 };

struct ASHS00ID03ID03 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned long long m3:3;
} ashs00id03id03 = { { 1 }, 2, 3 };

struct ASHS00ID03ID61 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	unsigned long long m3:61;
} ashs00id03id61 = { { 1 }, 2, 3 };

struct ASHS00ID03HS00 {
	struct TAGHB00 m1;
	unsigned long long m2:3;
	struct TAGHB00 m3;
} ashs00id03hs00 = { { 1 }, 2, { 3 } };

int main() {

	printf("%u\n"  , ashs00id03hb00.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03hb00.m2);
	printf("%u\n"  , ashs00id03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03ib03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03ib03.m2);
	printf("%u\n"  , ashs00id03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03ib05.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03ib05.m2);
	printf("%u\n"  , ashs00id03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03hh00.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03hh00.m2);
	printf("%u\n"  , ashs00id03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03ih03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03ih03.m2);
	printf("%u\n"  , ashs00id03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03ih13.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03ih13.m2);
	printf("%u\n"  , ashs00id03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03hw00.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03hw00.m2);
	printf("%lu\n" , ashs00id03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03iw03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03iw03.m2);
	printf("%d\n" , ashs00id03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03iw29.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03iw29.m2);
	printf("%d\n" , ashs00id03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03hd00.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03hd00.m2);
	printf("%llu\n", ashs00id03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03id03.m2);
	printf("%llu\n", (unsigned long long)ashs00id03id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03id61.m2);
	printf("%llu\n", (unsigned long long)ashs00id03id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00id03hs00.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00id03hs00.m2);
	printf("%u\n"  , ashs00id03hs00.m3.m1);
	printf("\n");

	return 0;
}
