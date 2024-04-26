#include <stdio.h>                                              

struct ASID61JW00HB00 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned char m3;
} asid61jw00hb00 = { 1, 2 };

struct ASID61JW00IB03 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned char m3:3;
} asid61jw00ib03 = { 1, 2 };

struct ASID61JW00IB05 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned char m3:5;
} asid61jw00ib05 = { 1, 2 };

struct ASID61JW00HH00 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned short m3;
} asid61jw00hh00 = { 1, 2 };

struct ASID61JW00IH03 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned short m3:3;
} asid61jw00ih03 = { 1, 2 };

struct ASID61JW00IH13 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned short m3:13;
} asid61jw00ih13 = { 1, 2 };

struct ASID61JW00HW00 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned long m3;
} asid61jw00hw00 = { 1, 2 };

struct ASID61JW00IW03 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned long m3:3;
} asid61jw00iw03 = { 1, 2 };

struct ASID61JW00IW29 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned long m3:29;
} asid61jw00iw29 = { 1, 2 };

struct ASID61JW00HD00 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned long long m3;
} asid61jw00hd00 = { 1, 2 };

struct ASID61JW00ID03 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned long long m3:3;
} asid61jw00id03 = { 1, 2 };

struct ASID61JW00ID61 {
	unsigned long long m1:61;
	unsigned long   :0;
	unsigned long long m3:61;
} asid61jw00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JW00HS00 {
	unsigned long long m1:61;
	unsigned long   :0;
	struct TAGHB00 m3;
} asid61jw00hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asid61jw00hb00.m1);
	printf("%u\n"  , asid61jw00hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00ib03.m1);
	printf("%u\n"  , asid61jw00ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00ib05.m1);
	printf("%u\n"  , asid61jw00ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00hh00.m1);
	printf("%u\n"  , asid61jw00hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00ih03.m1);
	printf("%u\n"  , asid61jw00ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00ih13.m1);
	printf("%u\n"  , asid61jw00ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00hw00.m1);
	printf("%lu\n" , asid61jw00hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00iw03.m1);
	printf("%d\n" , asid61jw00iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00iw29.m1);
	printf("%d\n" , asid61jw00iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00hd00.m1);
	printf("%llu\n", asid61jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00id03.m1);
	printf("%llu\n", (unsigned long long)asid61jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00id61.m1);
	printf("%llu\n", (unsigned long long)asid61jw00id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw00hs00.m1);
	printf("%u\n"  , asid61jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
