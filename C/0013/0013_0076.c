#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JH13HB00 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned char m3;
} ashs00jh13hb00 = { { 1 }, 2 };

struct ASHS00JH13IB03 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned char m3:3;
} ashs00jh13ib03 = { { 1 }, 2 };

struct ASHS00JH13IB05 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned char m3:5;
} ashs00jh13ib05 = { { 1 }, 2 };

struct ASHS00JH13HH00 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned short m3;
} ashs00jh13hh00 = { { 1 }, 2 };

struct ASHS00JH13IH03 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned short m3:3;
} ashs00jh13ih03 = { { 1 }, 2 };

struct ASHS00JH13IH13 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned short m3:13;
} ashs00jh13ih13 = { { 1 }, 2 };

struct ASHS00JH13HW00 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned long m3;
} ashs00jh13hw00 = { { 1 }, 2 };

struct ASHS00JH13IW03 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned long m3:3;
} ashs00jh13iw03 = { { 1 }, 2 };

struct ASHS00JH13IW29 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned long m3:29;
} ashs00jh13iw29 = { { 1 }, 2 };

struct ASHS00JH13HD00 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned long long m3;
} ashs00jh13hd00 = { { 1 }, 2 };

struct ASHS00JH13ID03 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned long long m3:3;
} ashs00jh13id03 = { { 1 }, 2 };

struct ASHS00JH13ID61 {
	struct TAGHB00 m1;
	unsigned short   :13;
	unsigned long long m3:61;
} ashs00jh13id61 = { { 1 }, 2 };

struct ASHS00JH13HS00 {
	struct TAGHB00 m1;
	unsigned short   :13;
	struct TAGHB00 m3;
} ashs00jh13hs00 = { { 1 }, { 2 } };

int main() {

	printf("%u\n"  , ashs00jh13hb00.m1.m1);
	printf("%u\n"  , ashs00jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13ib03.m1.m1);
	printf("%u\n"  , ashs00jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13ib05.m1.m1);
	printf("%u\n"  , ashs00jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13hh00.m1.m1);
	printf("%u\n"  , ashs00jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13ih03.m1.m1);
	printf("%u\n"  , ashs00jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13ih13.m1.m1);
	printf("%u\n"  , ashs00jh13ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13hw00.m1.m1);
	printf("%lu\n" , ashs00jh13hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13iw03.m1.m1);
	printf("%d\n" , ashs00jh13iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13iw29.m1.m1);
	printf("%d\n" , ashs00jh13iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13hd00.m1.m1);
	printf("%llu\n", ashs00jh13hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jh13id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jh13id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh13hs00.m1.m1);
	printf("%u\n"  , ashs00jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
