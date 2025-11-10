#include <stdio.h>                                              

struct ASHD00JW03HB00 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned char m3;
} ashd00jw03hb00 = { 1, 2 };

struct ASHD00JW03IB03 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned char m3:3;
} ashd00jw03ib03 = { 1, 2 };

struct ASHD00JW03IB05 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned char m3:5;
} ashd00jw03ib05 = { 1, 2 };

struct ASHD00JW03HH00 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned short m3;
} ashd00jw03hh00 = { 1, 2 };

struct ASHD00JW03IH03 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned short m3:3;
} ashd00jw03ih03 = { 1, 2 };

struct ASHD00JW03IH13 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned short m3:13;
} ashd00jw03ih13 = { 1, 2 };

struct ASHD00JW03HW00 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned long m3;
} ashd00jw03hw00 = { 1, 2 };

struct ASHD00JW03IW03 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned long m3:3;
} ashd00jw03iw03 = { 1, 2 };

struct ASHD00JW03IW29 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned long m3:29;
} ashd00jw03iw29 = { 1, 2 };

struct ASHD00JW03HD00 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned long long m3;
} ashd00jw03hd00 = { 1, 2 };

struct ASHD00JW03ID03 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned long long m3:3;
} ashd00jw03id03 = { 1, 2 };

struct ASHD00JW03ID61 {
	unsigned long long m1;
	unsigned long   :3;
	unsigned long long m3:61;
} ashd00jw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00JW03HS00 {
	unsigned long long m1;
	unsigned long   :3;
	struct TAGHB00 m3;
} ashd00jw03hs00 = { 1, { 2 } };

int lto_sub_38() {

	printf("%llu\n", ashd00jw03hb00.m1);
	printf("%u\n"  , ashd00jw03hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03ib03.m1);
	printf("%u\n"  , ashd00jw03ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03ib05.m1);
	printf("%u\n"  , ashd00jw03ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03hh00.m1);
	printf("%u\n"  , ashd00jw03hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03ih03.m1);
	printf("%u\n"  , ashd00jw03ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03ih13.m1);
	printf("%u\n"  , ashd00jw03ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03hw00.m1);
	printf("%lu\n" , ashd00jw03hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03iw03.m1);
	printf("%lu\n" , ashd00jw03iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03iw29.m1);
	printf("%lu\n" , ashd00jw03iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03hd00.m1);
	printf("%llu\n", ashd00jw03hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03id03.m1);
	printf("%llu\n", (unsigned long long)ashd00jw03id03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03id61.m1);
	printf("%llu\n", (unsigned long long)ashd00jw03id61.m3);
	printf("\n");

	printf("%llu\n", ashd00jw03hs00.m1);
	printf("%u\n"  , ashd00jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
