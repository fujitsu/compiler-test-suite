#include <stdio.h>                                              

struct ASIB05IH13HB00 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned char m3;
} asib05ih13hb00 = { 1, 2, 3 };

struct ASIB05IH13IB03 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned char m3:3;
} asib05ih13ib03 = { 1, 2, 3 };

struct ASIB05IH13IB05 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned char m3:5;
} asib05ih13ib05 = { 1, 2, 3 };

struct ASIB05IH13HH00 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned short m3;
} asib05ih13hh00 = { 1, 2, 3 };

struct ASIB05IH13IH03 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned short m3:3;
} asib05ih13ih03 = { 1, 2, 3 };

struct ASIB05IH13IH13 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned short m3:13;
} asib05ih13ih13 = { 1, 2, 3 };

struct ASIB05IH13HW00 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned long m3;
} asib05ih13hw00 = { 1, 2, 3 };

struct ASIB05IH13IW03 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned long m3:3;
} asib05ih13iw03 = { 1, 2, 3 };

struct ASIB05IH13IW29 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned long m3:29;
} asib05ih13iw29 = { 1, 2, 3 };

struct ASIB05IH13HD00 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned long long m3;
} asib05ih13hd00 = { 1, 2, 3 };

struct ASIB05IH13ID03 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned long long m3:3;
} asib05ih13id03 = { 1, 2, 3 };

struct ASIB05IH13ID61 {
	unsigned char m1:5;
	unsigned short m2:13;
	unsigned long long m3:61;
} asib05ih13id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB05IH13HS00 {
	unsigned char m1:5;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asib05ih13hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asib05ih13hb00.m1);
	printf("%u\n"  , asib05ih13hb00.m2);
	printf("%u\n"  , asib05ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13ib03.m1);
	printf("%u\n"  , asib05ih13ib03.m2);
	printf("%u\n"  , asib05ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13ib05.m1);
	printf("%u\n"  , asib05ih13ib05.m2);
	printf("%u\n"  , asib05ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13hh00.m1);
	printf("%u\n"  , asib05ih13hh00.m2);
	printf("%u\n"  , asib05ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13ih03.m1);
	printf("%u\n"  , asib05ih13ih03.m2);
	printf("%u\n"  , asib05ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13ih13.m1);
	printf("%u\n"  , asib05ih13ih13.m2);
	printf("%u\n"  , asib05ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13hw00.m1);
	printf("%u\n"  , asib05ih13hw00.m2);
	printf("%lu\n" , asib05ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13iw03.m1);
	printf("%u\n"  , asib05ih13iw03.m2);
	printf("%d\n" , asib05ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13iw29.m1);
	printf("%u\n"  , asib05ih13iw29.m2);
	printf("%d\n" , asib05ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13hd00.m1);
	printf("%u\n"  , asib05ih13hd00.m2);
	printf("%llu\n", asib05ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13id03.m1);
	printf("%u\n"  , asib05ih13id03.m2);
	printf("%llu\n", (unsigned long long)asib05ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13id61.m1);
	printf("%u\n"  , asib05ih13id61.m2);
	printf("%llu\n", (unsigned long long)asib05ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asib05ih13hs00.m1);
	printf("%u\n"  , asib05ih13hs00.m2);
	printf("%u\n"  , asib05ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
