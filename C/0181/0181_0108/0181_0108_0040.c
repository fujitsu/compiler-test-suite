#include <stdio.h>                                              

struct ASHH00IB05HB00 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned char m3;
} ashh00ib05hb00 = { 1, 2, 3 };

struct ASHH00IB05IB03 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned char m3:3;
} ashh00ib05ib03 = { 1, 2, 3 };

struct ASHH00IB05IB05 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned char m3:5;
} ashh00ib05ib05 = { 1, 2, 3 };

struct ASHH00IB05HH00 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned short m3;
} ashh00ib05hh00 = { 1, 2, 3 };

struct ASHH00IB05IH03 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned short m3:3;
} ashh00ib05ih03 = { 1, 2, 3 };

struct ASHH00IB05IH13 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned short m3:13;
} ashh00ib05ih13 = { 1, 2, 3 };

struct ASHH00IB05HW00 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned long m3;
} ashh00ib05hw00 = { 1, 2, 3 };

struct ASHH00IB05IW03 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned long m3:3;
} ashh00ib05iw03 = { 1, 2, 3 };

struct ASHH00IB05IW29 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned long m3:29;
} ashh00ib05iw29 = { 1, 2, 3 };

struct ASHH00IB05HD00 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned long long m3;
} ashh00ib05hd00 = { 1, 2, 3 };

struct ASHH00IB05ID03 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned long long m3:3;
} ashh00ib05id03 = { 1, 2, 3 };

struct ASHH00IB05ID61 {
	unsigned short m1;
	unsigned char m2:5;
	unsigned long long m3:61;
} ashh00ib05id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00IB05HS00 {
	unsigned short m1;
	unsigned char m2:5;
	struct TAGHB00 m3;
} ashh00ib05hs00 = { 1, 2, { 3 } };

int lto_sub_41() {

	printf("%u\n"  , ashh00ib05hb00.m1);
	printf("%u\n"  , ashh00ib05hb00.m2);
	printf("%u\n"  , ashh00ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05ib03.m1);
	printf("%u\n"  , ashh00ib05ib03.m2);
	printf("%u\n"  , ashh00ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05ib05.m1);
	printf("%u\n"  , ashh00ib05ib05.m2);
	printf("%u\n"  , ashh00ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05hh00.m1);
	printf("%u\n"  , ashh00ib05hh00.m2);
	printf("%u\n"  , ashh00ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05ih03.m1);
	printf("%u\n"  , ashh00ib05ih03.m2);
	printf("%u\n"  , ashh00ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05ih13.m1);
	printf("%u\n"  , ashh00ib05ih13.m2);
	printf("%u\n"  , ashh00ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05hw00.m1);
	printf("%u\n"  , ashh00ib05hw00.m2);
	printf("%lu\n" , ashh00ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05iw03.m1);
	printf("%u\n"  , ashh00ib05iw03.m2);
	printf("%lu\n" , ashh00ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05iw29.m1);
	printf("%u\n"  , ashh00ib05iw29.m2);
	printf("%lu\n" , ashh00ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05hd00.m1);
	printf("%u\n"  , ashh00ib05hd00.m2);
	printf("%llu\n", ashh00ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05id03.m1);
	printf("%u\n"  , ashh00ib05id03.m2);
	printf("%llu\n", (unsigned long long)ashh00ib05id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05id61.m1);
	printf("%u\n"  , ashh00ib05id61.m2);
	printf("%llu\n", (unsigned long long)ashh00ib05id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib05hs00.m1);
	printf("%u\n"  , ashh00ib05hs00.m2);
	printf("%u\n"  , ashh00ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
