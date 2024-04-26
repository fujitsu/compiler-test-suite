#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JH03HB00 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned char m3;
} ashs00jh03hb00 = { { 1 }, 2 };

struct ASHS00JH03IB03 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned char m3:3;
} ashs00jh03ib03 = { { 1 }, 2 };

struct ASHS00JH03IB05 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned char m3:5;
} ashs00jh03ib05 = { { 1 }, 2 };

struct ASHS00JH03HH00 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned short m3;
} ashs00jh03hh00 = { { 1 }, 2 };

struct ASHS00JH03IH03 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned short m3:3;
} ashs00jh03ih03 = { { 1 }, 2 };

struct ASHS00JH03IH13 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned short m3:13;
} ashs00jh03ih13 = { { 1 }, 2 };

struct ASHS00JH03HW00 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned long m3;
} ashs00jh03hw00 = { { 1 }, 2 };

struct ASHS00JH03IW03 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned long m3:3;
} ashs00jh03iw03 = { { 1 }, 2 };

struct ASHS00JH03IW29 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned long m3:29;
} ashs00jh03iw29 = { { 1 }, 2 };

struct ASHS00JH03HD00 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned long long m3;
} ashs00jh03hd00 = { { 1 }, 2 };

struct ASHS00JH03ID03 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned long long m3:3;
} ashs00jh03id03 = { { 1 }, 2 };

struct ASHS00JH03ID61 {
	struct TAGHB00 m1;
	unsigned short   :3;
	unsigned long long m3:61;
} ashs00jh03id61 = { { 1 }, 2 };

struct ASHS00JH03HS00 {
	struct TAGHB00 m1;
	unsigned short   :3;
	struct TAGHB00 m3;
} ashs00jh03hs00 = { { 1 }, { 2 } };

int main() {

	printf("%u\n"  , ashs00jh03hb00.m1.m1);
	printf("%u\n"  , ashs00jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03ib03.m1.m1);
	printf("%u\n"  , ashs00jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03ib05.m1.m1);
	printf("%u\n"  , ashs00jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03hh00.m1.m1);
	printf("%u\n"  , ashs00jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03ih03.m1.m1);
	printf("%u\n"  , ashs00jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03ih13.m1.m1);
	printf("%u\n"  , ashs00jh03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03hw00.m1.m1);
	printf("%lu\n" , ashs00jh03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03iw03.m1.m1);
	printf("%d\n" , ashs00jh03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03iw29.m1.m1);
	printf("%d\n" , ashs00jh03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03hd00.m1.m1);
	printf("%llu\n", ashs00jh03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jh03id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jh03id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jh03hs00.m1.m1);
	printf("%u\n"  , ashs00jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
