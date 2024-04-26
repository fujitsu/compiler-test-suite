#include <stdio.h>                                              

struct ASJH00JB05HB00 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned char m3;
} asjh00jb05hb00 = { 1 };

struct ASJH00JB05IB03 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned char m3:3;
} asjh00jb05ib03 = { 1 };

struct ASJH00JB05IB05 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned char m3:5;
} asjh00jb05ib05 = { 1 };

struct ASJH00JB05HH00 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned short m3;
} asjh00jb05hh00 = { 1 };

struct ASJH00JB05IH03 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned short m3:3;
} asjh00jb05ih03 = { 1 };

struct ASJH00JB05IH13 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned short m3:13;
} asjh00jb05ih13 = { 1 };

struct ASJH00JB05HW00 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned long m3;
} asjh00jb05hw00 = { 1 };

struct ASJH00JB05IW03 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned long m3:3;
} asjh00jb05iw03 = { 1 };

struct ASJH00JB05IW29 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned long m3:29;
} asjh00jb05iw29 = { 1 };

struct ASJH00JB05HD00 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned long long m3;
} asjh00jb05hd00 = { 1 };

struct ASJH00JB05ID03 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned long long m3:3;
} asjh00jb05id03 = { 1 };

struct ASJH00JB05ID61 {
	unsigned short   :0;
	unsigned char   :5;
	unsigned long long m3:61;
} asjh00jb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH00JB05HS00 {
	unsigned short   :0;
	unsigned char   :5;
	struct TAGHB00 m3;
} asjh00jb05hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh00jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh00jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh00jb05hw00.m3);
	printf("\n");

	printf("%d\n" , asjh00jb05iw03.m3);
	printf("\n");

	printf("%d\n" , asjh00jb05iw29.m3);
	printf("\n");

	printf("%llu\n", asjh00jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asjh00jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
