#include <stdio.h>                                              

struct ASIW03IB05HB00 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned char m3;
} asiw03ib05hb00 = { 1, 2, 3 };

struct ASIW03IB05IB03 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned char m3:3;
} asiw03ib05ib03 = { 1, 2, 3 };

struct ASIW03IB05IB05 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned char m3:5;
} asiw03ib05ib05 = { 1, 2, 3 };

struct ASIW03IB05HH00 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned short m3;
} asiw03ib05hh00 = { 1, 2, 3 };

struct ASIW03IB05IH03 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned short m3:3;
} asiw03ib05ih03 = { 1, 2, 3 };

struct ASIW03IB05IH13 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned short m3:13;
} asiw03ib05ih13 = { 1, 2, 3 };

struct ASIW03IB05HW00 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned long m3;
} asiw03ib05hw00 = { 1, 2, 3 };

struct ASIW03IB05IW03 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned long m3:3;
} asiw03ib05iw03 = { 1, 2, 3 };

struct ASIW03IB05IW29 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned long m3:29;
} asiw03ib05iw29 = { 1, 2, 3 };

struct ASIW03IB05HD00 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned long long m3;
} asiw03ib05hd00 = { 1, 2, 3 };

struct ASIW03IB05ID03 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned long long m3:3;
} asiw03ib05id03 = { 1, 2, 3 };

struct ASIW03IB05ID61 {
	unsigned long m1:3;
	unsigned char m2:5;
	unsigned long long m3:61;
} asiw03ib05id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW03IB05HS00 {
	unsigned long m1:3;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asiw03ib05hs00 = { 1, 2, { 3 } };

int main() {

	printf("%d\n" , asiw03ib05hb00.m1);
	printf("%u\n"  , asiw03ib05hb00.m2);
	printf("%u\n"  , asiw03ib05hb00.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05ib03.m1);
	printf("%u\n"  , asiw03ib05ib03.m2);
	printf("%u\n"  , asiw03ib05ib03.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05ib05.m1);
	printf("%u\n"  , asiw03ib05ib05.m2);
	printf("%u\n"  , asiw03ib05ib05.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05hh00.m1);
	printf("%u\n"  , asiw03ib05hh00.m2);
	printf("%u\n"  , asiw03ib05hh00.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05ih03.m1);
	printf("%u\n"  , asiw03ib05ih03.m2);
	printf("%u\n"  , asiw03ib05ih03.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05ih13.m1);
	printf("%u\n"  , asiw03ib05ih13.m2);
	printf("%u\n"  , asiw03ib05ih13.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05hw00.m1);
	printf("%u\n"  , asiw03ib05hw00.m2);
	printf("%lu\n" , asiw03ib05hw00.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05iw03.m1);
	printf("%u\n"  , asiw03ib05iw03.m2);
	printf("%d\n" , asiw03ib05iw03.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05iw29.m1);
	printf("%u\n"  , asiw03ib05iw29.m2);
	printf("%d\n" , asiw03ib05iw29.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05hd00.m1);
	printf("%u\n"  , asiw03ib05hd00.m2);
	printf("%llu\n", asiw03ib05hd00.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05id03.m1);
	printf("%u\n"  , asiw03ib05id03.m2);
	printf("%llu\n", (unsigned long long)asiw03ib05id03.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05id61.m1);
	printf("%u\n"  , asiw03ib05id61.m2);
	printf("%llu\n", (unsigned long long)asiw03ib05id61.m3);
	printf("\n");

	printf("%d\n" , asiw03ib05hs00.m1);
	printf("%u\n"  , asiw03ib05hs00.m2);
	printf("%u\n"  , asiw03ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
