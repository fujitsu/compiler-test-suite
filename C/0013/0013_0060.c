#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00IB03HB00 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned char m3;
} ashs00ib03hb00 = { { 1 }, 2, 3 };

struct ASHS00IB03IB03 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned char m3:3;
} ashs00ib03ib03 = { { 1 }, 2, 3 };

struct ASHS00IB03IB05 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned char m3:5;
} ashs00ib03ib05 = { { 1 }, 2, 3 };

struct ASHS00IB03HH00 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned short m3;
} ashs00ib03hh00 = { { 1 }, 2, 3 };

struct ASHS00IB03IH03 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned short m3:3;
} ashs00ib03ih03 = { { 1 }, 2, 3 };

struct ASHS00IB03IH13 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned short m3:13;
} ashs00ib03ih13 = { { 1 }, 2, 3 };

struct ASHS00IB03HW00 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned long m3;
} ashs00ib03hw00 = { { 1 }, 2, 3 };

struct ASHS00IB03IW03 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned long m3:3;
} ashs00ib03iw03 = { { 1 }, 2, 3 };

struct ASHS00IB03IW29 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned long m3:29;
} ashs00ib03iw29 = { { 1 }, 2, 3 };

struct ASHS00IB03HD00 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned long long m3;
} ashs00ib03hd00 = { { 1 }, 2, 3 };

struct ASHS00IB03ID03 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned long long m3:3;
} ashs00ib03id03 = { { 1 }, 2, 3 };

struct ASHS00IB03ID61 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	unsigned long long m3:61;
} ashs00ib03id61 = { { 1 }, 2, 3 };

struct ASHS00IB03HS00 {
	struct TAGHB00 m1;
	unsigned char m2:3;
	struct TAGHB00 m3;
} ashs00ib03hs00 = { { 1 }, 2, { 3 } };

int main() {

	printf("%u\n"  , ashs00ib03hb00.m1.m1);
	printf("%u\n"  , ashs00ib03hb00.m2);
	printf("%u\n"  , ashs00ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03ib03.m1.m1);
	printf("%u\n"  , ashs00ib03ib03.m2);
	printf("%u\n"  , ashs00ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03ib05.m1.m1);
	printf("%u\n"  , ashs00ib03ib05.m2);
	printf("%u\n"  , ashs00ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03hh00.m1.m1);
	printf("%u\n"  , ashs00ib03hh00.m2);
	printf("%u\n"  , ashs00ib03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03ih03.m1.m1);
	printf("%u\n"  , ashs00ib03ih03.m2);
	printf("%u\n"  , ashs00ib03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03ih13.m1.m1);
	printf("%u\n"  , ashs00ib03ih13.m2);
	printf("%u\n"  , ashs00ib03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03hw00.m1.m1);
	printf("%u\n"  , ashs00ib03hw00.m2);
	printf("%lu\n" , ashs00ib03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03iw03.m1.m1);
	printf("%u\n"  , ashs00ib03iw03.m2);
	printf("%d\n" , ashs00ib03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03iw29.m1.m1);
	printf("%u\n"  , ashs00ib03iw29.m2);
	printf("%d\n" , ashs00ib03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03hd00.m1.m1);
	printf("%u\n"  , ashs00ib03hd00.m2);
	printf("%llu\n", ashs00ib03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03id03.m1.m1);
	printf("%u\n"  , ashs00ib03id03.m2);
	printf("%llu\n", (unsigned long long)ashs00ib03id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03id61.m1.m1);
	printf("%u\n"  , ashs00ib03id61.m2);
	printf("%llu\n", (unsigned long long)ashs00ib03id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00ib03hs00.m1.m1);
	printf("%u\n"  , ashs00ib03hs00.m2);
	printf("%u\n"  , ashs00ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
