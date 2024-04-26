#include <stdio.h>                                              

struct ASJH13IB05HB00 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned char m3;
} asjh13ib05hb00 = { 1, 2 };

struct ASJH13IB05IB03 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned char m3:3;
} asjh13ib05ib03 = { 1, 2 };

struct ASJH13IB05IB05 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned char m3:5;
} asjh13ib05ib05 = { 1, 2 };

struct ASJH13IB05HH00 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned short m3;
} asjh13ib05hh00 = { 1, 2 };

struct ASJH13IB05IH03 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned short m3:3;
} asjh13ib05ih03 = { 1, 2 };

struct ASJH13IB05IH13 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned short m3:13;
} asjh13ib05ih13 = { 1, 2 };

struct ASJH13IB05HW00 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned long m3;
} asjh13ib05hw00 = { 1, 2 };

struct ASJH13IB05IW03 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned long m3:3;
} asjh13ib05iw03 = { 1, 2 };

struct ASJH13IB05IW29 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned long m3:29;
} asjh13ib05iw29 = { 1, 2 };

struct ASJH13IB05HD00 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned long long m3;
} asjh13ib05hd00 = { 1, 2 };

struct ASJH13IB05ID03 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned long long m3:3;
} asjh13ib05id03 = { 1, 2 };

struct ASJH13IB05ID61 {
	unsigned short   :13;
	unsigned char m2:5;
	unsigned long long m3:61;
} asjh13ib05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13IB05HS00 {
	unsigned short   :13;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asjh13ib05hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjh13ib05hb00.m2);
	printf("%u\n"  , asjh13ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05ib03.m2);
	printf("%u\n"  , asjh13ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05ib05.m2);
	printf("%u\n"  , asjh13ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05hh00.m2);
	printf("%u\n"  , asjh13ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05ih03.m2);
	printf("%u\n"  , asjh13ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05ih13.m2);
	printf("%u\n"  , asjh13ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05hw00.m2);
	printf("%lu\n" , asjh13ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05iw03.m2);
	printf("%d\n" , asjh13ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05iw29.m2);
	printf("%d\n" , asjh13ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05hd00.m2);
	printf("%llu\n", asjh13ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05id03.m2);
	printf("%llu\n", (unsigned long long)asjh13ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05id61.m2);
	printf("%llu\n", (unsigned long long)asjh13ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib05hs00.m2);
	printf("%u\n"  , asjh13ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
