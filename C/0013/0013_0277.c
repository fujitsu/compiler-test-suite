#include <stdio.h>                                              

struct ASJB00JW00HB00 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned char m3;
} asjb00jw00hb00 = { 1 };

struct ASJB00JW00IB03 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned char m3:3;
} asjb00jw00ib03 = { 1 };

struct ASJB00JW00IB05 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned char m3:5;
} asjb00jw00ib05 = { 1 };

struct ASJB00JW00HH00 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned short m3;
} asjb00jw00hh00 = { 1 };

struct ASJB00JW00IH03 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned short m3:3;
} asjb00jw00ih03 = { 1 };

struct ASJB00JW00IH13 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned short m3:13;
} asjb00jw00ih13 = { 1 };

struct ASJB00JW00HW00 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned long m3;
} asjb00jw00hw00 = { 1 };

struct ASJB00JW00IW03 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned long m3:3;
} asjb00jw00iw03 = { 1 };

struct ASJB00JW00IW29 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned long m3:29;
} asjb00jw00iw29 = { 1 };

struct ASJB00JW00HD00 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned long long m3;
} asjb00jw00hd00 = { 1 };

struct ASJB00JW00ID03 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned long long m3:3;
} asjb00jw00id03 = { 1 };

struct ASJB00JW00ID61 {
	unsigned char   :0;
	unsigned long   :0;
	unsigned long long m3:61;
} asjb00jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JW00HS00 {
	unsigned char   :0;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjb00jw00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb00jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw00hw00.m3);
	printf("\n");

	printf("%d\n" , asjb00jw00iw03.m3);
	printf("\n");

	printf("%d\n" , asjb00jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
