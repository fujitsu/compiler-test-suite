#include <stdio.h>                                              

struct ASIB03IW03HB00 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned char m3;
} asib03iw03hb00 = { 1, 2, 3 };

struct ASIB03IW03IB03 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned char m3:3;
} asib03iw03ib03 = { 1, 2, 3 };

struct ASIB03IW03IB05 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned char m3:5;
} asib03iw03ib05 = { 1, 2, 3 };

struct ASIB03IW03HH00 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned short m3;
} asib03iw03hh00 = { 1, 2, 3 };

struct ASIB03IW03IH03 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned short m3:3;
} asib03iw03ih03 = { 1, 2, 3 };

struct ASIB03IW03IH13 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned short m3:13;
} asib03iw03ih13 = { 1, 2, 3 };

struct ASIB03IW03HW00 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned long m3;
} asib03iw03hw00 = { 1, 2, 3 };

struct ASIB03IW03IW03 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned long m3:3;
} asib03iw03iw03 = { 1, 2, 3 };

struct ASIB03IW03IW29 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned long m3:29;
} asib03iw03iw29 = { 1, 2, 3 };

struct ASIB03IW03HD00 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned long long m3;
} asib03iw03hd00 = { 1, 2, 3 };

struct ASIB03IW03ID03 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned long long m3:3;
} asib03iw03id03 = { 1, 2, 3 };

struct ASIB03IW03ID61 {
	unsigned char m1:3;
	unsigned long m2:3;
	unsigned long long m3:61;
} asib03iw03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB03IW03HS00 {
	unsigned char m1:3;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asib03iw03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asib03iw03hb00.m1);
	printf("%d\n" , asib03iw03hb00.m2);
	printf("%u\n"  , asib03iw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03ib03.m1);
	printf("%d\n" , asib03iw03ib03.m2);
	printf("%u\n"  , asib03iw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03ib05.m1);
	printf("%d\n" , asib03iw03ib05.m2);
	printf("%u\n"  , asib03iw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03hh00.m1);
	printf("%d\n" , asib03iw03hh00.m2);
	printf("%u\n"  , asib03iw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03ih03.m1);
	printf("%d\n" , asib03iw03ih03.m2);
	printf("%u\n"  , asib03iw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03ih13.m1);
	printf("%d\n" , asib03iw03ih13.m2);
	printf("%u\n"  , asib03iw03ih13.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03hw00.m1);
	printf("%d\n" , asib03iw03hw00.m2);
	printf("%lu\n" , asib03iw03hw00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03iw03.m1);
	printf("%d\n" , asib03iw03iw03.m2);
	printf("%d\n" , asib03iw03iw03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03iw29.m1);
	printf("%d\n" , asib03iw03iw29.m2);
	printf("%d\n" , asib03iw03iw29.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03hd00.m1);
	printf("%d\n" , asib03iw03hd00.m2);
	printf("%llu\n", asib03iw03hd00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03id03.m1);
	printf("%d\n" , asib03iw03id03.m2);
	printf("%llu\n", (unsigned long long)asib03iw03id03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03id61.m1);
	printf("%d\n" , asib03iw03id61.m2);
	printf("%llu\n", (unsigned long long)asib03iw03id61.m3);
	printf("\n");

	printf("%u\n"  , asib03iw03hs00.m1);
	printf("%d\n" , asib03iw03hs00.m2);
	printf("%u\n"  , asib03iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
