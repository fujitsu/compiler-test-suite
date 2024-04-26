#include <stdio.h>                                              

struct ASJB00JH13HB00 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned char m3;
} asjb00jh13hb00 = { 1 };

struct ASJB00JH13IB03 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned char m3:3;
} asjb00jh13ib03 = { 1 };

struct ASJB00JH13IB05 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned char m3:5;
} asjb00jh13ib05 = { 1 };

struct ASJB00JH13HH00 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned short m3;
} asjb00jh13hh00 = { 1 };

struct ASJB00JH13IH03 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned short m3:3;
} asjb00jh13ih03 = { 1 };

struct ASJB00JH13IH13 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned short m3:13;
} asjb00jh13ih13 = { 1 };

struct ASJB00JH13HW00 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned long m3;
} asjb00jh13hw00 = { 1 };

struct ASJB00JH13IW03 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned long m3:3;
} asjb00jh13iw03 = { 1 };

struct ASJB00JH13IW29 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned long m3:29;
} asjb00jh13iw29 = { 1 };

struct ASJB00JH13HD00 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned long long m3;
} asjb00jh13hd00 = { 1 };

struct ASJB00JH13ID03 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned long long m3:3;
} asjb00jh13id03 = { 1 };

struct ASJB00JH13ID61 {
	unsigned char   :0;
	unsigned short   :13;
	unsigned long long m3:61;
} asjb00jh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JH13HS00 {
	unsigned char   :0;
	unsigned short   :13;
	struct TAGHB00 m3;
} asjb00jh13hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb00jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh13ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jh13hw00.m3);
	printf("\n");

	printf("%d\n" , asjb00jh13iw03.m3);
	printf("\n");

	printf("%d\n" , asjb00jh13iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
