#include <stdio.h>                                              

struct ASHW00JB00HB00 {
	unsigned long m1;
	unsigned char   :0;
	unsigned char m3;
} ashw00jb00hb00 = { 1, 2 };

struct ASHW00JB00IB03 {
	unsigned long m1;
	unsigned char   :0;
	unsigned char m3:3;
} ashw00jb00ib03 = { 1, 2 };

struct ASHW00JB00IB05 {
	unsigned long m1;
	unsigned char   :0;
	unsigned char m3:5;
} ashw00jb00ib05 = { 1, 2 };

struct ASHW00JB00HH00 {
	unsigned long m1;
	unsigned char   :0;
	unsigned short m3;
} ashw00jb00hh00 = { 1, 2 };

struct ASHW00JB00IH03 {
	unsigned long m1;
	unsigned char   :0;
	unsigned short m3:3;
} ashw00jb00ih03 = { 1, 2 };

struct ASHW00JB00IH13 {
	unsigned long m1;
	unsigned char   :0;
	unsigned short m3:13;
} ashw00jb00ih13 = { 1, 2 };

struct ASHW00JB00HW00 {
	unsigned long m1;
	unsigned char   :0;
	unsigned long m3;
} ashw00jb00hw00 = { 1, 2 };

struct ASHW00JB00IW03 {
	unsigned long m1;
	unsigned char   :0;
	unsigned long m3:3;
} ashw00jb00iw03 = { 1, 2 };

struct ASHW00JB00IW29 {
	unsigned long m1;
	unsigned char   :0;
	unsigned long m3:29;
} ashw00jb00iw29 = { 1, 2 };

struct ASHW00JB00HD00 {
	unsigned long m1;
	unsigned char   :0;
	unsigned long long m3;
} ashw00jb00hd00 = { 1, 2 };

struct ASHW00JB00ID03 {
	unsigned long m1;
	unsigned char   :0;
	unsigned long long m3:3;
} ashw00jb00id03 = { 1, 2 };

struct ASHW00JB00ID61 {
	unsigned long m1;
	unsigned char   :0;
	unsigned long long m3:61;
} ashw00jb00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00JB00HS00 {
	unsigned long m1;
	unsigned char   :0;
	struct TAGHB00 m3;
} ashw00jb00hs00 = { 1, { 2 } };

int main() {

	printf("%lu\n" , ashw00jb00hb00.m1);
	printf("%u\n"  , ashw00jb00hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00ib03.m1);
	printf("%u\n"  , ashw00jb00ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00ib05.m1);
	printf("%u\n"  , ashw00jb00ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00hh00.m1);
	printf("%u\n"  , ashw00jb00hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00ih03.m1);
	printf("%u\n"  , ashw00jb00ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00ih13.m1);
	printf("%u\n"  , ashw00jb00ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00hw00.m1);
	printf("%lu\n" , ashw00jb00hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00iw03.m1);
	printf("%d\n" , ashw00jb00iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00iw29.m1);
	printf("%d\n" , ashw00jb00iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00hd00.m1);
	printf("%llu\n", ashw00jb00hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00id03.m1);
	printf("%llu\n", (unsigned long long)ashw00jb00id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00id61.m1);
	printf("%llu\n", (unsigned long long)ashw00jb00id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00jb00hs00.m1);
	printf("%u\n"  , ashw00jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
