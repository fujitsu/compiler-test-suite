                                                             
#include <stdio.h>                                              

struct ASHD00IH13HB00 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned char m3;
} ashd00ih13hb00 = { 1, 2, 3 };

struct ASHD00IH13IB03 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned char m3:3;
} ashd00ih13ib03 = { 1, 2, 3 };

struct ASHD00IH13IB05 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned char m3:5;
} ashd00ih13ib05 = { 1, 2, 3 };

struct ASHD00IH13HH00 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned short m3;
} ashd00ih13hh00 = { 1, 2, 3 };

struct ASHD00IH13IH03 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned short m3:3;
} ashd00ih13ih03 = { 1, 2, 3 };

struct ASHD00IH13IH13 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned short m3:13;
} ashd00ih13ih13 = { 1, 2, 3 };

struct ASHD00IH13HW00 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned long m3;
} ashd00ih13hw00 = { 1, 2, 3 };

struct ASHD00IH13IW03 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned long m3:3;
} ashd00ih13iw03 = { 1, 2, 3 };

struct ASHD00IH13IW29 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned long m3:29;
} ashd00ih13iw29 = { 1, 2, 3 };

struct ASHD00IH13HD00 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned long long m3;
} ashd00ih13hd00 = { 1, 2, 3 };

struct ASHD00IH13ID03 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned long long m3:3;
} ashd00ih13id03 = { 1, 2, 3 };

struct ASHD00IH13ID61 {
	unsigned long long m1;
	unsigned short m2:13;
	unsigned long long m3:61;
} ashd00ih13id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHD00IH13HS00 {
	unsigned long long m1;
	unsigned short m2:13;
	struct TAGHB00 m3;
} ashd00ih13hs00 = { 1, 2, { 3 } };

int lto_sub_25() {

	printf("%llu\n", ashd00ih13hb00.m1);
	printf("%u\n"  , ashd00ih13hb00.m2);
	printf("%u\n"  , ashd00ih13hb00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13ib03.m1);
	printf("%u\n"  , ashd00ih13ib03.m2);
	printf("%u\n"  , ashd00ih13ib03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13ib05.m1);
	printf("%u\n"  , ashd00ih13ib05.m2);
	printf("%u\n"  , ashd00ih13ib05.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13hh00.m1);
	printf("%u\n"  , ashd00ih13hh00.m2);
	printf("%u\n"  , ashd00ih13hh00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13ih03.m1);
	printf("%u\n"  , ashd00ih13ih03.m2);
	printf("%u\n"  , ashd00ih13ih03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13ih13.m1);
	printf("%u\n"  , ashd00ih13ih13.m2);
	printf("%u\n"  , ashd00ih13ih13.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13hw00.m1);
	printf("%u\n"  , ashd00ih13hw00.m2);
	printf("%lu\n" , ashd00ih13hw00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13iw03.m1);
	printf("%u\n"  , ashd00ih13iw03.m2);
	printf("%lu\n" , ashd00ih13iw03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13iw29.m1);
	printf("%u\n"  , ashd00ih13iw29.m2);
	printf("%lu\n" , ashd00ih13iw29.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13hd00.m1);
	printf("%u\n"  , ashd00ih13hd00.m2);
	printf("%llu\n", ashd00ih13hd00.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13id03.m1);
	printf("%u\n"  , ashd00ih13id03.m2);
	printf("%llu\n", (unsigned long long)ashd00ih13id03.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13id61.m1);
	printf("%u\n"  , ashd00ih13id61.m2);
	printf("%llu\n", (unsigned long long)ashd00ih13id61.m3);
	printf("\n");

	printf("%llu\n", ashd00ih13hs00.m1);
	printf("%u\n"  , ashd00ih13hs00.m2);
	printf("%u\n"  , ashd00ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
