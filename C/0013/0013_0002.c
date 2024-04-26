#include <stdio.h>                                              

struct ASHB00ID03HB00 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned char m3;
} ashb00id03hb00 = { 1, 2, 3 };

struct ASHB00ID03IB03 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned char m3:3;
} ashb00id03ib03 = { 1, 2, 3 };

struct ASHB00ID03IB05 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned char m3:5;
} ashb00id03ib05 = { 1, 2, 3 };

struct ASHB00ID03HH00 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned short m3;
} ashb00id03hh00 = { 1, 2, 3 };

struct ASHB00ID03IH03 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned short m3:3;
} ashb00id03ih03 = { 1, 2, 3 };

struct ASHB00ID03IH13 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned short m3:13;
} ashb00id03ih13 = { 1, 2, 3 };

struct ASHB00ID03HW00 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned long m3;
} ashb00id03hw00 = { 1, 2, 3 };

struct ASHB00ID03IW03 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned long m3:3;
} ashb00id03iw03 = { 1, 2, 3 };

struct ASHB00ID03IW29 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned long m3:29;
} ashb00id03iw29 = { 1, 2, 3 };

struct ASHB00ID03HD00 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned long long m3;
} ashb00id03hd00 = { 1, 2, 3 };

struct ASHB00ID03ID03 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned long long m3:3;
} ashb00id03id03 = { 1, 2, 3 };

struct ASHB00ID03ID61 {
	unsigned char m1;
	unsigned long long m2:3;
	unsigned long long m3:61;
} ashb00id03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHB00ID03HS00 {
	unsigned char m1;
	unsigned long long m2:3;
	struct TAGHB00 m3;
} ashb00id03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , ashb00id03hb00.m1);
	printf("%llu\n", (unsigned long long)ashb00id03hb00.m2);
	printf("%u\n"  , ashb00id03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03ib03.m1);
	printf("%llu\n", (unsigned long long)ashb00id03ib03.m2);
	printf("%u\n"  , ashb00id03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03ib05.m1);
	printf("%llu\n", (unsigned long long)ashb00id03ib05.m2);
	printf("%u\n"  , ashb00id03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03hh00.m1);
	printf("%llu\n", (unsigned long long)ashb00id03hh00.m2);
	printf("%u\n"  , ashb00id03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03ih03.m1);
	printf("%llu\n", (unsigned long long)ashb00id03ih03.m2);
	printf("%u\n"  , ashb00id03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03ih13.m1);
	printf("%llu\n", (unsigned long long)ashb00id03ih13.m2);
	printf("%u\n"  , ashb00id03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03hw00.m1);
	printf("%llu\n", (unsigned long long)ashb00id03hw00.m2);
	printf("%lu\n" , ashb00id03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03iw03.m1);
	printf("%llu\n", (unsigned long long)ashb00id03iw03.m2);
	printf("%d\n" , ashb00id03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03iw29.m1);
	printf("%llu\n", (unsigned long long)ashb00id03iw29.m2);
	printf("%d\n" , ashb00id03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03hd00.m1);
	printf("%llu\n", (unsigned long long)ashb00id03hd00.m2);
	printf("%llu\n", ashb00id03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03id03.m1);
	printf("%llu\n", (unsigned long long)ashb00id03id03.m2);
	printf("%llu\n", (unsigned long long)ashb00id03id03.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03id61.m1);
	printf("%llu\n", (unsigned long long)ashb00id03id61.m2);
	printf("%llu\n", (unsigned long long)ashb00id03id61.m3);
	printf("\n");

	printf("%u\n"  , ashb00id03hs00.m1);
	printf("%llu\n", (unsigned long long)ashb00id03hs00.m2);
	printf("%u\n"  , ashb00id03hs00.m3.m1);
	printf("\n");

	return 0;
}
