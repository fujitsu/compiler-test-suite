#include <stdio.h>                                              

struct ASJH03IB05HB00 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned char m3;
} asjh03ib05hb00 = { 1, 2 };

struct ASJH03IB05IB03 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned char m3:3;
} asjh03ib05ib03 = { 1, 2 };

struct ASJH03IB05IB05 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned char m3:5;
} asjh03ib05ib05 = { 1, 2 };

struct ASJH03IB05HH00 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned short m3;
} asjh03ib05hh00 = { 1, 2 };

struct ASJH03IB05IH03 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned short m3:3;
} asjh03ib05ih03 = { 1, 2 };

struct ASJH03IB05IH13 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned short m3:13;
} asjh03ib05ih13 = { 1, 2 };

struct ASJH03IB05HW00 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned long m3;
} asjh03ib05hw00 = { 1, 2 };

struct ASJH03IB05IW03 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned long m3:3;
} asjh03ib05iw03 = { 1, 2 };

struct ASJH03IB05IW29 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned long m3:29;
} asjh03ib05iw29 = { 1, 2 };

struct ASJH03IB05HD00 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned long long m3;
} asjh03ib05hd00 = { 1, 2 };

struct ASJH03IB05ID03 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned long long m3:3;
} asjh03ib05id03 = { 1, 2 };

struct ASJH03IB05ID61 {
	unsigned short   :3;
	unsigned char m2:5;
	unsigned long long m3:61;
} asjh03ib05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03IB05HS00 {
	unsigned short   :3;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asjh03ib05hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjh03ib05hb00.m2);
	printf("%u\n"  , asjh03ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05ib03.m2);
	printf("%u\n"  , asjh03ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05ib05.m2);
	printf("%u\n"  , asjh03ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05hh00.m2);
	printf("%u\n"  , asjh03ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05ih03.m2);
	printf("%u\n"  , asjh03ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05ih13.m2);
	printf("%u\n"  , asjh03ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05hw00.m2);
	printf("%lu\n" , asjh03ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05iw03.m2);
	printf("%d\n" , asjh03ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05iw29.m2);
	printf("%d\n" , asjh03ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05hd00.m2);
	printf("%llu\n", asjh03ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05id03.m2);
	printf("%llu\n", (unsigned long long)asjh03ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05id61.m2);
	printf("%llu\n", (unsigned long long)asjh03ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03ib05hs00.m2);
	printf("%u\n"  , asjh03ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
