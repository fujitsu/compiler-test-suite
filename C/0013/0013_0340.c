#include <stdio.h>                                              

struct ASJD03IB03HB00 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned char m3;
} asjd03ib03hb00 = { 1, 2 };

struct ASJD03IB03IB03 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned char m3:3;
} asjd03ib03ib03 = { 1, 2 };

struct ASJD03IB03IB05 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned char m3:5;
} asjd03ib03ib05 = { 1, 2 };

struct ASJD03IB03HH00 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned short m3;
} asjd03ib03hh00 = { 1, 2 };

struct ASJD03IB03IH03 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned short m3:3;
} asjd03ib03ih03 = { 1, 2 };

struct ASJD03IB03IH13 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned short m3:13;
} asjd03ib03ih13 = { 1, 2 };

struct ASJD03IB03HW00 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned long m3;
} asjd03ib03hw00 = { 1, 2 };

struct ASJD03IB03IW03 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned long m3:3;
} asjd03ib03iw03 = { 1, 2 };

struct ASJD03IB03IW29 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned long m3:29;
} asjd03ib03iw29 = { 1, 2 };

struct ASJD03IB03HD00 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned long long m3;
} asjd03ib03hd00 = { 1, 2 };

struct ASJD03IB03ID03 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned long long m3:3;
} asjd03ib03id03 = { 1, 2 };

struct ASJD03IB03ID61 {
	unsigned long long   :3;
	unsigned char m2:3;
	unsigned long long m3:61;
} asjd03ib03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03IB03HS00 {
	unsigned long long   :3;
	unsigned char m2:3;
	struct TAGHB00 m3;
} asjd03ib03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjd03ib03hb00.m2);
	printf("%u\n"  , asjd03ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03ib03.m2);
	printf("%u\n"  , asjd03ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03ib05.m2);
	printf("%u\n"  , asjd03ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03hh00.m2);
	printf("%u\n"  , asjd03ib03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03ih03.m2);
	printf("%u\n"  , asjd03ib03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03ih13.m2);
	printf("%u\n"  , asjd03ib03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03hw00.m2);
	printf("%lu\n" , asjd03ib03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03iw03.m2);
	printf("%d\n" , asjd03ib03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03iw29.m2);
	printf("%d\n" , asjd03ib03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03hd00.m2);
	printf("%llu\n", asjd03ib03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03id03.m2);
	printf("%llu\n", (unsigned long long)asjd03ib03id03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03id61.m2);
	printf("%llu\n", (unsigned long long)asjd03ib03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib03hs00.m2);
	printf("%u\n"  , asjd03ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
