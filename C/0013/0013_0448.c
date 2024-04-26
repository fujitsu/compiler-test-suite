#include <stdio.h>                                              

struct ASJW00JB00HB00 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned char m3;
} asjw00jb00hb00 = { 1 };

struct ASJW00JB00IB03 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned char m3:3;
} asjw00jb00ib03 = { 1 };

struct ASJW00JB00IB05 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned char m3:5;
} asjw00jb00ib05 = { 1 };

struct ASJW00JB00HH00 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned short m3;
} asjw00jb00hh00 = { 1 };

struct ASJW00JB00IH03 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned short m3:3;
} asjw00jb00ih03 = { 1 };

struct ASJW00JB00IH13 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned short m3:13;
} asjw00jb00ih13 = { 1 };

struct ASJW00JB00HW00 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned long m3;
} asjw00jb00hw00 = { 1 };

struct ASJW00JB00IW03 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned long m3:3;
} asjw00jb00iw03 = { 1 };

struct ASJW00JB00IW29 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned long m3:29;
} asjw00jb00iw29 = { 1 };

struct ASJW00JB00HD00 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned long long m3;
} asjw00jb00hd00 = { 1 };

struct ASJW00JB00ID03 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned long long m3:3;
} asjw00jb00id03 = { 1 };

struct ASJW00JB00ID61 {
	unsigned long   :0;
	unsigned char   :0;
	unsigned long long m3:61;
} asjw00jb00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW00JB00HS00 {
	unsigned long   :0;
	unsigned char   :0;
	struct TAGHB00 m3;
} asjw00jb00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw00jb00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jb00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jb00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw00jb00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jb00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jb00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw00jb00hw00.m3);
	printf("\n");

	printf("%d\n" , asjw00jb00iw03.m3);
	printf("\n");

	printf("%d\n" , asjw00jb00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw00jb00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jb00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jb00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw00jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
