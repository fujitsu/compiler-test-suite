#include <stdio.h>                                              

struct ASID61IW29HB00 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned char m3;
} asid61iw29hb00 = { 1, 2, 3 };

struct ASID61IW29IB03 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned char m3:3;
} asid61iw29ib03 = { 1, 2, 3 };

struct ASID61IW29IB05 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned char m3:5;
} asid61iw29ib05 = { 1, 2, 3 };

struct ASID61IW29HH00 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned short m3;
} asid61iw29hh00 = { 1, 2, 3 };

struct ASID61IW29IH03 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned short m3:3;
} asid61iw29ih03 = { 1, 2, 3 };

struct ASID61IW29IH13 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned short m3:13;
} asid61iw29ih13 = { 1, 2, 3 };

struct ASID61IW29HW00 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned long m3;
} asid61iw29hw00 = { 1, 2, 3 };

struct ASID61IW29IW03 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned long m3:3;
} asid61iw29iw03 = { 1, 2, 3 };

struct ASID61IW29IW29 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned long m3:29;
} asid61iw29iw29 = { 1, 2, 3 };

struct ASID61IW29HD00 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned long long m3;
} asid61iw29hd00 = { 1, 2, 3 };

struct ASID61IW29ID03 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned long long m3:3;
} asid61iw29id03 = { 1, 2, 3 };

struct ASID61IW29ID61 {
	unsigned long long m1:61;
	unsigned long m2:29;
	unsigned long long m3:61;
} asid61iw29id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61IW29HS00 {
	unsigned long long m1:61;
	unsigned long m2:29;
	struct TAGHB00 m3;
} asid61iw29hs00 = { 1, 2, { 3 } };

int main() {

	printf("%llu\n", (unsigned long long)asid61iw29hb00.m1);
	printf("%d\n" , asid61iw29hb00.m2);
	printf("%u\n"  , asid61iw29hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29ib03.m1);
	printf("%d\n" , asid61iw29ib03.m2);
	printf("%u\n"  , asid61iw29ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29ib05.m1);
	printf("%d\n" , asid61iw29ib05.m2);
	printf("%u\n"  , asid61iw29ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29hh00.m1);
	printf("%d\n" , asid61iw29hh00.m2);
	printf("%u\n"  , asid61iw29hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29ih03.m1);
	printf("%d\n" , asid61iw29ih03.m2);
	printf("%u\n"  , asid61iw29ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29ih13.m1);
	printf("%d\n" , asid61iw29ih13.m2);
	printf("%u\n"  , asid61iw29ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29hw00.m1);
	printf("%d\n" , asid61iw29hw00.m2);
	printf("%lu\n" , asid61iw29hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29iw03.m1);
	printf("%d\n" , asid61iw29iw03.m2);
	printf("%d\n" , asid61iw29iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29iw29.m1);
	printf("%d\n" , asid61iw29iw29.m2);
	printf("%d\n" , asid61iw29iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29hd00.m1);
	printf("%d\n" , asid61iw29hd00.m2);
	printf("%llu\n", asid61iw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29id03.m1);
	printf("%d\n" , asid61iw29id03.m2);
	printf("%llu\n", (unsigned long long)asid61iw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29id61.m1);
	printf("%d\n" , asid61iw29id61.m2);
	printf("%llu\n", (unsigned long long)asid61iw29id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61iw29hs00.m1);
	printf("%d\n" , asid61iw29hs00.m2);
	printf("%u\n"  , asid61iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
