#include <stdio.h>                                              

struct ASJW29JB00HB00 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned char m3;
} asjw29jb00hb00 = { 1 };

struct ASJW29JB00IB03 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned char m3:3;
} asjw29jb00ib03 = { 1 };

struct ASJW29JB00IB05 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned char m3:5;
} asjw29jb00ib05 = { 1 };

struct ASJW29JB00HH00 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned short m3;
} asjw29jb00hh00 = { 1 };

struct ASJW29JB00IH03 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned short m3:3;
} asjw29jb00ih03 = { 1 };

struct ASJW29JB00IH13 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned short m3:13;
} asjw29jb00ih13 = { 1 };

struct ASJW29JB00HW00 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned long m3;
} asjw29jb00hw00 = { 1 };

struct ASJW29JB00IW03 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned long m3:3;
} asjw29jb00iw03 = { 1 };

struct ASJW29JB00IW29 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned long m3:29;
} asjw29jb00iw29 = { 1 };

struct ASJW29JB00HD00 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned long long m3;
} asjw29jb00hd00 = { 1 };

struct ASJW29JB00ID03 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned long long m3:3;
} asjw29jb00id03 = { 1 };

struct ASJW29JB00ID61 {
	unsigned long   :29;
	unsigned char   :0;
	unsigned long long m3:61;
} asjw29jb00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JB00HS00 {
	unsigned long   :29;
	unsigned char   :0;
	struct TAGHB00 m3;
} asjw29jb00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw29jb00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb00hw00.m3);
	printf("\n");

	printf("%d\n" , asjw29jb00iw03.m3);
	printf("\n");

	printf("%d\n" , asjw29jb00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jb00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jb00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jb00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
