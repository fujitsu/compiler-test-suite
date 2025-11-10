                                                     
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00IH03HB00 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned char m3;
} ashs00ih03hb00 = { { 1 }, 2, 3 };

struct ASHS00IH03IB03 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned char m3:3;
} ashs00ih03ib03 = { { 1 }, 2, 3 };

struct ASHS00IH03IB05 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned char m3:5;
} ashs00ih03ib05 = { { 1 }, 2, 3 };

struct ASHS00IH03HH00 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned short m3;
} ashs00ih03hh00 = { { 1 }, 2, 3 };

struct ASHS00IH03IH03 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned short m3:3;
} ashs00ih03ih03 = { { 1 }, 2, 3 };

struct ASHS00IH03IH13 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned short m3:13;
} ashs00ih03ih13 = { { 1 }, 2, 3 };

struct ASHS00IH03HW00 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned long m3;
} ashs00ih03hw00 = { { 1 }, 2, 3 };

struct ASHS00IH03IW03 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned long m3:3;
} ashs00ih03iw03 = { { 1 }, 2, 3 };

struct ASHS00IH03IW29 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned long m3:29;
} ashs00ih03iw29 = { { 1 }, 2, 3 };

struct ASHS00IH03HD00 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned long long m3;
} ashs00ih03hd00 = { { 1 }, 2, 3 };

struct ASHS00IH03ID03 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned long long m3:3;
} ashs00ih03id03 = { { 1 }, 2, 3 };

struct ASHS00IH03ID61 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	unsigned long long m3:61;
} ashs00ih03id61 = { { 1 }, 2, 3 };

struct ASHS00IH03HS00 {
	struct TAGHB00 m1;
	unsigned short m2:3;
	struct TAGHB00 m3;
} ashs00ih03hs00 = { { 1 }, 2, { 3 } };

int lto_sub_64() {

	printf("%u\n"  , ashs00ih03hb00.m1.m1);
	printf("%u\n"  , ashs00ih03hb00.m2);
	printf("%u\n"  , ashs00ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03ib03.m1.m1);
	printf("%u\n"  , ashs00ih03ib03.m2);
	printf("%u\n"  , ashs00ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03ib05.m1.m1);
	printf("%u\n"  , ashs00ih03ib05.m2);
	printf("%u\n"  , ashs00ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03hh00.m1.m1);
	printf("%u\n"  , ashs00ih03hh00.m2);
	printf("%u\n"  , ashs00ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03ih03.m1.m1);
	printf("%u\n"  , ashs00ih03ih03.m2);
	printf("%u\n"  , ashs00ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03ih13.m1.m1);
	printf("%u\n"  , ashs00ih03ih13.m2);
	printf("%u\n"  , ashs00ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03hw00.m1.m1);
	printf("%u\n"  , ashs00ih03hw00.m2);
	printf("%lu\n" , ashs00ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03iw03.m1.m1);
	printf("%u\n"  , ashs00ih03iw03.m2);
	printf("%lu\n" , ashs00ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03iw29.m1.m1);
	printf("%u\n"  , ashs00ih03iw29.m2);
	printf("%lu\n" , ashs00ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03hd00.m1.m1);
	printf("%u\n"  , ashs00ih03hd00.m2);
	printf("%llu\n", ashs00ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03id03.m1.m1);
	printf("%u\n"  , ashs00ih03id03.m2);
	printf("%llu\n", (unsigned long long)ashs00ih03id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03id61.m1.m1);
	printf("%u\n"  , ashs00ih03id61.m2);
	printf("%llu\n", (unsigned long long)ashs00ih03id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih03hs00.m1.m1);
	printf("%u\n"  , ashs00ih03hs00.m2);
	printf("%u\n"  , ashs00ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
