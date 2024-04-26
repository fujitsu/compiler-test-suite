#include <stdio.h>                                              

struct ASJB00IW29HB00 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned char m3;
} asjb00iw29hb00 = { 1, 2 };

struct ASJB00IW29IB03 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned char m3:3;
} asjb00iw29ib03 = { 1, 2 };

struct ASJB00IW29IB05 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned char m3:5;
} asjb00iw29ib05 = { 1, 2 };

struct ASJB00IW29HH00 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned short m3;
} asjb00iw29hh00 = { 1, 2 };

struct ASJB00IW29IH03 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned short m3:3;
} asjb00iw29ih03 = { 1, 2 };

struct ASJB00IW29IH13 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned short m3:13;
} asjb00iw29ih13 = { 1, 2 };

struct ASJB00IW29HW00 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned long m3;
} asjb00iw29hw00 = { 1, 2 };

struct ASJB00IW29IW03 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned long m3:3;
} asjb00iw29iw03 = { 1, 2 };

struct ASJB00IW29IW29 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned long m3:29;
} asjb00iw29iw29 = { 1, 2 };

struct ASJB00IW29HD00 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned long long m3;
} asjb00iw29hd00 = { 1, 2 };

struct ASJB00IW29ID03 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned long long m3:3;
} asjb00iw29id03 = { 1, 2 };

struct ASJB00IW29ID61 {
	unsigned char   :0;
	unsigned long m2:29;
	unsigned long long m3:61;
} asjb00iw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00IW29HS00 {
	unsigned char   :0;
	unsigned long m2:29;
	struct TAGHB00 m3;
} asjb00iw29hs00 = { 1, { 2 } };

int main() {

	printf("%d\n" , asjb00iw29hb00.m2);
	printf("%u\n"  , asjb00iw29hb00.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29ib03.m2);
	printf("%u\n"  , asjb00iw29ib03.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29ib05.m2);
	printf("%u\n"  , asjb00iw29ib05.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29hh00.m2);
	printf("%u\n"  , asjb00iw29hh00.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29ih03.m2);
	printf("%u\n"  , asjb00iw29ih03.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29ih13.m2);
	printf("%u\n"  , asjb00iw29ih13.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29hw00.m2);
	printf("%lu\n" , asjb00iw29hw00.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29iw03.m2);
	printf("%d\n" , asjb00iw29iw03.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29iw29.m2);
	printf("%d\n" , asjb00iw29iw29.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29hd00.m2);
	printf("%llu\n", asjb00iw29hd00.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29id03.m2);
	printf("%llu\n", (unsigned long long)asjb00iw29id03.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29id61.m2);
	printf("%llu\n", (unsigned long long)asjb00iw29id61.m3);
	printf("\n");

	printf("%d\n" , asjb00iw29hs00.m2);
	printf("%u\n"  , asjb00iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
