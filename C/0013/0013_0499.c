                                                             
#include <stdio.h>                                              

struct ASJW29JW29HB00 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned char m3;
} asjw29jw29hb00 = { 1 };

struct ASJW29JW29IB03 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned char m3:3;
} asjw29jw29ib03 = { 1 };

struct ASJW29JW29IB05 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned char m3:5;
} asjw29jw29ib05 = { 1 };

struct ASJW29JW29HH00 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned short m3;
} asjw29jw29hh00 = { 1 };

struct ASJW29JW29IH03 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned short m3:3;
} asjw29jw29ih03 = { 1 };

struct ASJW29JW29IH13 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned short m3:13;
} asjw29jw29ih13 = { 1 };

struct ASJW29JW29HW00 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned long m3;
} asjw29jw29hw00 = { 1 };

struct ASJW29JW29IW03 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned long m3:3;
} asjw29jw29iw03 = { 1 };

struct ASJW29JW29IW29 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned long m3:29;
} asjw29jw29iw29 = { 1 };

struct ASJW29JW29HD00 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned long long m3;
} asjw29jw29hd00 = { 1 };

struct ASJW29JW29ID03 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned long long m3:3;
} asjw29jw29id03 = { 1 };

struct ASJW29JW29ID61 {
	unsigned long   :29;
	unsigned long   :29;
	unsigned long long m3:61;
} asjw29jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JW29HS00 {
	unsigned long   :29;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjw29jw29hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw29jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jw29hw00.m3);
	printf("\n");

	printf("%d\n" , asjw29jw29iw03.m3);
	printf("\n");

	printf("%d\n" , asjw29jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
