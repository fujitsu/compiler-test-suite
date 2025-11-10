#include <stdio.h>                                              

struct ASHD00JW00HB00 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned char m3;
} ashd00jw00hb00 = { 1, 2 };

struct ASHD00JW00IB03 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned char m3:3;
} ashd00jw00ib03 = { 1, 2 };

struct ASHD00JW00IB05 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned char m3:5;
} ashd00jw00ib05 = { 1, 2 };

struct ASHD00JW00HH00 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned short m3;
} ashd00jw00hh00 = { 1, 2 };

struct ASHD00JW00IH03 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned short m3:3;
} ashd00jw00ih03 = { 1, 2 };

struct ASHD00JW00IH13 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned short m3:13;
} ashd00jw00ih13 = { 1, 2 };

struct ASHD00JW00HW00 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned long m3;
} ashd00jw00hw00 = { 1, 2 };

struct ASHD00JW00IW03 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned long m3:3;
} ashd00jw00iw03 = { 1, 2 };

struct ASHD00JW00IW29 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned long m3:29;
} ashd00jw00iw29 = { 1, 2 };

struct ASHD00JW00HD00 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned long long m3;
} ashd00jw00hd00 = { 1, 2 };

struct ASHD00JW00ID03 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned long long m3:3;
} ashd00jw00id03 = { 1, 2 };

struct ASHD00JW00ID61 {
	unsigned long long m1;
	unsigned long   :0;
	unsigned long long m3:61;
} ashd00jw00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00JW00HS00 {
	unsigned long long m1;
	unsigned long   :0;
	struct TAGHB00 m3;
} ashd00jw00hs00 = { 1, { 2 } };

int lto_sub_37() {

	printf("%llu\n", ashd00jw00hb00.m1);
	printf("%u\n"  , ashd00jw00hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00ib03.m1);
	printf("%u\n"  , ashd00jw00ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00ib05.m1);
	printf("%u\n"  , ashd00jw00ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00hh00.m1);
	printf("%u\n"  , ashd00jw00hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00ih03.m1);
	printf("%u\n"  , ashd00jw00ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00ih13.m1);
	printf("%u\n"  , ashd00jw00ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00hw00.m1);
	printf("%lu\n" , ashd00jw00hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00iw03.m1);
	printf("%lu\n" , ashd00jw00iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00iw29.m1);
	printf("%lu\n" , ashd00jw00iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00hd00.m1);
	printf("%llu\n", ashd00jw00hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00id03.m1);
	printf("%llu\n", (unsigned long long)ashd00jw00id03.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00id61.m1);
	printf("%llu\n", (unsigned long long)ashd00jw00id61.m3);
	printf("\n");

	printf("%llu\n", ashd00jw00hs00.m1);
	printf("%u\n"  , ashd00jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
