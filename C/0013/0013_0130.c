#include <stdio.h>                                              

struct ASIB05JB05HB00 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned char m3;
} asib05jb05hb00 = { 1, 2 };

struct ASIB05JB05IB03 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned char m3:3;
} asib05jb05ib03 = { 1, 2 };

struct ASIB05JB05IB05 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned char m3:5;
} asib05jb05ib05 = { 1, 2 };

struct ASIB05JB05HH00 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned short m3;
} asib05jb05hh00 = { 1, 2 };

struct ASIB05JB05IH03 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned short m3:3;
} asib05jb05ih03 = { 1, 2 };

struct ASIB05JB05IH13 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned short m3:13;
} asib05jb05ih13 = { 1, 2 };

struct ASIB05JB05HW00 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned long m3;
} asib05jb05hw00 = { 1, 2 };

struct ASIB05JB05IW03 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned long m3:3;
} asib05jb05iw03 = { 1, 2 };

struct ASIB05JB05IW29 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned long m3:29;
} asib05jb05iw29 = { 1, 2 };

struct ASIB05JB05HD00 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned long long m3;
} asib05jb05hd00 = { 1, 2 };

struct ASIB05JB05ID03 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned long long m3:3;
} asib05jb05id03 = { 1, 2 };

struct ASIB05JB05ID61 {
	unsigned char m1:5;
	unsigned char   :5;
	unsigned long long m3:61;
} asib05jb05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB05JB05HS00 {
	unsigned char m1:5;
	unsigned char   :5;
	struct TAGHB00 m3;
} asib05jb05hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asib05jb05hb00.m1);
	printf("%u\n"  , asib05jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05ib03.m1);
	printf("%u\n"  , asib05jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05ib05.m1);
	printf("%u\n"  , asib05jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05hh00.m1);
	printf("%u\n"  , asib05jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05ih03.m1);
	printf("%u\n"  , asib05jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05ih13.m1);
	printf("%u\n"  , asib05jb05ih13.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05hw00.m1);
	printf("%lu\n" , asib05jb05hw00.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05iw03.m1);
	printf("%d\n" , asib05jb05iw03.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05iw29.m1);
	printf("%d\n" , asib05jb05iw29.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05hd00.m1);
	printf("%llu\n", asib05jb05hd00.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05id03.m1);
	printf("%llu\n", (unsigned long long)asib05jb05id03.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05id61.m1);
	printf("%llu\n", (unsigned long long)asib05jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asib05jb05hs00.m1);
	printf("%u\n"  , asib05jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
