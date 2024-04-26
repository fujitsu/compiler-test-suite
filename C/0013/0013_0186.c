#include <stdio.h>                                              

struct ASIH03IW03HB00 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned char m3;
} asih03iw03hb00 = { 1, 2, 3 };

struct ASIH03IW03IB03 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned char m3:3;
} asih03iw03ib03 = { 1, 2, 3 };

struct ASIH03IW03IB05 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned char m3:5;
} asih03iw03ib05 = { 1, 2, 3 };

struct ASIH03IW03HH00 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned short m3;
} asih03iw03hh00 = { 1, 2, 3 };

struct ASIH03IW03IH03 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned short m3:3;
} asih03iw03ih03 = { 1, 2, 3 };

struct ASIH03IW03IH13 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned short m3:13;
} asih03iw03ih13 = { 1, 2, 3 };

struct ASIH03IW03HW00 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned long m3;
} asih03iw03hw00 = { 1, 2, 3 };

struct ASIH03IW03IW03 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned long m3:3;
} asih03iw03iw03 = { 1, 2, 3 };

struct ASIH03IW03IW29 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned long m3:29;
} asih03iw03iw29 = { 1, 2, 3 };

struct ASIH03IW03HD00 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned long long m3;
} asih03iw03hd00 = { 1, 2, 3 };

struct ASIH03IW03ID03 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned long long m3:3;
} asih03iw03id03 = { 1, 2, 3 };

struct ASIH03IW03ID61 {
	unsigned short m1:3;
	unsigned long m2:3;
	unsigned long long m3:61;
} asih03iw03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH03IW03HS00 {
	unsigned short m1:3;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asih03iw03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asih03iw03hb00.m1);
	printf("%d\n" , asih03iw03hb00.m2);
	printf("%u\n"  , asih03iw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03ib03.m1);
	printf("%d\n" , asih03iw03ib03.m2);
	printf("%u\n"  , asih03iw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03ib05.m1);
	printf("%d\n" , asih03iw03ib05.m2);
	printf("%u\n"  , asih03iw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03hh00.m1);
	printf("%d\n" , asih03iw03hh00.m2);
	printf("%u\n"  , asih03iw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03ih03.m1);
	printf("%d\n" , asih03iw03ih03.m2);
	printf("%u\n"  , asih03iw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03ih13.m1);
	printf("%d\n" , asih03iw03ih13.m2);
	printf("%u\n"  , asih03iw03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03hw00.m1);
	printf("%d\n" , asih03iw03hw00.m2);
	printf("%lu\n" , asih03iw03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03iw03.m1);
	printf("%d\n" , asih03iw03iw03.m2);
	printf("%d\n" , asih03iw03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03iw29.m1);
	printf("%d\n" , asih03iw03iw29.m2);
	printf("%d\n" , asih03iw03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03hd00.m1);
	printf("%d\n" , asih03iw03hd00.m2);
	printf("%llu\n", asih03iw03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03id03.m1);
	printf("%d\n" , asih03iw03id03.m2);
	printf("%llu\n", (unsigned long long)asih03iw03id03.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03id61.m1);
	printf("%d\n" , asih03iw03id61.m2);
	printf("%llu\n", (unsigned long long)asih03iw03id61.m3);
	printf("\n");

	printf("%u\n"  , asih03iw03hs00.m1);
	printf("%d\n" , asih03iw03hs00.m2);
	printf("%u\n"  , asih03iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
