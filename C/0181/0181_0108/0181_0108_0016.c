                                                           
#include <stdio.h>                                              

struct ASHB00JW00HB00 {
	unsigned char m1;
	unsigned long   :0;
	unsigned char m3;
} ashb00jw00hb00 = { 1, 2 };

struct ASHB00JW00IB03 {
	unsigned char m1;
	unsigned long   :0;
	unsigned char m3:3;
} ashb00jw00ib03 = { 1, 2 };

struct ASHB00JW00IB05 {
	unsigned char m1;
	unsigned long   :0;
	unsigned char m3:5;
} ashb00jw00ib05 = { 1, 2 };

struct ASHB00JW00HH00 {
	unsigned char m1;
	unsigned long   :0;
	unsigned short m3;
} ashb00jw00hh00 = { 1, 2 };

struct ASHB00JW00IH03 {
	unsigned char m1;
	unsigned long   :0;
	unsigned short m3:3;
} ashb00jw00ih03 = { 1, 2 };

struct ASHB00JW00IH13 {
	unsigned char m1;
	unsigned long   :0;
	unsigned short m3:13;
} ashb00jw00ih13 = { 1, 2 };

struct ASHB00JW00HW00 {
	unsigned char m1;
	unsigned long   :0;
	unsigned long m3;
} ashb00jw00hw00 = { 1, 2 };

struct ASHB00JW00IW03 {
	unsigned char m1;
	unsigned long   :0;
	unsigned long m3:3;
} ashb00jw00iw03 = { 1, 2 };

struct ASHB00JW00IW29 {
	unsigned char m1;
	unsigned long   :0;
	unsigned long m3:29;
} ashb00jw00iw29 = { 1, 2 };

struct ASHB00JW00HD00 {
	unsigned char m1;
	unsigned long   :0;
	unsigned long long m3;
} ashb00jw00hd00 = { 1, 2 };

struct ASHB00JW00ID03 {
	unsigned char m1;
	unsigned long   :0;
	unsigned long long m3:3;
} ashb00jw00id03 = { 1, 2 };

struct ASHB00JW00ID61 {
	unsigned char m1;
	unsigned long   :0;
	unsigned long long m3:61;
} ashb00jw00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHB00JW00HS00 {
	unsigned char m1;
	unsigned long   :0;
	struct TAGHB00 m3;
} ashb00jw00hs00 = { 1, { 2 } };

int lto_sub_17() {

	printf("%u\n"  , ashb00jw00hb00.m1);
	printf("%u\n"  , ashb00jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00ib03.m1);
	printf("%u\n"  , ashb00jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00ib05.m1);
	printf("%u\n"  , ashb00jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00hh00.m1);
	printf("%u\n"  , ashb00jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00ih03.m1);
	printf("%u\n"  , ashb00jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00ih13.m1);
	printf("%u\n"  , ashb00jw00ih13.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00hw00.m1);
	printf("%lu\n" , ashb00jw00hw00.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00iw03.m1);
	printf("%lu\n" , ashb00jw00iw03.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00iw29.m1);
	printf("%lu\n" , ashb00jw00iw29.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00hd00.m1);
	printf("%llu\n", ashb00jw00hd00.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00id03.m1);
	printf("%llu\n", (unsigned long long)ashb00jw00id03.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00id61.m1);
	printf("%llu\n", (unsigned long long)ashb00jw00id61.m3);
	printf("\n");

	printf("%u\n"  , ashb00jw00hs00.m1);
	printf("%u\n"  , ashb00jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
