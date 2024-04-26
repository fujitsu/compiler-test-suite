#include <stdio.h>                                              

struct ASHD00JH00HB00 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned char m3;
} ashd00jh00hb00 = { 1, 2 };

struct ASHD00JH00IB03 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned char m3:3;
} ashd00jh00ib03 = { 1, 2 };

struct ASHD00JH00IB05 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned char m3:5;
} ashd00jh00ib05 = { 1, 2 };

struct ASHD00JH00HH00 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned short m3;
} ashd00jh00hh00 = { 1, 2 };

struct ASHD00JH00IH03 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned short m3:3;
} ashd00jh00ih03 = { 1, 2 };

struct ASHD00JH00IH13 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned short m3:13;
} ashd00jh00ih13 = { 1, 2 };

struct ASHD00JH00HW00 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned long m3;
} ashd00jh00hw00 = { 1, 2 };

struct ASHD00JH00IW03 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned long m3:3;
} ashd00jh00iw03 = { 1, 2 };

struct ASHD00JH00IW29 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned long m3:29;
} ashd00jh00iw29 = { 1, 2 };

struct ASHD00JH00HD00 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned long long m3;
} ashd00jh00hd00 = { 1, 2 };

struct ASHD00JH00ID03 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned long long m3:3;
} ashd00jh00id03 = { 1, 2 };

struct ASHD00JH00ID61 {
	unsigned long long m1;
	unsigned short   :0;
	unsigned long long m3:61;
} ashd00jh00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00JH00HS00 {
	unsigned long long m1;
	unsigned short   :0;
	struct TAGHB00 m3;
} ashd00jh00hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", ashd00jh00hb00.m1);
	printf("%u\n"  , ashd00jh00hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00ib03.m1);
	printf("%u\n"  , ashd00jh00ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00ib05.m1);
	printf("%u\n"  , ashd00jh00ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00hh00.m1);
	printf("%u\n"  , ashd00jh00hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00ih03.m1);
	printf("%u\n"  , ashd00jh00ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00ih13.m1);
	printf("%u\n"  , ashd00jh00ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00hw00.m1);
	printf("%lu\n" , ashd00jh00hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00iw03.m1);
	printf("%d\n" , ashd00jh00iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00iw29.m1);
	printf("%d\n" , ashd00jh00iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00hd00.m1);
	printf("%llu\n", ashd00jh00hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00id03.m1);
	printf("%llu\n", (unsigned long long)ashd00jh00id03.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00id61.m1);
	printf("%llu\n", (unsigned long long)ashd00jh00id61.m3);
	printf("\n");

	printf("%llu\n", ashd00jh00hs00.m1);
	printf("%u\n"  , ashd00jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
