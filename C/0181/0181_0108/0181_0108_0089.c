                                                      
#include <stdio.h>                                              

struct ASHW00JB05HB00 {
	unsigned long m1;
	unsigned char   :5;
	unsigned char m3;
} ashw00jb05hb00 = { 1, 2 };

struct ASHW00JB05IB03 {
	unsigned long m1;
	unsigned char   :5;
	unsigned char m3:3;
} ashw00jb05ib03 = { 1, 2 };

struct ASHW00JB05IB05 {
	unsigned long m1;
	unsigned char   :5;
	unsigned char m3:5;
} ashw00jb05ib05 = { 1, 2 };

struct ASHW00JB05HH00 {
	unsigned long m1;
	unsigned char   :5;
	unsigned short m3;
} ashw00jb05hh00 = { 1, 2 };

struct ASHW00JB05IH03 {
	unsigned long m1;
	unsigned char   :5;
	unsigned short m3:3;
} ashw00jb05ih03 = { 1, 2 };

struct ASHW00JB05IH13 {
	unsigned long m1;
	unsigned char   :5;
	unsigned short m3:13;
} ashw00jb05ih13 = { 1, 2 };

struct ASHW00JB05HW00 {
	unsigned long m1;
	unsigned char   :5;
	unsigned long m3;
} ashw00jb05hw00 = { 1, 2 };

struct ASHW00JB05IW03 {
	unsigned long m1;
	unsigned char   :5;
	unsigned long m3:3;
} ashw00jb05iw03 = { 1, 2 };

struct ASHW00JB05IW29 {
	unsigned long m1;
	unsigned char   :5;
	unsigned long m3:29;
} ashw00jb05iw29 = { 1, 2 };

struct ASHW00JB05HD00 {
	unsigned long m1;
	unsigned char   :5;
	unsigned long long m3;
} ashw00jb05hd00 = { 1, 2 };

struct ASHW00JB05ID03 {
	unsigned long m1;
	unsigned char   :5;
	unsigned long long m3:3;
} ashw00jb05id03 = { 1, 2 };

struct ASHW00JB05ID61 {
	unsigned long m1;
	unsigned char   :5;
	unsigned long long m3:61;
} ashw00jb05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00JB05HS00 {
	unsigned long m1;
	unsigned char   :5;
	struct TAGHB00 m3;
} ashw00jb05hs00 = { 1, { 2 } };

int lto_sub_90() {

	printf("%lu\n" , ashw00jb05hb00.m1);
	printf("%u\n"  , ashw00jb05hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05ib03.m1);
	printf("%u\n"  , ashw00jb05ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05ib05.m1);
	printf("%u\n"  , ashw00jb05ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05hh00.m1);
	printf("%u\n"  , ashw00jb05hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05ih03.m1);
	printf("%u\n"  , ashw00jb05ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05ih13.m1);
	printf("%u\n"  , ashw00jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05hw00.m1);
	printf("%lu\n" , ashw00jb05hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05iw03.m1);
	printf("%lu\n" , ashw00jb05iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05iw29.m1);
	printf("%lu\n" , ashw00jb05iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05hd00.m1);
	printf("%llu\n", ashw00jb05hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05id03.m1);
	printf("%llu\n", (unsigned long long)ashw00jb05id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05id61.m1);
	printf("%llu\n", (unsigned long long)ashw00jb05id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb05hs00.m1);
	printf("%u\n"  , ashw00jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
