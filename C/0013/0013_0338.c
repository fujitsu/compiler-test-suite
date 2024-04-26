#include <stdio.h>                                              

struct ASJD00JW03HB00 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned char m3;
} asjd00jw03hb00 = { 1 };

struct ASJD00JW03IB03 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned char m3:3;
} asjd00jw03ib03 = { 1 };

struct ASJD00JW03IB05 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned char m3:5;
} asjd00jw03ib05 = { 1 };

struct ASJD00JW03HH00 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned short m3;
} asjd00jw03hh00 = { 1 };

struct ASJD00JW03IH03 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned short m3:3;
} asjd00jw03ih03 = { 1 };

struct ASJD00JW03IH13 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned short m3:13;
} asjd00jw03ih13 = { 1 };

struct ASJD00JW03HW00 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned long m3;
} asjd00jw03hw00 = { 1 };

struct ASJD00JW03IW03 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned long m3:3;
} asjd00jw03iw03 = { 1 };

struct ASJD00JW03IW29 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned long m3:29;
} asjd00jw03iw29 = { 1 };

struct ASJD00JW03HD00 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned long long m3;
} asjd00jw03hd00 = { 1 };

struct ASJD00JW03ID03 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned long long m3:3;
} asjd00jw03id03 = { 1 };

struct ASJD00JW03ID61 {
	unsigned long long   :0;
	unsigned long   :3;
	unsigned long long m3:61;
} asjd00jw03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD00JW03HS00 {
	unsigned long long   :0;
	unsigned long   :3;
	struct TAGHB00 m3;
} asjd00jw03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd00jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd00jw03hw00.m3);
	printf("\n");

	printf("%d\n" , asjd00jw03iw03.m3);
	printf("\n");

	printf("%d\n" , asjd00jw03iw29.m3);
	printf("\n");

	printf("%llu\n", asjd00jw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00jw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd00jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
