#include <stdio.h>                                              

struct ASHH00IB03HB00 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned char m3;
} ashh00ib03hb00 = { 1, 2, 3 };

struct ASHH00IB03IB03 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned char m3:3;
} ashh00ib03ib03 = { 1, 2, 3 };

struct ASHH00IB03IB05 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned char m3:5;
} ashh00ib03ib05 = { 1, 2, 3 };

struct ASHH00IB03HH00 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned short m3;
} ashh00ib03hh00 = { 1, 2, 3 };

struct ASHH00IB03IH03 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned short m3:3;
} ashh00ib03ih03 = { 1, 2, 3 };

struct ASHH00IB03IH13 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned short m3:13;
} ashh00ib03ih13 = { 1, 2, 3 };

struct ASHH00IB03HW00 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned long m3;
} ashh00ib03hw00 = { 1, 2, 3 };

struct ASHH00IB03IW03 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned long m3:3;
} ashh00ib03iw03 = { 1, 2, 3 };

struct ASHH00IB03IW29 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned long m3:29;
} ashh00ib03iw29 = { 1, 2, 3 };

struct ASHH00IB03HD00 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned long long m3;
} ashh00ib03hd00 = { 1, 2, 3 };

struct ASHH00IB03ID03 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned long long m3:3;
} ashh00ib03id03 = { 1, 2, 3 };

struct ASHH00IB03ID61 {
	unsigned short m1;
	unsigned char m2:3;
	unsigned long long m3:61;
} ashh00ib03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00IB03HS00 {
	unsigned short m1;
	unsigned char m2:3;
	struct TAGHB00 m3;
} ashh00ib03hs00 = { 1, 2, { 3 } };

int lto_sub_40() {

	printf("%u\n"  , ashh00ib03hb00.m1);
	printf("%u\n"  , ashh00ib03hb00.m2);
	printf("%u\n"  , ashh00ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03ib03.m1);
	printf("%u\n"  , ashh00ib03ib03.m2);
	printf("%u\n"  , ashh00ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03ib05.m1);
	printf("%u\n"  , ashh00ib03ib05.m2);
	printf("%u\n"  , ashh00ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03hh00.m1);
	printf("%u\n"  , ashh00ib03hh00.m2);
	printf("%u\n"  , ashh00ib03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03ih03.m1);
	printf("%u\n"  , ashh00ib03ih03.m2);
	printf("%u\n"  , ashh00ib03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03ih13.m1);
	printf("%u\n"  , ashh00ib03ih13.m2);
	printf("%u\n"  , ashh00ib03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03hw00.m1);
	printf("%u\n"  , ashh00ib03hw00.m2);
	printf("%lu\n" , ashh00ib03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03iw03.m1);
	printf("%u\n"  , ashh00ib03iw03.m2);
	printf("%lu\n" , ashh00ib03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03iw29.m1);
	printf("%u\n"  , ashh00ib03iw29.m2);
	printf("%lu\n" , ashh00ib03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03hd00.m1);
	printf("%u\n"  , ashh00ib03hd00.m2);
	printf("%llu\n", ashh00ib03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03id03.m1);
	printf("%u\n"  , ashh00ib03id03.m2);
	printf("%llu\n", (unsigned long long)ashh00ib03id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03id61.m1);
	printf("%u\n"  , ashh00ib03id61.m2);
	printf("%llu\n", (unsigned long long)ashh00ib03id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00ib03hs00.m1);
	printf("%u\n"  , ashh00ib03hs00.m2);
	printf("%u\n"  , ashh00ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
