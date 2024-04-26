#include <stdio.h>                                              

struct ASJD00JW00HB00 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned char m3;
} asjd00jw00hb00 = { 1 };

struct ASJD00JW00IB03 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned char m3:3;
} asjd00jw00ib03 = { 1 };

struct ASJD00JW00IB05 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned char m3:5;
} asjd00jw00ib05 = { 1 };

struct ASJD00JW00HH00 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned short m3;
} asjd00jw00hh00 = { 1 };

struct ASJD00JW00IH03 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned short m3:3;
} asjd00jw00ih03 = { 1 };

struct ASJD00JW00IH13 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned short m3:13;
} asjd00jw00ih13 = { 1 };

struct ASJD00JW00HW00 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned long m3;
} asjd00jw00hw00 = { 1 };

struct ASJD00JW00IW03 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned long m3:3;
} asjd00jw00iw03 = { 1 };

struct ASJD00JW00IW29 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned long m3:29;
} asjd00jw00iw29 = { 1 };

struct ASJD00JW00HD00 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned long long m3;
} asjd00jw00hd00 = { 1 };

struct ASJD00JW00ID03 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned long long m3:3;
} asjd00jw00id03 = { 1 };

struct ASJD00JW00ID61 {
	unsigned long long   :0;
	unsigned long   :0;
	unsigned long long m3:61;
} asjd00jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD00JW00HS00 {
	unsigned long long   :0;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjd00jw00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd00jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd00jw00hw00.m3);
	printf("\n");

	printf("%d\n" , asjd00jw00iw03.m3);
	printf("\n");

	printf("%d\n" , asjd00jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjd00jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
