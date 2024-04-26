#include <stdio.h>                                              

struct ASIH13IB03HB00 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned char m3;
} asih13ib03hb00 = { 1, 2, 3 };

struct ASIH13IB03IB03 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned char m3:3;
} asih13ib03ib03 = { 1, 2, 3 };

struct ASIH13IB03IB05 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned char m3:5;
} asih13ib03ib05 = { 1, 2, 3 };

struct ASIH13IB03HH00 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned short m3;
} asih13ib03hh00 = { 1, 2, 3 };

struct ASIH13IB03IH03 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned short m3:3;
} asih13ib03ih03 = { 1, 2, 3 };

struct ASIH13IB03IH13 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned short m3:13;
} asih13ib03ih13 = { 1, 2, 3 };

struct ASIH13IB03HW00 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned long m3;
} asih13ib03hw00 = { 1, 2, 3 };

struct ASIH13IB03IW03 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned long m3:3;
} asih13ib03iw03 = { 1, 2, 3 };

struct ASIH13IB03IW29 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned long m3:29;
} asih13ib03iw29 = { 1, 2, 3 };

struct ASIH13IB03HD00 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned long long m3;
} asih13ib03hd00 = { 1, 2, 3 };

struct ASIH13IB03ID03 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned long long m3:3;
} asih13ib03id03 = { 1, 2, 3 };

struct ASIH13IB03ID61 {
	unsigned short m1:13;
	unsigned char m2:3;
	unsigned long long m3:61;
} asih13ib03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13IB03HS00 {
	unsigned short m1:13;
	unsigned char m2:3;
	struct TAGHB00 m3;
} asih13ib03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asih13ib03hb00.m1);
	printf("%u\n"  , asih13ib03hb00.m2);
	printf("%u\n"  , asih13ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03ib03.m1);
	printf("%u\n"  , asih13ib03ib03.m2);
	printf("%u\n"  , asih13ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03ib05.m1);
	printf("%u\n"  , asih13ib03ib05.m2);
	printf("%u\n"  , asih13ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03hh00.m1);
	printf("%u\n"  , asih13ib03hh00.m2);
	printf("%u\n"  , asih13ib03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03ih03.m1);
	printf("%u\n"  , asih13ib03ih03.m2);
	printf("%u\n"  , asih13ib03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03ih13.m1);
	printf("%u\n"  , asih13ib03ih13.m2);
	printf("%u\n"  , asih13ib03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03hw00.m1);
	printf("%u\n"  , asih13ib03hw00.m2);
	printf("%lu\n" , asih13ib03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03iw03.m1);
	printf("%u\n"  , asih13ib03iw03.m2);
	printf("%d\n" , asih13ib03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03iw29.m1);
	printf("%u\n"  , asih13ib03iw29.m2);
	printf("%d\n" , asih13ib03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03hd00.m1);
	printf("%u\n"  , asih13ib03hd00.m2);
	printf("%llu\n", asih13ib03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03id03.m1);
	printf("%u\n"  , asih13ib03id03.m2);
	printf("%llu\n", (unsigned long long)asih13ib03id03.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03id61.m1);
	printf("%u\n"  , asih13ib03id61.m2);
	printf("%llu\n", (unsigned long long)asih13ib03id61.m3);
	printf("\n");

	printf("%u\n"  , asih13ib03hs00.m1);
	printf("%u\n"  , asih13ib03hs00.m2);
	printf("%u\n"  , asih13ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
