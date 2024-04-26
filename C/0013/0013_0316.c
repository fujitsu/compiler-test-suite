#include <stdio.h>                                              

struct ASJB05JH13HB00 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned char m3;
} asjb05jh13hb00 = { 1 };

struct ASJB05JH13IB03 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned char m3:3;
} asjb05jh13ib03 = { 1 };

struct ASJB05JH13IB05 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned char m3:5;
} asjb05jh13ib05 = { 1 };

struct ASJB05JH13HH00 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned short m3;
} asjb05jh13hh00 = { 1 };

struct ASJB05JH13IH03 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned short m3:3;
} asjb05jh13ih03 = { 1 };

struct ASJB05JH13IH13 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned short m3:13;
} asjb05jh13ih13 = { 1 };

struct ASJB05JH13HW00 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned long m3;
} asjb05jh13hw00 = { 1 };

struct ASJB05JH13IW03 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned long m3:3;
} asjb05jh13iw03 = { 1 };

struct ASJB05JH13IW29 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned long m3:29;
} asjb05jh13iw29 = { 1 };

struct ASJB05JH13HD00 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned long long m3;
} asjb05jh13hd00 = { 1 };

struct ASJB05JH13ID03 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned long long m3:3;
} asjb05jh13id03 = { 1 };

struct ASJB05JH13ID61 {
	unsigned char   :5;
	unsigned short   :13;
	unsigned long long m3:61;
} asjb05jh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JH13HS00 {
	unsigned char   :5;
	unsigned short   :13;
	struct TAGHB00 m3;
} asjb05jh13hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb05jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh13ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jh13hw00.m3);
	printf("\n");

	printf("%d\n" , asjb05jh13iw03.m3);
	printf("\n");

	printf("%d\n" , asjb05jh13iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
