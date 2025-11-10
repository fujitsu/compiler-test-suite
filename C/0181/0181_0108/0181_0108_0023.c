                                                          
#include <stdio.h>                                              

struct ASHD00IH03HB00 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned char m3;
} ashd00ih03hb00 = { 1, 2, 3 };

struct ASHD00IH03IB03 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned char m3:3;
} ashd00ih03ib03 = { 1, 2, 3 };

struct ASHD00IH03IB05 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned char m3:5;
} ashd00ih03ib05 = { 1, 2, 3 };

struct ASHD00IH03HH00 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned short m3;
} ashd00ih03hh00 = { 1, 2, 3 };

struct ASHD00IH03IH03 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned short m3:3;
} ashd00ih03ih03 = { 1, 2, 3 };

struct ASHD00IH03IH13 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned short m3:13;
} ashd00ih03ih13 = { 1, 2, 3 };

struct ASHD00IH03HW00 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned long m3;
} ashd00ih03hw00 = { 1, 2, 3 };

struct ASHD00IH03IW03 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned long m3:3;
} ashd00ih03iw03 = { 1, 2, 3 };

struct ASHD00IH03IW29 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned long m3:29;
} ashd00ih03iw29 = { 1, 2, 3 };

struct ASHD00IH03HD00 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned long long m3;
} ashd00ih03hd00 = { 1, 2, 3 };

struct ASHD00IH03ID03 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned long long m3:3;
} ashd00ih03id03 = { 1, 2, 3 };

struct ASHD00IH03ID61 {
	unsigned long long m1;
	unsigned short m2:3;
	unsigned long long m3:61;
} ashd00ih03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00IH03HS00 {
	unsigned long long m1;
	unsigned short m2:3;
	struct TAGHB00 m3;
} ashd00ih03hs00 = { 1, 2, { 3 } };

int lto_sub_24() {

	printf("%llu\n", ashd00ih03hb00.m1);
	printf("%u\n"  , ashd00ih03hb00.m2);
	printf("%u\n"  , ashd00ih03hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03ib03.m1);
	printf("%u\n"  , ashd00ih03ib03.m2);
	printf("%u\n"  , ashd00ih03ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03ib05.m1);
	printf("%u\n"  , ashd00ih03ib05.m2);
	printf("%u\n"  , ashd00ih03ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03hh00.m1);
	printf("%u\n"  , ashd00ih03hh00.m2);
	printf("%u\n"  , ashd00ih03hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03ih03.m1);
	printf("%u\n"  , ashd00ih03ih03.m2);
	printf("%u\n"  , ashd00ih03ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03ih13.m1);
	printf("%u\n"  , ashd00ih03ih13.m2);
	printf("%u\n"  , ashd00ih03ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03hw00.m1);
	printf("%u\n"  , ashd00ih03hw00.m2);
	printf("%lu\n" , ashd00ih03hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03iw03.m1);
	printf("%u\n"  , ashd00ih03iw03.m2);
	printf("%lu\n" , ashd00ih03iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03iw29.m1);
	printf("%u\n"  , ashd00ih03iw29.m2);
	printf("%lu\n" , ashd00ih03iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03hd00.m1);
	printf("%u\n"  , ashd00ih03hd00.m2);
	printf("%llu\n", ashd00ih03hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03id03.m1);
	printf("%u\n"  , ashd00ih03id03.m2);
	printf("%llu\n", (unsigned long long)ashd00ih03id03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03id61.m1);
	printf("%u\n"  , ashd00ih03id61.m2);
	printf("%llu\n", (unsigned long long)ashd00ih03id61.m3);
	printf("\n");

	printf("%llu\n", ashd00ih03hs00.m1);
	printf("%u\n"  , ashd00ih03hs00.m2);
	printf("%u\n"  , ashd00ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
