#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00IH13HB00 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned char m3;
} ashs00ih13hb00 = { { 1 }, 2, 3 };

struct ASHS00IH13IB03 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned char m3:3;
} ashs00ih13ib03 = { { 1 }, 2, 3 };

struct ASHS00IH13IB05 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned char m3:5;
} ashs00ih13ib05 = { { 1 }, 2, 3 };

struct ASHS00IH13HH00 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned short m3;
} ashs00ih13hh00 = { { 1 }, 2, 3 };

struct ASHS00IH13IH03 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned short m3:3;
} ashs00ih13ih03 = { { 1 }, 2, 3 };

struct ASHS00IH13IH13 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned short m3:13;
} ashs00ih13ih13 = { { 1 }, 2, 3 };

struct ASHS00IH13HW00 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned long m3;
} ashs00ih13hw00 = { { 1 }, 2, 3 };

struct ASHS00IH13IW03 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned long m3:3;
} ashs00ih13iw03 = { { 1 }, 2, 3 };

struct ASHS00IH13IW29 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned long m3:29;
} ashs00ih13iw29 = { { 1 }, 2, 3 };

struct ASHS00IH13HD00 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned long long m3;
} ashs00ih13hd00 = { { 1 }, 2, 3 };

struct ASHS00IH13ID03 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned long long m3:3;
} ashs00ih13id03 = { { 1 }, 2, 3 };

struct ASHS00IH13ID61 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	unsigned long long m3:61;
} ashs00ih13id61 = { { 1 }, 2, 3 };

struct ASHS00IH13HS00 {
	struct TAGHB00 m1;
	unsigned short m2:13;
	struct TAGHB00 m3;
} ashs00ih13hs00 = { { 1 }, 2, { 3 } };

int main() {

	printf("%u\n"  , ashs00ih13hb00.m1.m1);
	printf("%u\n"  , ashs00ih13hb00.m2);
	printf("%u\n"  , ashs00ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13ib03.m1.m1);
	printf("%u\n"  , ashs00ih13ib03.m2);
	printf("%u\n"  , ashs00ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13ib05.m1.m1);
	printf("%u\n"  , ashs00ih13ib05.m2);
	printf("%u\n"  , ashs00ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13hh00.m1.m1);
	printf("%u\n"  , ashs00ih13hh00.m2);
	printf("%u\n"  , ashs00ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13ih03.m1.m1);
	printf("%u\n"  , ashs00ih13ih03.m2);
	printf("%u\n"  , ashs00ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13ih13.m1.m1);
	printf("%u\n"  , ashs00ih13ih13.m2);
	printf("%u\n"  , ashs00ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13hw00.m1.m1);
	printf("%u\n"  , ashs00ih13hw00.m2);
	printf("%lu\n" , ashs00ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13iw03.m1.m1);
	printf("%u\n"  , ashs00ih13iw03.m2);
	printf("%d\n" , ashs00ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13iw29.m1.m1);
	printf("%u\n"  , ashs00ih13iw29.m2);
	printf("%d\n" , ashs00ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13hd00.m1.m1);
	printf("%u\n"  , ashs00ih13hd00.m2);
	printf("%llu\n", ashs00ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13id03.m1.m1);
	printf("%u\n"  , ashs00ih13id03.m2);
	printf("%llu\n", (unsigned long long)ashs00ih13id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13id61.m1.m1);
	printf("%u\n"  , ashs00ih13id61.m2);
	printf("%llu\n", (unsigned long long)ashs00ih13id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00ih13hs00.m1.m1);
	printf("%u\n"  , ashs00ih13hs00.m2);
	printf("%u\n"  , ashs00ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
