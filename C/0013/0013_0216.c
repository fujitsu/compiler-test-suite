#include <stdio.h>                                              

struct ASIH13JH13HB00 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned char m3;
} asih13jh13hb00 = { 1, 2 };

struct ASIH13JH13IB03 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned char m3:3;
} asih13jh13ib03 = { 1, 2 };

struct ASIH13JH13IB05 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned char m3:5;
} asih13jh13ib05 = { 1, 2 };

struct ASIH13JH13HH00 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned short m3;
} asih13jh13hh00 = { 1, 2 };

struct ASIH13JH13IH03 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned short m3:3;
} asih13jh13ih03 = { 1, 2 };

struct ASIH13JH13IH13 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned short m3:13;
} asih13jh13ih13 = { 1, 2 };

struct ASIH13JH13HW00 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned long m3;
} asih13jh13hw00 = { 1, 2 };

struct ASIH13JH13IW03 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned long m3:3;
} asih13jh13iw03 = { 1, 2 };

struct ASIH13JH13IW29 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned long m3:29;
} asih13jh13iw29 = { 1, 2 };

struct ASIH13JH13HD00 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned long long m3;
} asih13jh13hd00 = { 1, 2 };

struct ASIH13JH13ID03 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned long long m3:3;
} asih13jh13id03 = { 1, 2 };

struct ASIH13JH13ID61 {
	unsigned short m1:13;
	unsigned short   :13;
	unsigned long long m3:61;
} asih13jh13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13JH13HS00 {
	unsigned short m1:13;
	unsigned short   :13;
	struct TAGHB00 m3;
} asih13jh13hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asih13jh13hb00.m1);
	printf("%u\n"  , asih13jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13ib03.m1);
	printf("%u\n"  , asih13jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13ib05.m1);
	printf("%u\n"  , asih13jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13hh00.m1);
	printf("%u\n"  , asih13jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13ih03.m1);
	printf("%u\n"  , asih13jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13ih13.m1);
	printf("%u\n"  , asih13jh13ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13hw00.m1);
	printf("%lu\n" , asih13jh13hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13iw03.m1);
	printf("%d\n" , asih13jh13iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13iw29.m1);
	printf("%d\n" , asih13jh13iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13hd00.m1);
	printf("%llu\n", asih13jh13hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13id03.m1);
	printf("%llu\n", (unsigned long long)asih13jh13id03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13id61.m1);
	printf("%llu\n", (unsigned long long)asih13jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asih13jh13hs00.m1);
	printf("%u\n"  , asih13jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
