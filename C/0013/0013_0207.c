#include <stdio.h>                                              

struct ASIH13IW29HB00 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned char m3;
} asih13iw29hb00 = { 1, 2, 3 };

struct ASIH13IW29IB03 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned char m3:3;
} asih13iw29ib03 = { 1, 2, 3 };

struct ASIH13IW29IB05 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned char m3:5;
} asih13iw29ib05 = { 1, 2, 3 };

struct ASIH13IW29HH00 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned short m3;
} asih13iw29hh00 = { 1, 2, 3 };

struct ASIH13IW29IH03 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned short m3:3;
} asih13iw29ih03 = { 1, 2, 3 };

struct ASIH13IW29IH13 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned short m3:13;
} asih13iw29ih13 = { 1, 2, 3 };

struct ASIH13IW29HW00 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned long m3;
} asih13iw29hw00 = { 1, 2, 3 };

struct ASIH13IW29IW03 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned long m3:3;
} asih13iw29iw03 = { 1, 2, 3 };

struct ASIH13IW29IW29 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned long m3:29;
} asih13iw29iw29 = { 1, 2, 3 };

struct ASIH13IW29HD00 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned long long m3;
} asih13iw29hd00 = { 1, 2, 3 };

struct ASIH13IW29ID03 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned long long m3:3;
} asih13iw29id03 = { 1, 2, 3 };

struct ASIH13IW29ID61 {
	unsigned short m1:13;
	unsigned long m2:29;
	unsigned long long m3:61;
} asih13iw29id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13IW29HS00 {
	unsigned short m1:13;
	unsigned long m2:29;
	struct TAGHB00 m3;
} asih13iw29hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asih13iw29hb00.m1);
	printf("%d\n" , asih13iw29hb00.m2);
	printf("%u\n"  , asih13iw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29ib03.m1);
	printf("%d\n" , asih13iw29ib03.m2);
	printf("%u\n"  , asih13iw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29ib05.m1);
	printf("%d\n" , asih13iw29ib05.m2);
	printf("%u\n"  , asih13iw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29hh00.m1);
	printf("%d\n" , asih13iw29hh00.m2);
	printf("%u\n"  , asih13iw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29ih03.m1);
	printf("%d\n" , asih13iw29ih03.m2);
	printf("%u\n"  , asih13iw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29ih13.m1);
	printf("%d\n" , asih13iw29ih13.m2);
	printf("%u\n"  , asih13iw29ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29hw00.m1);
	printf("%d\n" , asih13iw29hw00.m2);
	printf("%lu\n" , asih13iw29hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29iw03.m1);
	printf("%d\n" , asih13iw29iw03.m2);
	printf("%d\n" , asih13iw29iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29iw29.m1);
	printf("%d\n" , asih13iw29iw29.m2);
	printf("%d\n" , asih13iw29iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29hd00.m1);
	printf("%d\n" , asih13iw29hd00.m2);
	printf("%llu\n", asih13iw29hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29id03.m1);
	printf("%d\n" , asih13iw29id03.m2);
	printf("%llu\n", (unsigned long long)asih13iw29id03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29id61.m1);
	printf("%d\n" , asih13iw29id61.m2);
	printf("%llu\n", (unsigned long long)asih13iw29id61.m3);
	printf("\n");

	printf("%u\n"  , asih13iw29hs00.m1);
	printf("%d\n" , asih13iw29hs00.m2);
	printf("%u\n"  , asih13iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
