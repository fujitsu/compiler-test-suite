#include <stdio.h>                                              

struct ASID61JH13HB00 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned char m3;
} asid61jh13hb00 = { 1, 2 };

struct ASID61JH13IB03 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned char m3:3;
} asid61jh13ib03 = { 1, 2 };

struct ASID61JH13IB05 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned char m3:5;
} asid61jh13ib05 = { 1, 2 };

struct ASID61JH13HH00 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned short m3;
} asid61jh13hh00 = { 1, 2 };

struct ASID61JH13IH03 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned short m3:3;
} asid61jh13ih03 = { 1, 2 };

struct ASID61JH13IH13 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned short m3:13;
} asid61jh13ih13 = { 1, 2 };

struct ASID61JH13HW00 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned long m3;
} asid61jh13hw00 = { 1, 2 };

struct ASID61JH13IW03 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned long m3:3;
} asid61jh13iw03 = { 1, 2 };

struct ASID61JH13IW29 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned long m3:29;
} asid61jh13iw29 = { 1, 2 };

struct ASID61JH13HD00 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned long long m3;
} asid61jh13hd00 = { 1, 2 };

struct ASID61JH13ID03 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned long long m3:3;
} asid61jh13id03 = { 1, 2 };

struct ASID61JH13ID61 {
	unsigned long long m1:61;
	unsigned short   :13;
	unsigned long long m3:61;
} asid61jh13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JH13HS00 {
	unsigned long long m1:61;
	unsigned short   :13;
	struct TAGHB00 m3;
} asid61jh13hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asid61jh13hb00.m1);
	printf("%u\n"  , asid61jh13hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13ib03.m1);
	printf("%u\n"  , asid61jh13ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13ib05.m1);
	printf("%u\n"  , asid61jh13ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13hh00.m1);
	printf("%u\n"  , asid61jh13hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13ih03.m1);
	printf("%u\n"  , asid61jh13ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13ih13.m1);
	printf("%u\n"  , asid61jh13ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13hw00.m1);
	printf("%lu\n" , asid61jh13hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13iw03.m1);
	printf("%d\n" , asid61jh13iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13iw29.m1);
	printf("%d\n" , asid61jh13iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13hd00.m1);
	printf("%llu\n", asid61jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13id03.m1);
	printf("%llu\n", (unsigned long long)asid61jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13id61.m1);
	printf("%llu\n", (unsigned long long)asid61jh13id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jh13hs00.m1);
	printf("%u\n"  , asid61jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
