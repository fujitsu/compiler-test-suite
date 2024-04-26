#include <stdio.h>                                              

struct ASID61JB00HB00 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned char m3;
} asid61jb00hb00 = { 1, 2 };

struct ASID61JB00IB03 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned char m3:3;
} asid61jb00ib03 = { 1, 2 };

struct ASID61JB00IB05 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned char m3:5;
} asid61jb00ib05 = { 1, 2 };

struct ASID61JB00HH00 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned short m3;
} asid61jb00hh00 = { 1, 2 };

struct ASID61JB00IH03 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned short m3:3;
} asid61jb00ih03 = { 1, 2 };

struct ASID61JB00IH13 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned short m3:13;
} asid61jb00ih13 = { 1, 2 };

struct ASID61JB00HW00 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned long m3;
} asid61jb00hw00 = { 1, 2 };

struct ASID61JB00IW03 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned long m3:3;
} asid61jb00iw03 = { 1, 2 };

struct ASID61JB00IW29 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned long m3:29;
} asid61jb00iw29 = { 1, 2 };

struct ASID61JB00HD00 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned long long m3;
} asid61jb00hd00 = { 1, 2 };

struct ASID61JB00ID03 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned long long m3:3;
} asid61jb00id03 = { 1, 2 };

struct ASID61JB00ID61 {
	unsigned long long m1:61;
	unsigned char   :0;
	unsigned long long m3:61;
} asid61jb00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JB00HS00 {
	unsigned long long m1:61;
	unsigned char   :0;
	struct TAGHB00 m3;
} asid61jb00hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asid61jb00hb00.m1);
	printf("%u\n"  , asid61jb00hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00ib03.m1);
	printf("%u\n"  , asid61jb00ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00ib05.m1);
	printf("%u\n"  , asid61jb00ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00hh00.m1);
	printf("%u\n"  , asid61jb00hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00ih03.m1);
	printf("%u\n"  , asid61jb00ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00ih13.m1);
	printf("%u\n"  , asid61jb00ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00hw00.m1);
	printf("%lu\n" , asid61jb00hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00iw03.m1);
	printf("%d\n" , asid61jb00iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00iw29.m1);
	printf("%d\n" , asid61jb00iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00hd00.m1);
	printf("%llu\n", asid61jb00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00id03.m1);
	printf("%llu\n", (unsigned long long)asid61jb00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00id61.m1);
	printf("%llu\n", (unsigned long long)asid61jb00id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jb00hs00.m1);
	printf("%u\n"  , asid61jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
