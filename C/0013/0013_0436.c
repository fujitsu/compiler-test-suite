#include <stdio.h>                                              

struct ASJH13JH13HB00 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned char m3;
} asjh13jh13hb00 = { 1 };

struct ASJH13JH13IB03 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned char m3:3;
} asjh13jh13ib03 = { 1 };

struct ASJH13JH13IB05 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned char m3:5;
} asjh13jh13ib05 = { 1 };

struct ASJH13JH13HH00 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned short m3;
} asjh13jh13hh00 = { 1 };

struct ASJH13JH13IH03 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned short m3:3;
} asjh13jh13ih03 = { 1 };

struct ASJH13JH13IH13 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned short m3:13;
} asjh13jh13ih13 = { 1 };

struct ASJH13JH13HW00 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned long m3;
} asjh13jh13hw00 = { 1 };

struct ASJH13JH13IW03 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned long m3:3;
} asjh13jh13iw03 = { 1 };

struct ASJH13JH13IW29 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned long m3:29;
} asjh13jh13iw29 = { 1 };

struct ASJH13JH13HD00 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned long long m3;
} asjh13jh13hd00 = { 1 };

struct ASJH13JH13ID03 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned long long m3:3;
} asjh13jh13id03 = { 1 };

struct ASJH13JH13ID61 {
	unsigned short   :13;
	unsigned short   :13;
	unsigned long long m3:61;
} asjh13jh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JH13HS00 {
	unsigned short   :13;
	unsigned short   :13;
	struct TAGHB00 m3;
} asjh13jh13hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh13jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh13ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jh13hw00.m3);
	printf("\n");

	printf("%d\n" , asjh13jh13iw03.m3);
	printf("\n");

	printf("%d\n" , asjh13jh13iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
