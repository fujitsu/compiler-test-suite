#include <stdio.h>                                              

struct ASJD00ID03HB00 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned char m3;
} asjd00id03hb00 = { 1, 2 };

struct ASJD00ID03IB03 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned char m3:3;
} asjd00id03ib03 = { 1, 2 };

struct ASJD00ID03IB05 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned char m3:5;
} asjd00id03ib05 = { 1, 2 };

struct ASJD00ID03HH00 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned short m3;
} asjd00id03hh00 = { 1, 2 };

struct ASJD00ID03IH03 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned short m3:3;
} asjd00id03ih03 = { 1, 2 };

struct ASJD00ID03IH13 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned short m3:13;
} asjd00id03ih13 = { 1, 2 };

struct ASJD00ID03HW00 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned long m3;
} asjd00id03hw00 = { 1, 2 };

struct ASJD00ID03IW03 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned long m3:3;
} asjd00id03iw03 = { 1, 2 };

struct ASJD00ID03IW29 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned long m3:29;
} asjd00id03iw29 = { 1, 2 };

struct ASJD00ID03HD00 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned long long m3;
} asjd00id03hd00 = { 1, 2 };

struct ASJD00ID03ID03 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned long long m3:3;
} asjd00id03id03 = { 1, 2 };

struct ASJD00ID03ID61 {
	unsigned long long   :0;
	unsigned long long m2:3;
	unsigned long long m3:61;
} asjd00id03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD00ID03HS00 {
	unsigned long long   :0;
	unsigned long long m2:3;
	struct TAGHB00 m3;
} asjd00id03hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asjd00id03hb00.m2);
	printf("%u\n"  , asjd00id03hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03ib03.m2);
	printf("%u\n"  , asjd00id03ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03ib05.m2);
	printf("%u\n"  , asjd00id03ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03hh00.m2);
	printf("%u\n"  , asjd00id03hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03ih03.m2);
	printf("%u\n"  , asjd00id03ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03ih13.m2);
	printf("%u\n"  , asjd00id03ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03hw00.m2);
	printf("%lu\n" , asjd00id03hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03iw03.m2);
	printf("%d\n" , asjd00id03iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03iw29.m2);
	printf("%d\n" , asjd00id03iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03hd00.m2);
	printf("%llu\n", asjd00id03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03id03.m2);
	printf("%llu\n", (unsigned long long)asjd00id03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03id61.m2);
	printf("%llu\n", (unsigned long long)asjd00id03id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00id03hs00.m2);
	printf("%u\n"  , asjd00id03hs00.m3.m1);
	printf("\n");

	return 0;
}
