
	
	
	
	

#include <stdio.h>                                              

struct ASID03IB05HB00 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned char m3;
} asid03ib05hb00 = { 1, 2, 3 };

struct ASID03IB05IB03 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned char m3:3;
} asid03ib05ib03 = { 1, 2, 3 };

struct ASID03IB05IB05 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned char m3:5;
} asid03ib05ib05 = { 1, 2, 3 };

struct ASID03IB05HH00 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned short m3;
} asid03ib05hh00 = { 1, 2, 3 };

struct ASID03IB05IH03 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned short m3:3;
} asid03ib05ih03 = { 1, 2, 3 };

struct ASID03IB05IH13 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned short m3:13;
} asid03ib05ih13 = { 1, 2, 3 };

struct ASID03IB05HW00 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned long m3;
} asid03ib05hw00 = { 1, 2, 3 };

struct ASID03IB05IW03 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned long m3:3;
} asid03ib05iw03 = { 1, 2, 3 };

struct ASID03IB05IW29 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned long m3:29;
} asid03ib05iw29 = { 1, 2, 3 };

struct ASID03IB05HD00 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned long long m3;
} asid03ib05hd00 = { 1, 2, 3 };

struct ASID03IB05ID03 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned long long m3:3;
} asid03ib05id03 = { 1, 2, 3 };

struct ASID03IB05ID61 {
	unsigned long long m1:3;
	unsigned char m2:5;
	unsigned long long m3:61;
} asid03ib05id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID03IB05HS00 {
	unsigned long long m1:3;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asid03ib05hs00 = { 1, 2, { 3 } };

int lto_sub_141() {

	printf("%llu\n", (unsigned long long)asid03ib05hb00.m1);
	printf("%u\n"  , asid03ib05hb00.m2);
	printf("%u\n"  , asid03ib05hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05ib03.m1);
	printf("%u\n"  , asid03ib05ib03.m2);
	printf("%u\n"  , asid03ib05ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05ib05.m1);
	printf("%u\n"  , asid03ib05ib05.m2);
	printf("%u\n"  , asid03ib05ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05hh00.m1);
	printf("%u\n"  , asid03ib05hh00.m2);
	printf("%u\n"  , asid03ib05hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05ih03.m1);
	printf("%u\n"  , asid03ib05ih03.m2);
	printf("%u\n"  , asid03ib05ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05ih13.m1);
	printf("%u\n"  , asid03ib05ih13.m2);
	printf("%u\n"  , asid03ib05ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05hw00.m1);
	printf("%u\n"  , asid03ib05hw00.m2);
	printf("%lu\n" , asid03ib05hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05iw03.m1);
	printf("%u\n"  , asid03ib05iw03.m2);
	printf("%lu\n" , asid03ib05iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05iw29.m1);
	printf("%u\n"  , asid03ib05iw29.m2);
	printf("%lu\n" , asid03ib05iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05hd00.m1);
	printf("%u\n"  , asid03ib05hd00.m2);
	printf("%llu\n", asid03ib05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05id03.m1);
	printf("%u\n"  , asid03ib05id03.m2);
	printf("%llu\n", (unsigned long long)asid03ib05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05id61.m1);
	printf("%u\n"  , asid03ib05id61.m2);
	printf("%llu\n", (unsigned long long)asid03ib05id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03ib05hs00.m1);
	printf("%u\n"  , asid03ib05hs00.m2);
	printf("%u\n"  , asid03ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
