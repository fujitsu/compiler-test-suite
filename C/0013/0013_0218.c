#include <stdio.h>                                              

struct ASIH13JW03HB00 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned char m3;
} asih13jw03hb00 = { 1, 2 };

struct ASIH13JW03IB03 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned char m3:3;
} asih13jw03ib03 = { 1, 2 };

struct ASIH13JW03IB05 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned char m3:5;
} asih13jw03ib05 = { 1, 2 };

struct ASIH13JW03HH00 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned short m3;
} asih13jw03hh00 = { 1, 2 };

struct ASIH13JW03IH03 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned short m3:3;
} asih13jw03ih03 = { 1, 2 };

struct ASIH13JW03IH13 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned short m3:13;
} asih13jw03ih13 = { 1, 2 };

struct ASIH13JW03HW00 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned long m3;
} asih13jw03hw00 = { 1, 2 };

struct ASIH13JW03IW03 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned long m3:3;
} asih13jw03iw03 = { 1, 2 };

struct ASIH13JW03IW29 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned long m3:29;
} asih13jw03iw29 = { 1, 2 };

struct ASIH13JW03HD00 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned long long m3;
} asih13jw03hd00 = { 1, 2 };

struct ASIH13JW03ID03 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned long long m3:3;
} asih13jw03id03 = { 1, 2 };

struct ASIH13JW03ID61 {
	unsigned short m1:13;
	unsigned long   :3;
	unsigned long long m3:61;
} asih13jw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13JW03HS00 {
	unsigned short m1:13;
	unsigned long   :3;
	struct TAGHB00 m3;
} asih13jw03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asih13jw03hb00.m1);
	printf("%u\n"  , asih13jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03ib03.m1);
	printf("%u\n"  , asih13jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03ib05.m1);
	printf("%u\n"  , asih13jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03hh00.m1);
	printf("%u\n"  , asih13jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03ih03.m1);
	printf("%u\n"  , asih13jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03ih13.m1);
	printf("%u\n"  , asih13jw03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03hw00.m1);
	printf("%lu\n" , asih13jw03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03iw03.m1);
	printf("%d\n" , asih13jw03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03iw29.m1);
	printf("%d\n" , asih13jw03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03hd00.m1);
	printf("%llu\n", asih13jw03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03id03.m1);
	printf("%llu\n", (unsigned long long)asih13jw03id03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03id61.m1);
	printf("%llu\n", (unsigned long long)asih13jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asih13jw03hs00.m1);
	printf("%u\n"  , asih13jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
