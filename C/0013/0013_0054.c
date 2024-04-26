#include <stdio.h>                                              

struct ASHH00JH00HB00 {
	unsigned short m1;
	unsigned short   :0;
	unsigned char m3;
} ashh00jh00hb00 = { 1, 2 };

struct ASHH00JH00IB03 {
	unsigned short m1;
	unsigned short   :0;
	unsigned char m3:3;
} ashh00jh00ib03 = { 1, 2 };

struct ASHH00JH00IB05 {
	unsigned short m1;
	unsigned short   :0;
	unsigned char m3:5;
} ashh00jh00ib05 = { 1, 2 };

struct ASHH00JH00HH00 {
	unsigned short m1;
	unsigned short   :0;
	unsigned short m3;
} ashh00jh00hh00 = { 1, 2 };

struct ASHH00JH00IH03 {
	unsigned short m1;
	unsigned short   :0;
	unsigned short m3:3;
} ashh00jh00ih03 = { 1, 2 };

struct ASHH00JH00IH13 {
	unsigned short m1;
	unsigned short   :0;
	unsigned short m3:13;
} ashh00jh00ih13 = { 1, 2 };

struct ASHH00JH00HW00 {
	unsigned short m1;
	unsigned short   :0;
	unsigned long m3;
} ashh00jh00hw00 = { 1, 2 };

struct ASHH00JH00IW03 {
	unsigned short m1;
	unsigned short   :0;
	unsigned long m3:3;
} ashh00jh00iw03 = { 1, 2 };

struct ASHH00JH00IW29 {
	unsigned short m1;
	unsigned short   :0;
	unsigned long m3:29;
} ashh00jh00iw29 = { 1, 2 };

struct ASHH00JH00HD00 {
	unsigned short m1;
	unsigned short   :0;
	unsigned long long m3;
} ashh00jh00hd00 = { 1, 2 };

struct ASHH00JH00ID03 {
	unsigned short m1;
	unsigned short   :0;
	unsigned long long m3:3;
} ashh00jh00id03 = { 1, 2 };

struct ASHH00JH00ID61 {
	unsigned short m1;
	unsigned short   :0;
	unsigned long long m3:61;
} ashh00jh00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00JH00HS00 {
	unsigned short m1;
	unsigned short   :0;
	struct TAGHB00 m3;
} ashh00jh00hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , ashh00jh00hb00.m1);
	printf("%u\n"  , ashh00jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00ib03.m1);
	printf("%u\n"  , ashh00jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00ib05.m1);
	printf("%u\n"  , ashh00jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00hh00.m1);
	printf("%u\n"  , ashh00jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00ih03.m1);
	printf("%u\n"  , ashh00jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00ih13.m1);
	printf("%u\n"  , ashh00jh00ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00hw00.m1);
	printf("%lu\n" , ashh00jh00hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00iw03.m1);
	printf("%d\n" , ashh00jh00iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00iw29.m1);
	printf("%d\n" , ashh00jh00iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00hd00.m1);
	printf("%llu\n", ashh00jh00hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00id03.m1);
	printf("%llu\n", (unsigned long long)ashh00jh00id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00id61.m1);
	printf("%llu\n", (unsigned long long)ashh00jh00id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00jh00hs00.m1);
	printf("%u\n"  , ashh00jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
