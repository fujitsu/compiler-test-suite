#include <stdio.h>                                              

struct ASIW29IB05HB00 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned char m3;
} asiw29ib05hb00 = { 1, 2, 3 };

struct ASIW29IB05IB03 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned char m3:3;
} asiw29ib05ib03 = { 1, 2, 3 };

struct ASIW29IB05IB05 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned char m3:5;
} asiw29ib05ib05 = { 1, 2, 3 };

struct ASIW29IB05HH00 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned short m3;
} asiw29ib05hh00 = { 1, 2, 3 };

struct ASIW29IB05IH03 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned short m3:3;
} asiw29ib05ih03 = { 1, 2, 3 };

struct ASIW29IB05IH13 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned short m3:13;
} asiw29ib05ih13 = { 1, 2, 3 };

struct ASIW29IB05HW00 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned long m3;
} asiw29ib05hw00 = { 1, 2, 3 };

struct ASIW29IB05IW03 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned long m3:3;
} asiw29ib05iw03 = { 1, 2, 3 };

struct ASIW29IB05IW29 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned long m3:29;
} asiw29ib05iw29 = { 1, 2, 3 };

struct ASIW29IB05HD00 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned long long m3;
} asiw29ib05hd00 = { 1, 2, 3 };

struct ASIW29IB05ID03 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned long long m3:3;
} asiw29ib05id03 = { 1, 2, 3 };

struct ASIW29IB05ID61 {
	unsigned long m1:29;
	unsigned char m2:5;
	unsigned long long m3:61;
} asiw29ib05id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29IB05HS00 {
	unsigned long m1:29;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asiw29ib05hs00 = { 1, 2, { 3 } };

int main() {

	printf("%d\n" , asiw29ib05hb00.m1);
	printf("%u\n"  , asiw29ib05hb00.m2);
	printf("%u\n"  , asiw29ib05hb00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05ib03.m1);
	printf("%u\n"  , asiw29ib05ib03.m2);
	printf("%u\n"  , asiw29ib05ib03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05ib05.m1);
	printf("%u\n"  , asiw29ib05ib05.m2);
	printf("%u\n"  , asiw29ib05ib05.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05hh00.m1);
	printf("%u\n"  , asiw29ib05hh00.m2);
	printf("%u\n"  , asiw29ib05hh00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05ih03.m1);
	printf("%u\n"  , asiw29ib05ih03.m2);
	printf("%u\n"  , asiw29ib05ih03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05ih13.m1);
	printf("%u\n"  , asiw29ib05ih13.m2);
	printf("%u\n"  , asiw29ib05ih13.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05hw00.m1);
	printf("%u\n"  , asiw29ib05hw00.m2);
	printf("%lu\n" , asiw29ib05hw00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05iw03.m1);
	printf("%u\n"  , asiw29ib05iw03.m2);
	printf("%d\n" , asiw29ib05iw03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05iw29.m1);
	printf("%u\n"  , asiw29ib05iw29.m2);
	printf("%d\n" , asiw29ib05iw29.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05hd00.m1);
	printf("%u\n"  , asiw29ib05hd00.m2);
	printf("%llu\n", asiw29ib05hd00.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05id03.m1);
	printf("%u\n"  , asiw29ib05id03.m2);
	printf("%llu\n", (unsigned long long)asiw29ib05id03.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05id61.m1);
	printf("%u\n"  , asiw29ib05id61.m2);
	printf("%llu\n", (unsigned long long)asiw29ib05id61.m3);
	printf("\n");

	printf("%d\n" , asiw29ib05hs00.m1);
	printf("%u\n"  , asiw29ib05hs00.m2);
	printf("%u\n"  , asiw29ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
