#include <stdio.h>                                              

struct ASJB05JH00HB00 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned char m3;
} asjb05jh00hb00 = { 1 };

struct ASJB05JH00IB03 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned char m3:3;
} asjb05jh00ib03 = { 1 };

struct ASJB05JH00IB05 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned char m3:5;
} asjb05jh00ib05 = { 1 };

struct ASJB05JH00HH00 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned short m3;
} asjb05jh00hh00 = { 1 };

struct ASJB05JH00IH03 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned short m3:3;
} asjb05jh00ih03 = { 1 };

struct ASJB05JH00IH13 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned short m3:13;
} asjb05jh00ih13 = { 1 };

struct ASJB05JH00HW00 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned long m3;
} asjb05jh00hw00 = { 1 };

struct ASJB05JH00IW03 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned long m3:3;
} asjb05jh00iw03 = { 1 };

struct ASJB05JH00IW29 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned long m3:29;
} asjb05jh00iw29 = { 1 };

struct ASJB05JH00HD00 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned long long m3;
} asjb05jh00hd00 = { 1 };

struct ASJB05JH00ID03 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned long long m3:3;
} asjb05jh00id03 = { 1 };

struct ASJB05JH00ID61 {
	unsigned char   :5;
	unsigned short   :0;
	unsigned long long m3:61;
} asjb05jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JH00HS00 {
	unsigned char   :5;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjb05jh00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb05jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asjb05jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asjb05jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
