#include <stdio.h>                                              

struct ASHD00IB03HB00 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned char m3;
} ashd00ib03hb00 = { 1, 2, 3 };

struct ASHD00IB03IB03 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned char m3:3;
} ashd00ib03ib03 = { 1, 2, 3 };

struct ASHD00IB03IB05 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned char m3:5;
} ashd00ib03ib05 = { 1, 2, 3 };

struct ASHD00IB03HH00 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned short m3;
} ashd00ib03hh00 = { 1, 2, 3 };

struct ASHD00IB03IH03 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned short m3:3;
} ashd00ib03ih03 = { 1, 2, 3 };

struct ASHD00IB03IH13 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned short m3:13;
} ashd00ib03ih13 = { 1, 2, 3 };

struct ASHD00IB03HW00 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned long m3;
} ashd00ib03hw00 = { 1, 2, 3 };

struct ASHD00IB03IW03 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned long m3:3;
} ashd00ib03iw03 = { 1, 2, 3 };

struct ASHD00IB03IW29 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned long m3:29;
} ashd00ib03iw29 = { 1, 2, 3 };

struct ASHD00IB03HD00 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned long long m3;
} ashd00ib03hd00 = { 1, 2, 3 };

struct ASHD00IB03ID03 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned long long m3:3;
} ashd00ib03id03 = { 1, 2, 3 };

struct ASHD00IB03ID61 {
	unsigned long long m1;
	unsigned char m2:3;
	unsigned long long m3:61;
} ashd00ib03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00IB03HS00 {
	unsigned long long m1;
	unsigned char m2:3;
	struct TAGHB00 m3;
} ashd00ib03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%llu\n", ashd00ib03hb00.m1);
	printf("%u\n"  , ashd00ib03hb00.m2);
	printf("%u\n"  , ashd00ib03hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03ib03.m1);
	printf("%u\n"  , ashd00ib03ib03.m2);
	printf("%u\n"  , ashd00ib03ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03ib05.m1);
	printf("%u\n"  , ashd00ib03ib05.m2);
	printf("%u\n"  , ashd00ib03ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03hh00.m1);
	printf("%u\n"  , ashd00ib03hh00.m2);
	printf("%u\n"  , ashd00ib03hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03ih03.m1);
	printf("%u\n"  , ashd00ib03ih03.m2);
	printf("%u\n"  , ashd00ib03ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03ih13.m1);
	printf("%u\n"  , ashd00ib03ih13.m2);
	printf("%u\n"  , ashd00ib03ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03hw00.m1);
	printf("%u\n"  , ashd00ib03hw00.m2);
	printf("%lu\n" , ashd00ib03hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03iw03.m1);
	printf("%u\n"  , ashd00ib03iw03.m2);
	printf("%d\n" , ashd00ib03iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03iw29.m1);
	printf("%u\n"  , ashd00ib03iw29.m2);
	printf("%d\n" , ashd00ib03iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03hd00.m1);
	printf("%u\n"  , ashd00ib03hd00.m2);
	printf("%llu\n", ashd00ib03hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03id03.m1);
	printf("%u\n"  , ashd00ib03id03.m2);
	printf("%llu\n", (unsigned long long)ashd00ib03id03.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03id61.m1);
	printf("%u\n"  , ashd00ib03id61.m2);
	printf("%llu\n", (unsigned long long)ashd00ib03id61.m3);
	printf("\n");

	printf("%llu\n", ashd00ib03hs00.m1);
	printf("%u\n"  , ashd00ib03hs00.m2);
	printf("%u\n"  , ashd00ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
