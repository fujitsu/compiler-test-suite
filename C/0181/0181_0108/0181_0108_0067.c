                                                          
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JB00HB00 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned char m3;
} ashs00jb00hb00 = { { 1 }, 2 };

struct ASHS00JB00IB03 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned char m3:3;
} ashs00jb00ib03 = { { 1 }, 2 };

struct ASHS00JB00IB05 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned char m3:5;
} ashs00jb00ib05 = { { 1 }, 2 };

struct ASHS00JB00HH00 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned short m3;
} ashs00jb00hh00 = { { 1 }, 2 };

struct ASHS00JB00IH03 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned short m3:3;
} ashs00jb00ih03 = { { 1 }, 2 };

struct ASHS00JB00IH13 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned short m3:13;
} ashs00jb00ih13 = { { 1 }, 2 };

struct ASHS00JB00HW00 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned long m3;
} ashs00jb00hw00 = { { 1 }, 2 };

struct ASHS00JB00IW03 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned long m3:3;
} ashs00jb00iw03 = { { 1 }, 2 };

struct ASHS00JB00IW29 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned long m3:29;
} ashs00jb00iw29 = { { 1 }, 2 };

struct ASHS00JB00HD00 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned long long m3;
} ashs00jb00hd00 = { { 1 }, 2 };

struct ASHS00JB00ID03 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned long long m3:3;
} ashs00jb00id03 = { { 1 }, 2 };

struct ASHS00JB00ID61 {
	struct TAGHB00 m1;
	unsigned char   :0;
	unsigned long long m3:61;
} ashs00jb00id61 = { { 1 }, 2 };

struct ASHS00JB00HS00 {
	struct TAGHB00 m1;
	unsigned char   :0;
	struct TAGHB00 m3;
} ashs00jb00hs00 = { { 1 }, { 2 } };

int lto_sub_68() {

	printf("%u\n"  , ashs00jb00hb00.m1.m1);
	printf("%u\n"  , ashs00jb00hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00ib03.m1.m1);
	printf("%u\n"  , ashs00jb00ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00ib05.m1.m1);
	printf("%u\n"  , ashs00jb00ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00hh00.m1.m1);
	printf("%u\n"  , ashs00jb00hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00ih03.m1.m1);
	printf("%u\n"  , ashs00jb00ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00ih13.m1.m1);
	printf("%u\n"  , ashs00jb00ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00hw00.m1.m1);
	printf("%lu\n" , ashs00jb00hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00iw03.m1.m1);
	printf("%lu\n" , ashs00jb00iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00iw29.m1.m1);
	printf("%lu\n" , ashs00jb00iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00hd00.m1.m1);
	printf("%llu\n", ashs00jb00hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jb00id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jb00id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jb00hs00.m1.m1);
	printf("%u\n"  , ashs00jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
