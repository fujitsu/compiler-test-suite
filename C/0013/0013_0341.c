#include <stdio.h>                                              

struct ASJD03IB05HB00 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned char m3;
} asjd03ib05hb00 = { 1, 2 };

struct ASJD03IB05IB03 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned char m3:3;
} asjd03ib05ib03 = { 1, 2 };

struct ASJD03IB05IB05 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned char m3:5;
} asjd03ib05ib05 = { 1, 2 };

struct ASJD03IB05HH00 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned short m3;
} asjd03ib05hh00 = { 1, 2 };

struct ASJD03IB05IH03 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned short m3:3;
} asjd03ib05ih03 = { 1, 2 };

struct ASJD03IB05IH13 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned short m3:13;
} asjd03ib05ih13 = { 1, 2 };

struct ASJD03IB05HW00 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned long m3;
} asjd03ib05hw00 = { 1, 2 };

struct ASJD03IB05IW03 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned long m3:3;
} asjd03ib05iw03 = { 1, 2 };

struct ASJD03IB05IW29 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned long m3:29;
} asjd03ib05iw29 = { 1, 2 };

struct ASJD03IB05HD00 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned long long m3;
} asjd03ib05hd00 = { 1, 2 };

struct ASJD03IB05ID03 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned long long m3:3;
} asjd03ib05id03 = { 1, 2 };

struct ASJD03IB05ID61 {
	unsigned long long   :3;
	unsigned char m2:5;
	unsigned long long m3:61;
} asjd03ib05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03IB05HS00 {
	unsigned long long   :3;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asjd03ib05hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjd03ib05hb00.m2);
	printf("%u\n"  , asjd03ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05ib03.m2);
	printf("%u\n"  , asjd03ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05ib05.m2);
	printf("%u\n"  , asjd03ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05hh00.m2);
	printf("%u\n"  , asjd03ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05ih03.m2);
	printf("%u\n"  , asjd03ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05ih13.m2);
	printf("%u\n"  , asjd03ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05hw00.m2);
	printf("%lu\n" , asjd03ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05iw03.m2);
	printf("%d\n" , asjd03ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05iw29.m2);
	printf("%d\n" , asjd03ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05hd00.m2);
	printf("%llu\n", asjd03ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05id03.m2);
	printf("%llu\n", (unsigned long long)asjd03ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05id61.m2);
	printf("%llu\n", (unsigned long long)asjd03ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03ib05hs00.m2);
	printf("%u\n"  , asjd03ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
