#include <stdio.h>                                              

struct ASID03JB05HB00 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned char m3;
} asid03jb05hb00 = { 1, 2 };

struct ASID03JB05IB03 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned char m3:3;
} asid03jb05ib03 = { 1, 2 };

struct ASID03JB05IB05 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned char m3:5;
} asid03jb05ib05 = { 1, 2 };

struct ASID03JB05HH00 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned short m3;
} asid03jb05hh00 = { 1, 2 };

struct ASID03JB05IH03 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned short m3:3;
} asid03jb05ih03 = { 1, 2 };

struct ASID03JB05IH13 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned short m3:13;
} asid03jb05ih13 = { 1, 2 };

struct ASID03JB05HW00 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned long m3;
} asid03jb05hw00 = { 1, 2 };

struct ASID03JB05IW03 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned long m3:3;
} asid03jb05iw03 = { 1, 2 };

struct ASID03JB05IW29 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned long m3:29;
} asid03jb05iw29 = { 1, 2 };

struct ASID03JB05HD00 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned long long m3;
} asid03jb05hd00 = { 1, 2 };

struct ASID03JB05ID03 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned long long m3:3;
} asid03jb05id03 = { 1, 2 };

struct ASID03JB05ID61 {
	unsigned long long m1:3;
	unsigned char   :5;
	unsigned long long m3:61;
} asid03jb05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID03JB05HS00 {
	unsigned long long m1:3;
	unsigned char   :5;
	struct TAGHB00 m3;
} asid03jb05hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asid03jb05hb00.m1);
	printf("%u\n"  , asid03jb05hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05ib03.m1);
	printf("%u\n"  , asid03jb05ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05ib05.m1);
	printf("%u\n"  , asid03jb05ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05hh00.m1);
	printf("%u\n"  , asid03jb05hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05ih03.m1);
	printf("%u\n"  , asid03jb05ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05ih13.m1);
	printf("%u\n"  , asid03jb05ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05hw00.m1);
	printf("%lu\n" , asid03jb05hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05iw03.m1);
	printf("%d\n" , asid03jb05iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05iw29.m1);
	printf("%d\n" , asid03jb05iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05hd00.m1);
	printf("%llu\n", asid03jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05id03.m1);
	printf("%llu\n", (unsigned long long)asid03jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05id61.m1);
	printf("%llu\n", (unsigned long long)asid03jb05id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jb05hs00.m1);
	printf("%u\n"  , asid03jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
