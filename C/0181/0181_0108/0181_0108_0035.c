#include <stdio.h>                                              

struct ASHD00JH13HB00 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned char m3;
} ashd00jh13hb00 = { 1, 2 };

struct ASHD00JH13IB03 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned char m3:3;
} ashd00jh13ib03 = { 1, 2 };

struct ASHD00JH13IB05 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned char m3:5;
} ashd00jh13ib05 = { 1, 2 };

struct ASHD00JH13HH00 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned short m3;
} ashd00jh13hh00 = { 1, 2 };

struct ASHD00JH13IH03 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned short m3:3;
} ashd00jh13ih03 = { 1, 2 };

struct ASHD00JH13IH13 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned short m3:13;
} ashd00jh13ih13 = { 1, 2 };

struct ASHD00JH13HW00 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned long m3;
} ashd00jh13hw00 = { 1, 2 };

struct ASHD00JH13IW03 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned long m3:3;
} ashd00jh13iw03 = { 1, 2 };

struct ASHD00JH13IW29 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned long m3:29;
} ashd00jh13iw29 = { 1, 2 };

struct ASHD00JH13HD00 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned long long m3;
} ashd00jh13hd00 = { 1, 2 };

struct ASHD00JH13ID03 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned long long m3:3;
} ashd00jh13id03 = { 1, 2 };

struct ASHD00JH13ID61 {
	unsigned long long m1;
	unsigned short   :13;
	unsigned long long m3:61;
} ashd00jh13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00JH13HS00 {
	unsigned long long m1;
	unsigned short   :13;
	struct TAGHB00 m3;
} ashd00jh13hs00 = { 1, { 2 } };

int lto_sub_36() {

	printf("%llu\n", ashd00jh13hb00.m1);
	printf("%u\n"  , ashd00jh13hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13ib03.m1);
	printf("%u\n"  , ashd00jh13ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13ib05.m1);
	printf("%u\n"  , ashd00jh13ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13hh00.m1);
	printf("%u\n"  , ashd00jh13hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13ih03.m1);
	printf("%u\n"  , ashd00jh13ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13ih13.m1);
	printf("%u\n"  , ashd00jh13ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13hw00.m1);
	printf("%lu\n" , ashd00jh13hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13iw03.m1);
	printf("%lu\n" , ashd00jh13iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13iw29.m1);
	printf("%lu\n" , ashd00jh13iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13hd00.m1);
	printf("%llu\n", ashd00jh13hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13id03.m1);
	printf("%llu\n", (unsigned long long)ashd00jh13id03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13id61.m1);
	printf("%llu\n", (unsigned long long)ashd00jh13id61.m3);
	printf("\n");

	printf("%llu\n", ashd00jh13hs00.m1);
	printf("%u\n"  , ashd00jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
