#include <stdio.h>                                              

struct ASJW29IB05HB00 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned char m3;
} asjw29ib05hb00 = { 1, 2 };

struct ASJW29IB05IB03 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned char m3:3;
} asjw29ib05ib03 = { 1, 2 };

struct ASJW29IB05IB05 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned char m3:5;
} asjw29ib05ib05 = { 1, 2 };

struct ASJW29IB05HH00 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned short m3;
} asjw29ib05hh00 = { 1, 2 };

struct ASJW29IB05IH03 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned short m3:3;
} asjw29ib05ih03 = { 1, 2 };

struct ASJW29IB05IH13 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned short m3:13;
} asjw29ib05ih13 = { 1, 2 };

struct ASJW29IB05HW00 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned long m3;
} asjw29ib05hw00 = { 1, 2 };

struct ASJW29IB05IW03 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned long m3:3;
} asjw29ib05iw03 = { 1, 2 };

struct ASJW29IB05IW29 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned long m3:29;
} asjw29ib05iw29 = { 1, 2 };

struct ASJW29IB05HD00 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned long long m3;
} asjw29ib05hd00 = { 1, 2 };

struct ASJW29IB05ID03 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned long long m3:3;
} asjw29ib05id03 = { 1, 2 };

struct ASJW29IB05ID61 {
	unsigned long   :29;
	unsigned char m2:5;
	unsigned long long m3:61;
} asjw29ib05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29IB05HS00 {
	unsigned long   :29;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asjw29ib05hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjw29ib05hb00.m2);
	printf("%u\n"  , asjw29ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05ib03.m2);
	printf("%u\n"  , asjw29ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05ib05.m2);
	printf("%u\n"  , asjw29ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05hh00.m2);
	printf("%u\n"  , asjw29ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05ih03.m2);
	printf("%u\n"  , asjw29ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05ih13.m2);
	printf("%u\n"  , asjw29ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05hw00.m2);
	printf("%lu\n" , asjw29ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05iw03.m2);
	printf("%d\n" , asjw29ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05iw29.m2);
	printf("%d\n" , asjw29ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05hd00.m2);
	printf("%llu\n", asjw29ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05id03.m2);
	printf("%llu\n", (unsigned long long)asjw29ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05id61.m2);
	printf("%llu\n", (unsigned long long)asjw29ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29ib05hs00.m2);
	printf("%u\n"  , asjw29ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
