#include <stdio.h>                                              

struct ASJB03JB05HB00 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned char m3;
} asjb03jb05hb00 = { 1 };

struct ASJB03JB05IB03 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned char m3:3;
} asjb03jb05ib03 = { 1 };

struct ASJB03JB05IB05 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned char m3:5;
} asjb03jb05ib05 = { 1 };

struct ASJB03JB05HH00 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned short m3;
} asjb03jb05hh00 = { 1 };

struct ASJB03JB05IH03 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned short m3:3;
} asjb03jb05ih03 = { 1 };

struct ASJB03JB05IH13 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned short m3:13;
} asjb03jb05ih13 = { 1 };

struct ASJB03JB05HW00 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned long m3;
} asjb03jb05hw00 = { 1 };

struct ASJB03JB05IW03 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned long m3:3;
} asjb03jb05iw03 = { 1 };

struct ASJB03JB05IW29 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned long m3:29;
} asjb03jb05iw29 = { 1 };

struct ASJB03JB05HD00 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned long long m3;
} asjb03jb05hd00 = { 1 };

struct ASJB03JB05ID03 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned long long m3:3;
} asjb03jb05id03 = { 1 };

struct ASJB03JB05ID61 {
	unsigned char   :3;
	unsigned char   :5;
	unsigned long long m3:61;
} asjb03jb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JB05HS00 {
	unsigned char   :3;
	unsigned char   :5;
	struct TAGHB00 m3;
} asjb03jb05hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb03jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jb05hw00.m3);
	printf("\n");

	printf("%d\n" , asjb03jb05iw03.m3);
	printf("\n");

	printf("%d\n" , asjb03jb05iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
