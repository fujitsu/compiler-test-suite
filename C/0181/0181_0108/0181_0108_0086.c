                                                           
#include <stdio.h>                                              

struct ASHW00IW29HB00 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned char m3;
} ashw00iw29hb00 = { 1, 2, 3 };

struct ASHW00IW29IB03 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned char m3:3;
} ashw00iw29ib03 = { 1, 2, 3 };

struct ASHW00IW29IB05 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned char m3:5;
} ashw00iw29ib05 = { 1, 2, 3 };

struct ASHW00IW29HH00 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned short m3;
} ashw00iw29hh00 = { 1, 2, 3 };

struct ASHW00IW29IH03 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned short m3:3;
} ashw00iw29ih03 = { 1, 2, 3 };

struct ASHW00IW29IH13 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned short m3:13;
} ashw00iw29ih13 = { 1, 2, 3 };

struct ASHW00IW29HW00 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3;
} ashw00iw29hw00 = { 1, 2, 3 };

struct ASHW00IW29IW03 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3:3;
} ashw00iw29iw03 = { 1, 2, 3 };

struct ASHW00IW29IW29 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long m3:29;
} ashw00iw29iw29 = { 1, 2, 3 };

struct ASHW00IW29HD00 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long long m3;
} ashw00iw29hd00 = { 1, 2, 3 };

struct ASHW00IW29ID03 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long long m3:3;
} ashw00iw29id03 = { 1, 2, 3 };

struct ASHW00IW29ID61 {
	unsigned long m1;
	unsigned long m2:29;
	unsigned long long m3:61;
} ashw00iw29id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00IW29HS00 {
	unsigned long m1;
	unsigned long m2:29;
	struct TAGHB00 m3;
} ashw00iw29hs00 = { 1, 2, { 3 } };

int lto_sub_87() {

	printf("%lu\n" , ashw00iw29hb00.m1);
	printf("%lu\n" , ashw00iw29hb00.m2);
	printf("%u\n"  , ashw00iw29hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29ib03.m1);
	printf("%lu\n" , ashw00iw29ib03.m2);
	printf("%u\n"  , ashw00iw29ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29ib05.m1);
	printf("%lu\n" , ashw00iw29ib05.m2);
	printf("%u\n"  , ashw00iw29ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29hh00.m1);
	printf("%lu\n" , ashw00iw29hh00.m2);
	printf("%u\n"  , ashw00iw29hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29ih03.m1);
	printf("%lu\n" , ashw00iw29ih03.m2);
	printf("%u\n"  , ashw00iw29ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29ih13.m1);
	printf("%lu\n" , ashw00iw29ih13.m2);
	printf("%u\n"  , ashw00iw29ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29hw00.m1);
	printf("%lu\n" , ashw00iw29hw00.m2);
	printf("%lu\n" , ashw00iw29hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29iw03.m1);
	printf("%lu\n" , ashw00iw29iw03.m2);
	printf("%lu\n" , ashw00iw29iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29iw29.m1);
	printf("%lu\n" , ashw00iw29iw29.m2);
	printf("%lu\n" , ashw00iw29iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29hd00.m1);
	printf("%lu\n" , ashw00iw29hd00.m2);
	printf("%llu\n", ashw00iw29hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29id03.m1);
	printf("%lu\n" , ashw00iw29id03.m2);
	printf("%llu\n", (unsigned long long)ashw00iw29id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29id61.m1);
	printf("%lu\n" , ashw00iw29id61.m2);
	printf("%llu\n", (unsigned long long)ashw00iw29id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00iw29hs00.m1);
	printf("%lu\n" , ashw00iw29hs00.m2);
	printf("%u\n"  , ashw00iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
