#include <stdio.h>                                              

struct ASJB05IB05HB00 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned char m3;
} asjb05ib05hb00 = { 1, 2 };

struct ASJB05IB05IB03 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned char m3:3;
} asjb05ib05ib03 = { 1, 2 };

struct ASJB05IB05IB05 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned char m3:5;
} asjb05ib05ib05 = { 1, 2 };

struct ASJB05IB05HH00 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned short m3;
} asjb05ib05hh00 = { 1, 2 };

struct ASJB05IB05IH03 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned short m3:3;
} asjb05ib05ih03 = { 1, 2 };

struct ASJB05IB05IH13 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned short m3:13;
} asjb05ib05ih13 = { 1, 2 };

struct ASJB05IB05HW00 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned long m3;
} asjb05ib05hw00 = { 1, 2 };

struct ASJB05IB05IW03 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned long m3:3;
} asjb05ib05iw03 = { 1, 2 };

struct ASJB05IB05IW29 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned long m3:29;
} asjb05ib05iw29 = { 1, 2 };

struct ASJB05IB05HD00 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned long long m3;
} asjb05ib05hd00 = { 1, 2 };

struct ASJB05IB05ID03 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned long long m3:3;
} asjb05ib05id03 = { 1, 2 };

struct ASJB05IB05ID61 {
	unsigned char   :5;
	unsigned char m2:5;
	unsigned long long m3:61;
} asjb05ib05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05IB05HS00 {
	unsigned char   :5;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asjb05ib05hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjb05ib05hb00.m2);
	printf("%u\n"  , asjb05ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05ib03.m2);
	printf("%u\n"  , asjb05ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05ib05.m2);
	printf("%u\n"  , asjb05ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05hh00.m2);
	printf("%u\n"  , asjb05ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05ih03.m2);
	printf("%u\n"  , asjb05ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05ih13.m2);
	printf("%u\n"  , asjb05ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05hw00.m2);
	printf("%lu\n" , asjb05ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05iw03.m2);
	printf("%d\n" , asjb05ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05iw29.m2);
	printf("%d\n" , asjb05ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05hd00.m2);
	printf("%llu\n", asjb05ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05id03.m2);
	printf("%llu\n", (unsigned long long)asjb05ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05id61.m2);
	printf("%llu\n", (unsigned long long)asjb05ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib05hs00.m2);
	printf("%u\n"  , asjb05ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
