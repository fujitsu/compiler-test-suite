#include <stdio.h>                                              

struct ASJH13JH00HB00 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned char m3;
} asjh13jh00hb00 = { 1 };

struct ASJH13JH00IB03 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned char m3:3;
} asjh13jh00ib03 = { 1 };

struct ASJH13JH00IB05 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned char m3:5;
} asjh13jh00ib05 = { 1 };

struct ASJH13JH00HH00 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned short m3;
} asjh13jh00hh00 = { 1 };

struct ASJH13JH00IH03 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned short m3:3;
} asjh13jh00ih03 = { 1 };

struct ASJH13JH00IH13 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned short m3:13;
} asjh13jh00ih13 = { 1 };

struct ASJH13JH00HW00 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned long m3;
} asjh13jh00hw00 = { 1 };

struct ASJH13JH00IW03 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned long m3:3;
} asjh13jh00iw03 = { 1 };

struct ASJH13JH00IW29 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned long m3:29;
} asjh13jh00iw29 = { 1 };

struct ASJH13JH00HD00 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned long long m3;
} asjh13jh00hd00 = { 1 };

struct ASJH13JH00ID03 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned long long m3:3;
} asjh13jh00id03 = { 1 };

struct ASJH13JH00ID61 {
	unsigned short   :13;
	unsigned short   :0;
	unsigned long long m3:61;
} asjh13jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JH00HS00 {
	unsigned short   :13;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjh13jh00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh13jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asjh13jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asjh13jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
