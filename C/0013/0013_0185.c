#include <stdio.h>                                              

struct ASIH03IH13HB00 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned char m3;
} asih03ih13hb00 = { 1, 2, 3 };

struct ASIH03IH13IB03 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned char m3:3;
} asih03ih13ib03 = { 1, 2, 3 };

struct ASIH03IH13IB05 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned char m3:5;
} asih03ih13ib05 = { 1, 2, 3 };

struct ASIH03IH13HH00 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned short m3;
} asih03ih13hh00 = { 1, 2, 3 };

struct ASIH03IH13IH03 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned short m3:3;
} asih03ih13ih03 = { 1, 2, 3 };

struct ASIH03IH13IH13 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned short m3:13;
} asih03ih13ih13 = { 1, 2, 3 };

struct ASIH03IH13HW00 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned long m3;
} asih03ih13hw00 = { 1, 2, 3 };

struct ASIH03IH13IW03 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned long m3:3;
} asih03ih13iw03 = { 1, 2, 3 };

struct ASIH03IH13IW29 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned long m3:29;
} asih03ih13iw29 = { 1, 2, 3 };

struct ASIH03IH13HD00 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned long long m3;
} asih03ih13hd00 = { 1, 2, 3 };

struct ASIH03IH13ID03 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned long long m3:3;
} asih03ih13id03 = { 1, 2, 3 };

struct ASIH03IH13ID61 {
	unsigned short m1:3;
	unsigned short m2:13;
	unsigned long long m3:61;
} asih03ih13id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH03IH13HS00 {
	unsigned short m1:3;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asih03ih13hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asih03ih13hb00.m1);
	printf("%u\n"  , asih03ih13hb00.m2);
	printf("%u\n"  , asih03ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13ib03.m1);
	printf("%u\n"  , asih03ih13ib03.m2);
	printf("%u\n"  , asih03ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13ib05.m1);
	printf("%u\n"  , asih03ih13ib05.m2);
	printf("%u\n"  , asih03ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13hh00.m1);
	printf("%u\n"  , asih03ih13hh00.m2);
	printf("%u\n"  , asih03ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13ih03.m1);
	printf("%u\n"  , asih03ih13ih03.m2);
	printf("%u\n"  , asih03ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13ih13.m1);
	printf("%u\n"  , asih03ih13ih13.m2);
	printf("%u\n"  , asih03ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13hw00.m1);
	printf("%u\n"  , asih03ih13hw00.m2);
	printf("%lu\n" , asih03ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13iw03.m1);
	printf("%u\n"  , asih03ih13iw03.m2);
	printf("%d\n" , asih03ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13iw29.m1);
	printf("%u\n"  , asih03ih13iw29.m2);
	printf("%d\n" , asih03ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13hd00.m1);
	printf("%u\n"  , asih03ih13hd00.m2);
	printf("%llu\n", asih03ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13id03.m1);
	printf("%u\n"  , asih03ih13id03.m2);
	printf("%llu\n", (unsigned long long)asih03ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13id61.m1);
	printf("%u\n"  , asih03ih13id61.m2);
	printf("%llu\n", (unsigned long long)asih03ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asih03ih13hs00.m1);
	printf("%u\n"  , asih03ih13hs00.m2);
	printf("%u\n"  , asih03ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
