#include <stdio.h>                                              

struct ASHD00JW29HB00 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned char m3;
} ashd00jw29hb00 = { 1, 2 };

struct ASHD00JW29IB03 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned char m3:3;
} ashd00jw29ib03 = { 1, 2 };

struct ASHD00JW29IB05 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned char m3:5;
} ashd00jw29ib05 = { 1, 2 };

struct ASHD00JW29HH00 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned short m3;
} ashd00jw29hh00 = { 1, 2 };

struct ASHD00JW29IH03 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned short m3:3;
} ashd00jw29ih03 = { 1, 2 };

struct ASHD00JW29IH13 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned short m3:13;
} ashd00jw29ih13 = { 1, 2 };

struct ASHD00JW29HW00 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned long m3;
} ashd00jw29hw00 = { 1, 2 };

struct ASHD00JW29IW03 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned long m3:3;
} ashd00jw29iw03 = { 1, 2 };

struct ASHD00JW29IW29 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned long m3:29;
} ashd00jw29iw29 = { 1, 2 };

struct ASHD00JW29HD00 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned long long m3;
} ashd00jw29hd00 = { 1, 2 };

struct ASHD00JW29ID03 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned long long m3:3;
} ashd00jw29id03 = { 1, 2 };

struct ASHD00JW29ID61 {
	unsigned long long m1;
	unsigned long   :29;
	unsigned long long m3:61;
} ashd00jw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00JW29HS00 {
	unsigned long long m1;
	unsigned long   :29;
	struct TAGHB00 m3;
} ashd00jw29hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", ashd00jw29hb00.m1);
	printf("%u\n"  , ashd00jw29hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29ib03.m1);
	printf("%u\n"  , ashd00jw29ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29ib05.m1);
	printf("%u\n"  , ashd00jw29ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29hh00.m1);
	printf("%u\n"  , ashd00jw29hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29ih03.m1);
	printf("%u\n"  , ashd00jw29ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29ih13.m1);
	printf("%u\n"  , ashd00jw29ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29hw00.m1);
	printf("%lu\n" , ashd00jw29hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29iw03.m1);
	printf("%d\n" , ashd00jw29iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29iw29.m1);
	printf("%d\n" , ashd00jw29iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29hd00.m1);
	printf("%llu\n", ashd00jw29hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29id03.m1);
	printf("%llu\n", (unsigned long long)ashd00jw29id03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29id61.m1);
	printf("%llu\n", (unsigned long long)ashd00jw29id61.m3);
	printf("\n");

	printf("%llu\n", ashd00jw29hs00.m1);
	printf("%u\n"  , ashd00jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
