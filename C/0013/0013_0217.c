#include <stdio.h>                                              

struct ASIH13JW00HB00 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned char m3;
} asih13jw00hb00 = { 1, 2 };

struct ASIH13JW00IB03 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned char m3:3;
} asih13jw00ib03 = { 1, 2 };

struct ASIH13JW00IB05 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned char m3:5;
} asih13jw00ib05 = { 1, 2 };

struct ASIH13JW00HH00 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned short m3;
} asih13jw00hh00 = { 1, 2 };

struct ASIH13JW00IH03 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned short m3:3;
} asih13jw00ih03 = { 1, 2 };

struct ASIH13JW00IH13 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned short m3:13;
} asih13jw00ih13 = { 1, 2 };

struct ASIH13JW00HW00 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned long m3;
} asih13jw00hw00 = { 1, 2 };

struct ASIH13JW00IW03 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned long m3:3;
} asih13jw00iw03 = { 1, 2 };

struct ASIH13JW00IW29 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned long m3:29;
} asih13jw00iw29 = { 1, 2 };

struct ASIH13JW00HD00 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned long long m3;
} asih13jw00hd00 = { 1, 2 };

struct ASIH13JW00ID03 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned long long m3:3;
} asih13jw00id03 = { 1, 2 };

struct ASIH13JW00ID61 {
	unsigned short m1:13;
	unsigned long   :0;
	unsigned long long m3:61;
} asih13jw00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13JW00HS00 {
	unsigned short m1:13;
	unsigned long   :0;
	struct TAGHB00 m3;
} asih13jw00hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asih13jw00hb00.m1);
	printf("%u\n"  , asih13jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00ib03.m1);
	printf("%u\n"  , asih13jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00ib05.m1);
	printf("%u\n"  , asih13jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00hh00.m1);
	printf("%u\n"  , asih13jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00ih03.m1);
	printf("%u\n"  , asih13jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00ih13.m1);
	printf("%u\n"  , asih13jw00ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00hw00.m1);
	printf("%lu\n" , asih13jw00hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00iw03.m1);
	printf("%d\n" , asih13jw00iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00iw29.m1);
	printf("%d\n" , asih13jw00iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00hd00.m1);
	printf("%llu\n", asih13jw00hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00id03.m1);
	printf("%llu\n", (unsigned long long)asih13jw00id03.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00id61.m1);
	printf("%llu\n", (unsigned long long)asih13jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asih13jw00hs00.m1);
	printf("%u\n"  , asih13jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
