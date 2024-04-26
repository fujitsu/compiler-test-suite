#include <stdio.h>                                              

struct ASIH13IB05HB00 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned char m3;
} asih13ib05hb00 = { 1, 2, 3 };

struct ASIH13IB05IB03 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned char m3:3;
} asih13ib05ib03 = { 1, 2, 3 };

struct ASIH13IB05IB05 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned char m3:5;
} asih13ib05ib05 = { 1, 2, 3 };

struct ASIH13IB05HH00 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned short m3;
} asih13ib05hh00 = { 1, 2, 3 };

struct ASIH13IB05IH03 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned short m3:3;
} asih13ib05ih03 = { 1, 2, 3 };

struct ASIH13IB05IH13 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned short m3:13;
} asih13ib05ih13 = { 1, 2, 3 };

struct ASIH13IB05HW00 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned long m3;
} asih13ib05hw00 = { 1, 2, 3 };

struct ASIH13IB05IW03 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned long m3:3;
} asih13ib05iw03 = { 1, 2, 3 };

struct ASIH13IB05IW29 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned long m3:29;
} asih13ib05iw29 = { 1, 2, 3 };

struct ASIH13IB05HD00 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned long long m3;
} asih13ib05hd00 = { 1, 2, 3 };

struct ASIH13IB05ID03 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned long long m3:3;
} asih13ib05id03 = { 1, 2, 3 };

struct ASIH13IB05ID61 {
	unsigned short m1:13;
	unsigned char m2:5;
	unsigned long long m3:61;
} asih13ib05id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13IB05HS00 {
	unsigned short m1:13;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asih13ib05hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asih13ib05hb00.m1);
	printf("%u\n"  , asih13ib05hb00.m2);
	printf("%u\n"  , asih13ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05ib03.m1);
	printf("%u\n"  , asih13ib05ib03.m2);
	printf("%u\n"  , asih13ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05ib05.m1);
	printf("%u\n"  , asih13ib05ib05.m2);
	printf("%u\n"  , asih13ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05hh00.m1);
	printf("%u\n"  , asih13ib05hh00.m2);
	printf("%u\n"  , asih13ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05ih03.m1);
	printf("%u\n"  , asih13ib05ih03.m2);
	printf("%u\n"  , asih13ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05ih13.m1);
	printf("%u\n"  , asih13ib05ih13.m2);
	printf("%u\n"  , asih13ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05hw00.m1);
	printf("%u\n"  , asih13ib05hw00.m2);
	printf("%lu\n" , asih13ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05iw03.m1);
	printf("%u\n"  , asih13ib05iw03.m2);
	printf("%d\n" , asih13ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05iw29.m1);
	printf("%u\n"  , asih13ib05iw29.m2);
	printf("%d\n" , asih13ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05hd00.m1);
	printf("%u\n"  , asih13ib05hd00.m2);
	printf("%llu\n", asih13ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05id03.m1);
	printf("%u\n"  , asih13ib05id03.m2);
	printf("%llu\n", (unsigned long long)asih13ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05id61.m1);
	printf("%u\n"  , asih13ib05id61.m2);
	printf("%llu\n", (unsigned long long)asih13ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asih13ib05hs00.m1);
	printf("%u\n"  , asih13ib05hs00.m2);
	printf("%u\n"  , asih13ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
