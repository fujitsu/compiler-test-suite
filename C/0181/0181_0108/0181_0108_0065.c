                                                        
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00IW03HB00 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned char m3;
} ashs00iw03hb00 = { { 1 }, 2, 3 };

struct ASHS00IW03IB03 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned char m3:3;
} ashs00iw03ib03 = { { 1 }, 2, 3 };

struct ASHS00IW03IB05 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned char m3:5;
} ashs00iw03ib05 = { { 1 }, 2, 3 };

struct ASHS00IW03HH00 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned short m3;
} ashs00iw03hh00 = { { 1 }, 2, 3 };

struct ASHS00IW03IH03 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned short m3:3;
} ashs00iw03ih03 = { { 1 }, 2, 3 };

struct ASHS00IW03IH13 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned short m3:13;
} ashs00iw03ih13 = { { 1 }, 2, 3 };

struct ASHS00IW03HW00 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned long m3;
} ashs00iw03hw00 = { { 1 }, 2, 3 };

struct ASHS00IW03IW03 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned long m3:3;
} ashs00iw03iw03 = { { 1 }, 2, 3 };

struct ASHS00IW03IW29 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned long m3:29;
} ashs00iw03iw29 = { { 1 }, 2, 3 };

struct ASHS00IW03HD00 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned long long m3;
} ashs00iw03hd00 = { { 1 }, 2, 3 };

struct ASHS00IW03ID03 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned long long m3:3;
} ashs00iw03id03 = { { 1 }, 2, 3 };

struct ASHS00IW03ID61 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	unsigned long long m3:61;
} ashs00iw03id61 = { { 1 }, 2, 3 };

struct ASHS00IW03HS00 {
	struct TAGHB00 m1;
	unsigned long m2:3;
	struct TAGHB00 m3;
} ashs00iw03hs00 = { { 1 }, 2, { 3 } };

int lto_sub_66() {

	printf("%u\n"  , ashs00iw03hb00.m1.m1);
	printf("%lu\n" , ashs00iw03hb00.m2);
	printf("%u\n"  , ashs00iw03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03ib03.m1.m1);
	printf("%lu\n" , ashs00iw03ib03.m2);
	printf("%u\n"  , ashs00iw03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03ib05.m1.m1);
	printf("%lu\n" , ashs00iw03ib05.m2);
	printf("%u\n"  , ashs00iw03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03hh00.m1.m1);
	printf("%lu\n" , ashs00iw03hh00.m2);
	printf("%u\n"  , ashs00iw03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03ih03.m1.m1);
	printf("%lu\n" , ashs00iw03ih03.m2);
	printf("%u\n"  , ashs00iw03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03ih13.m1.m1);
	printf("%lu\n" , ashs00iw03ih13.m2);
	printf("%u\n"  , ashs00iw03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03hw00.m1.m1);
	printf("%lu\n" , ashs00iw03hw00.m2);
	printf("%lu\n" , ashs00iw03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03iw03.m1.m1);
	printf("%lu\n" , ashs00iw03iw03.m2);
	printf("%lu\n" , ashs00iw03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03iw29.m1.m1);
	printf("%lu\n" , ashs00iw03iw29.m2);
	printf("%lu\n" , ashs00iw03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03hd00.m1.m1);
	printf("%lu\n" , ashs00iw03hd00.m2);
	printf("%llu\n", ashs00iw03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03id03.m1.m1);
	printf("%lu\n" , ashs00iw03id03.m2);
	printf("%llu\n", (unsigned long long)ashs00iw03id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03id61.m1.m1);
	printf("%lu\n" , ashs00iw03id61.m2);
	printf("%llu\n", (unsigned long long)ashs00iw03id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00iw03hs00.m1.m1);
	printf("%lu\n" , ashs00iw03hs00.m2);
	printf("%u\n"  , ashs00iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
