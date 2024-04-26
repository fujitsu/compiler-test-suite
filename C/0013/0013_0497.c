#include <stdio.h>                                              

struct ASJW29JW00HB00 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned char m3;
} asjw29jw00hb00 = { 1 };

struct ASJW29JW00IB03 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned char m3:3;
} asjw29jw00ib03 = { 1 };

struct ASJW29JW00IB05 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned char m3:5;
} asjw29jw00ib05 = { 1 };

struct ASJW29JW00HH00 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned short m3;
} asjw29jw00hh00 = { 1 };

struct ASJW29JW00IH03 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned short m3:3;
} asjw29jw00ih03 = { 1 };

struct ASJW29JW00IH13 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned short m3:13;
} asjw29jw00ih13 = { 1 };

struct ASJW29JW00HW00 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3;
} asjw29jw00hw00 = { 1 };

struct ASJW29JW00IW03 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3:3;
} asjw29jw00iw03 = { 1 };

struct ASJW29JW00IW29 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long m3:29;
} asjw29jw00iw29 = { 1 };

struct ASJW29JW00HD00 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long long m3;
} asjw29jw00hd00 = { 1 };

struct ASJW29JW00ID03 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long long m3:3;
} asjw29jw00id03 = { 1 };

struct ASJW29JW00ID61 {
	unsigned long   :29;
	unsigned long   :0;
	unsigned long long m3:61;
} asjw29jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JW00HS00 {
	unsigned long   :29;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjw29jw00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw29jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jw00hw00.m3);
	printf("\n");

	printf("%d\n" , asjw29jw00iw03.m3);
	printf("\n");

	printf("%d\n" , asjw29jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
