#include <stdio.h>                                              

struct ASJH13JB05HB00 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned char m3;
} asjh13jb05hb00 = { 1 };

struct ASJH13JB05IB03 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned char m3:3;
} asjh13jb05ib03 = { 1 };

struct ASJH13JB05IB05 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned char m3:5;
} asjh13jb05ib05 = { 1 };

struct ASJH13JB05HH00 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned short m3;
} asjh13jb05hh00 = { 1 };

struct ASJH13JB05IH03 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned short m3:3;
} asjh13jb05ih03 = { 1 };

struct ASJH13JB05IH13 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned short m3:13;
} asjh13jb05ih13 = { 1 };

struct ASJH13JB05HW00 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned long m3;
} asjh13jb05hw00 = { 1 };

struct ASJH13JB05IW03 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned long m3:3;
} asjh13jb05iw03 = { 1 };

struct ASJH13JB05IW29 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned long m3:29;
} asjh13jb05iw29 = { 1 };

struct ASJH13JB05HD00 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned long long m3;
} asjh13jb05hd00 = { 1 };

struct ASJH13JB05ID03 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned long long m3:3;
} asjh13jb05id03 = { 1 };

struct ASJH13JB05ID61 {
	unsigned short   :13;
	unsigned char   :5;
	unsigned long long m3:61;
} asjh13jb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JB05HS00 {
	unsigned short   :13;
	unsigned char   :5;
	struct TAGHB00 m3;
} asjh13jb05hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh13jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jb05hw00.m3);
	printf("\n");

	printf("%d\n" , asjh13jb05iw03.m3);
	printf("\n");

	printf("%d\n" , asjh13jb05iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
