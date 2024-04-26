#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JW29HB00 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned char m3;
} ashs00jw29hb00 = { { 1 }, 2 };

struct ASHS00JW29IB03 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned char m3:3;
} ashs00jw29ib03 = { { 1 }, 2 };

struct ASHS00JW29IB05 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned char m3:5;
} ashs00jw29ib05 = { { 1 }, 2 };

struct ASHS00JW29HH00 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned short m3;
} ashs00jw29hh00 = { { 1 }, 2 };

struct ASHS00JW29IH03 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned short m3:3;
} ashs00jw29ih03 = { { 1 }, 2 };

struct ASHS00JW29IH13 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned short m3:13;
} ashs00jw29ih13 = { { 1 }, 2 };

struct ASHS00JW29HW00 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned long m3;
} ashs00jw29hw00 = { { 1 }, 2 };

struct ASHS00JW29IW03 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned long m3:3;
} ashs00jw29iw03 = { { 1 }, 2 };

struct ASHS00JW29IW29 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned long m3:29;
} ashs00jw29iw29 = { { 1 }, 2 };

struct ASHS00JW29HD00 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned long long m3;
} ashs00jw29hd00 = { { 1 }, 2 };

struct ASHS00JW29ID03 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned long long m3:3;
} ashs00jw29id03 = { { 1 }, 2 };

struct ASHS00JW29ID61 {
	struct TAGHB00 m1;
	unsigned long   :29;
	unsigned long long m3:61;
} ashs00jw29id61 = { { 1 }, 2 };

struct ASHS00JW29HS00 {
	struct TAGHB00 m1;
	unsigned long   :29;
	struct TAGHB00 m3;
} ashs00jw29hs00 = { { 1 }, { 2 } };

int main() {

	printf("%u\n"  , ashs00jw29hb00.m1.m1);
	printf("%u\n"  , ashs00jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29ib03.m1.m1);
	printf("%u\n"  , ashs00jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29ib05.m1.m1);
	printf("%u\n"  , ashs00jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29hh00.m1.m1);
	printf("%u\n"  , ashs00jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29ih03.m1.m1);
	printf("%u\n"  , ashs00jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29ih13.m1.m1);
	printf("%u\n"  , ashs00jw29ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29hw00.m1.m1);
	printf("%lu\n" , ashs00jw29hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29iw03.m1.m1);
	printf("%d\n" , ashs00jw29iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29iw29.m1.m1);
	printf("%d\n" , ashs00jw29iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29hd00.m1.m1);
	printf("%llu\n", ashs00jw29hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jw29id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jw29id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jw29hs00.m1.m1);
	printf("%u\n"  , ashs00jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
