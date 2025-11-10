
	
	
	
	

#include <stdio.h>                                              

struct ASID61JB05HB00 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned char m3;
} asid61jb05hb00 = { 1, 2 };

struct ASID61JB05IB03 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned char m3:3;
} asid61jb05ib03 = { 1, 2 };

struct ASID61JB05IB05 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned char m3:5;
} asid61jb05ib05 = { 1, 2 };

struct ASID61JB05HH00 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned short m3;
} asid61jb05hh00 = { 1, 2 };

struct ASID61JB05IH03 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned short m3:3;
} asid61jb05ih03 = { 1, 2 };

struct ASID61JB05IH13 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned short m3:13;
} asid61jb05ih13 = { 1, 2 };

struct ASID61JB05HW00 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned long m3;
} asid61jb05hw00 = { 1, 2 };

struct ASID61JB05IW03 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned long m3:3;
} asid61jb05iw03 = { 1, 2 };

struct ASID61JB05IW29 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned long m3:29;
} asid61jb05iw29 = { 1, 2 };

struct ASID61JB05HD00 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned long long m3;
} asid61jb05hd00 = { 1, 2 };

struct ASID61JB05ID03 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned long long m3:3;
} asid61jb05id03 = { 1, 2 };

struct ASID61JB05ID61 {
	unsigned long long m1:61;
	unsigned char   :5;
	unsigned long long m3:61;
} asid61jb05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JB05HS00 {
	unsigned long long m1:61;
	unsigned char   :5;
	struct TAGHB00 m3;
} asid61jb05hs00 = { 1, { 2 } };

int lto_sub_170() {

	printf("%llu\n", (unsigned long long)asid61jb05hb00.m1);
	printf("%u\n"  , asid61jb05hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05ib03.m1);
	printf("%u\n"  , asid61jb05ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05ib05.m1);
	printf("%u\n"  , asid61jb05ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05hh00.m1);
	printf("%u\n"  , asid61jb05hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05ih03.m1);
	printf("%u\n"  , asid61jb05ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05ih13.m1);
	printf("%u\n"  , asid61jb05ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05hw00.m1);
	printf("%lu\n" , asid61jb05hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05iw03.m1);
	printf("%lu\n" , asid61jb05iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05iw29.m1);
	printf("%lu\n" , asid61jb05iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05hd00.m1);
	printf("%llu\n", asid61jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05id03.m1);
	printf("%llu\n", (unsigned long long)asid61jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05id61.m1);
	printf("%llu\n", (unsigned long long)asid61jb05id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb05hs00.m1);
	printf("%u\n"  , asid61jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
