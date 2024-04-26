#include <stdio.h>                                              

struct ASJB05IW29HB00 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned char m3;
} asjb05iw29hb00 = { 1, 2 };

struct ASJB05IW29IB03 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned char m3:3;
} asjb05iw29ib03 = { 1, 2 };

struct ASJB05IW29IB05 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned char m3:5;
} asjb05iw29ib05 = { 1, 2 };

struct ASJB05IW29HH00 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned short m3;
} asjb05iw29hh00 = { 1, 2 };

struct ASJB05IW29IH03 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned short m3:3;
} asjb05iw29ih03 = { 1, 2 };

struct ASJB05IW29IH13 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned short m3:13;
} asjb05iw29ih13 = { 1, 2 };

struct ASJB05IW29HW00 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned long m3;
} asjb05iw29hw00 = { 1, 2 };

struct ASJB05IW29IW03 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned long m3:3;
} asjb05iw29iw03 = { 1, 2 };

struct ASJB05IW29IW29 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned long m3:29;
} asjb05iw29iw29 = { 1, 2 };

struct ASJB05IW29HD00 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned long long m3;
} asjb05iw29hd00 = { 1, 2 };

struct ASJB05IW29ID03 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned long long m3:3;
} asjb05iw29id03 = { 1, 2 };

struct ASJB05IW29ID61 {
	unsigned char   :5;
	unsigned long m2:29;
	unsigned long long m3:61;
} asjb05iw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05IW29HS00 {
	unsigned char   :5;
	unsigned long m2:29;
	struct TAGHB00 m3;
} asjb05iw29hs00 = { 1, { 2 } };

int main() {

	printf("%d\n" , asjb05iw29hb00.m2);
	printf("%u\n"  , asjb05iw29hb00.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29ib03.m2);
	printf("%u\n"  , asjb05iw29ib03.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29ib05.m2);
	printf("%u\n"  , asjb05iw29ib05.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29hh00.m2);
	printf("%u\n"  , asjb05iw29hh00.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29ih03.m2);
	printf("%u\n"  , asjb05iw29ih03.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29ih13.m2);
	printf("%u\n"  , asjb05iw29ih13.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29hw00.m2);
	printf("%lu\n" , asjb05iw29hw00.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29iw03.m2);
	printf("%d\n" , asjb05iw29iw03.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29iw29.m2);
	printf("%d\n" , asjb05iw29iw29.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29hd00.m2);
	printf("%llu\n", asjb05iw29hd00.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29id03.m2);
	printf("%llu\n", (unsigned long long)asjb05iw29id03.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29id61.m2);
	printf("%llu\n", (unsigned long long)asjb05iw29id61.m3);
	printf("\n");

	printf("%d\n" , asjb05iw29hs00.m2);
	printf("%u\n"  , asjb05iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
