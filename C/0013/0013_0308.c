#include <stdio.h>                                              

struct ASJB05JB00HB00 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned char m3;
} asjb05jb00hb00 = { 1 };

struct ASJB05JB00IB03 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned char m3:3;
} asjb05jb00ib03 = { 1 };

struct ASJB05JB00IB05 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned char m3:5;
} asjb05jb00ib05 = { 1 };

struct ASJB05JB00HH00 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned short m3;
} asjb05jb00hh00 = { 1 };

struct ASJB05JB00IH03 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned short m3:3;
} asjb05jb00ih03 = { 1 };

struct ASJB05JB00IH13 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned short m3:13;
} asjb05jb00ih13 = { 1 };

struct ASJB05JB00HW00 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned long m3;
} asjb05jb00hw00 = { 1 };

struct ASJB05JB00IW03 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned long m3:3;
} asjb05jb00iw03 = { 1 };

struct ASJB05JB00IW29 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned long m3:29;
} asjb05jb00iw29 = { 1 };

struct ASJB05JB00HD00 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned long long m3;
} asjb05jb00hd00 = { 1 };

struct ASJB05JB00ID03 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned long long m3:3;
} asjb05jb00id03 = { 1 };

struct ASJB05JB00ID61 {
	unsigned char   :5;
	unsigned char   :0;
	unsigned long long m3:61;
} asjb05jb00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JB00HS00 {
	unsigned char   :5;
	unsigned char   :0;
	struct TAGHB00 m3;
} asjb05jb00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb05jb00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jb00hw00.m3);
	printf("\n");

	printf("%d\n" , asjb05jb00iw03.m3);
	printf("\n");

	printf("%d\n" , asjb05jb00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jb00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jb00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jb00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
