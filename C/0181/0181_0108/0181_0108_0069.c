                                                          
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JB05HB00 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned char m3;
} ashs00jb05hb00 = { { 1 }, 2 };

struct ASHS00JB05IB03 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned char m3:3;
} ashs00jb05ib03 = { { 1 }, 2 };

struct ASHS00JB05IB05 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned char m3:5;
} ashs00jb05ib05 = { { 1 }, 2 };

struct ASHS00JB05HH00 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned short m3;
} ashs00jb05hh00 = { { 1 }, 2 };

struct ASHS00JB05IH03 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned short m3:3;
} ashs00jb05ih03 = { { 1 }, 2 };

struct ASHS00JB05IH13 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned short m3:13;
} ashs00jb05ih13 = { { 1 }, 2 };

struct ASHS00JB05HW00 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned long m3;
} ashs00jb05hw00 = { { 1 }, 2 };

struct ASHS00JB05IW03 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned long m3:3;
} ashs00jb05iw03 = { { 1 }, 2 };

struct ASHS00JB05IW29 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned long m3:29;
} ashs00jb05iw29 = { { 1 }, 2 };

struct ASHS00JB05HD00 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned long long m3;
} ashs00jb05hd00 = { { 1 }, 2 };

struct ASHS00JB05ID03 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned long long m3:3;
} ashs00jb05id03 = { { 1 }, 2 };

struct ASHS00JB05ID61 {
	struct TAGHB00 m1;
	unsigned char   :5;
	unsigned long long m3:61;
} ashs00jb05id61 = { { 1 }, 2 };

struct ASHS00JB05HS00 {
	struct TAGHB00 m1;
	unsigned char   :5;
	struct TAGHB00 m3;
} ashs00jb05hs00 = { { 1 }, { 2 } };

int lto_sub_70() {

	printf("%u\n"  , ashs00jb05hb00.m1.m1);
	printf("%u\n"  , ashs00jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05ib03.m1.m1);
	printf("%u\n"  , ashs00jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05ib05.m1.m1);
	printf("%u\n"  , ashs00jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05hh00.m1.m1);
	printf("%u\n"  , ashs00jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05ih03.m1.m1);
	printf("%u\n"  , ashs00jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05ih13.m1.m1);
	printf("%u\n"  , ashs00jb05ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05hw00.m1.m1);
	printf("%lu\n" , ashs00jb05hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05iw03.m1.m1);
	printf("%lu\n" , ashs00jb05iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05iw29.m1.m1);
	printf("%lu\n" , ashs00jb05iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05hd00.m1.m1);
	printf("%llu\n", ashs00jb05hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jb05id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jb05id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb05hs00.m1.m1);
	printf("%u\n"  , ashs00jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
