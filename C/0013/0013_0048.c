#include <stdio.h>                                              

struct ASHH00JB00HB00 {
	unsigned short m1;
	unsigned char   :0;
	unsigned char m3;
} ashh00jb00hb00 = { 1, 2 };

struct ASHH00JB00IB03 {
	unsigned short m1;
	unsigned char   :0;
	unsigned char m3:3;
} ashh00jb00ib03 = { 1, 2 };

struct ASHH00JB00IB05 {
	unsigned short m1;
	unsigned char   :0;
	unsigned char m3:5;
} ashh00jb00ib05 = { 1, 2 };

struct ASHH00JB00HH00 {
	unsigned short m1;
	unsigned char   :0;
	unsigned short m3;
} ashh00jb00hh00 = { 1, 2 };

struct ASHH00JB00IH03 {
	unsigned short m1;
	unsigned char   :0;
	unsigned short m3:3;
} ashh00jb00ih03 = { 1, 2 };

struct ASHH00JB00IH13 {
	unsigned short m1;
	unsigned char   :0;
	unsigned short m3:13;
} ashh00jb00ih13 = { 1, 2 };

struct ASHH00JB00HW00 {
	unsigned short m1;
	unsigned char   :0;
	unsigned long m3;
} ashh00jb00hw00 = { 1, 2 };

struct ASHH00JB00IW03 {
	unsigned short m1;
	unsigned char   :0;
	unsigned long m3:3;
} ashh00jb00iw03 = { 1, 2 };

struct ASHH00JB00IW29 {
	unsigned short m1;
	unsigned char   :0;
	unsigned long m3:29;
} ashh00jb00iw29 = { 1, 2 };

struct ASHH00JB00HD00 {
	unsigned short m1;
	unsigned char   :0;
	unsigned long long m3;
} ashh00jb00hd00 = { 1, 2 };

struct ASHH00JB00ID03 {
	unsigned short m1;
	unsigned char   :0;
	unsigned long long m3:3;
} ashh00jb00id03 = { 1, 2 };

struct ASHH00JB00ID61 {
	unsigned short m1;
	unsigned char   :0;
	unsigned long long m3:61;
} ashh00jb00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00JB00HS00 {
	unsigned short m1;
	unsigned char   :0;
	struct TAGHB00 m3;
} ashh00jb00hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , ashh00jb00hb00.m1);
	printf("%u\n"  , ashh00jb00hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00ib03.m1);
	printf("%u\n"  , ashh00jb00ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00ib05.m1);
	printf("%u\n"  , ashh00jb00ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00hh00.m1);
	printf("%u\n"  , ashh00jb00hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00ih03.m1);
	printf("%u\n"  , ashh00jb00ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00ih13.m1);
	printf("%u\n"  , ashh00jb00ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00hw00.m1);
	printf("%lu\n" , ashh00jb00hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00iw03.m1);
	printf("%d\n" , ashh00jb00iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00iw29.m1);
	printf("%d\n" , ashh00jb00iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00hd00.m1);
	printf("%llu\n", ashh00jb00hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00id03.m1);
	printf("%llu\n", (unsigned long long)ashh00jb00id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00id61.m1);
	printf("%llu\n", (unsigned long long)ashh00jb00id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00jb00hs00.m1);
	printf("%u\n"  , ashh00jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
