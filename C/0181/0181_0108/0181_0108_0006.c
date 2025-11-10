
#include <stdio.h>                                              

struct ASHB00IW29HB00 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned char m3;
} ashb00iw29hb00 = { 1, 2, 3 };

struct ASHB00IW29IB03 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned char m3:3;
} ashb00iw29ib03 = { 1, 2, 3 };

struct ASHB00IW29IB05 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned char m3:5;
} ashb00iw29ib05 = { 1, 2, 3 };

struct ASHB00IW29HH00 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned short m3;
} ashb00iw29hh00 = { 1, 2, 3 };

struct ASHB00IW29IH03 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned short m3:3;
} ashb00iw29ih03 = { 1, 2, 3 };

struct ASHB00IW29IH13 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned short m3:13;
} ashb00iw29ih13 = { 1, 2, 3 };

struct ASHB00IW29HW00 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned long m3;
} ashb00iw29hw00 = { 1, 2, 3 };

struct ASHB00IW29IW03 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned long m3:3;
} ashb00iw29iw03 = { 1, 2, 3 };

struct ASHB00IW29IW29 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned long m3:29;
} ashb00iw29iw29 = { 1, 2, 3 };

struct ASHB00IW29HD00 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned long long m3;
} ashb00iw29hd00 = { 1, 2, 3 };

struct ASHB00IW29ID03 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned long long m3:3;
} ashb00iw29id03 = { 1, 2, 3 };

struct ASHB00IW29ID61 {
	unsigned char m1;
	unsigned long m2:29;
	unsigned long long m3:61;
} ashb00iw29id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHB00IW29HS00 {
	unsigned char m1;
	unsigned long m2:29;
	struct TAGHB00 m3;
} ashb00iw29hs00 = { 1, 2, { 3 } };

int lto_sub_7() {

	printf("%u\n"  , ashb00iw29hb00.m1);
	printf("%lu\n" , ashb00iw29hb00.m2);
	printf("%u\n"  , ashb00iw29hb00.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29ib03.m1);
	printf("%lu\n" , ashb00iw29ib03.m2);
	printf("%u\n"  , ashb00iw29ib03.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29ib05.m1);
	printf("%lu\n" , ashb00iw29ib05.m2);
	printf("%u\n"  , ashb00iw29ib05.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29hh00.m1);
	printf("%lu\n" , ashb00iw29hh00.m2);
	printf("%u\n"  , ashb00iw29hh00.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29ih03.m1);
	printf("%lu\n" , ashb00iw29ih03.m2);
	printf("%u\n"  , ashb00iw29ih03.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29ih13.m1);
	printf("%lu\n" , ashb00iw29ih13.m2);
	printf("%u\n"  , ashb00iw29ih13.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29hw00.m1);
	printf("%lu\n" , ashb00iw29hw00.m2);
	printf("%lu\n" , ashb00iw29hw00.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29iw03.m1);
	printf("%lu\n" , ashb00iw29iw03.m2);
	printf("%lu\n" , ashb00iw29iw03.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29iw29.m1);
	printf("%lu\n" , ashb00iw29iw29.m2);
	printf("%lu\n" , ashb00iw29iw29.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29hd00.m1);
	printf("%lu\n" , ashb00iw29hd00.m2);
	printf("%llu\n", ashb00iw29hd00.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29id03.m1);
	printf("%lu\n" , ashb00iw29id03.m2);
	printf("%llu\n", (unsigned long long)ashb00iw29id03.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29id61.m1);
	printf("%lu\n" , ashb00iw29id61.m2);
	printf("%llu\n", (unsigned long long)ashb00iw29id61.m3);
	printf("\n");

	printf("%u\n"  , ashb00iw29hs00.m1);
	printf("%lu\n" , ashb00iw29hs00.m2);
	printf("%u\n"  , ashb00iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
