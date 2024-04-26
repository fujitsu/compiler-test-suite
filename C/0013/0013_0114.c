#include <stdio.h>                                              

struct ASIB03JH00HB00 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned char m3;
} asib03jh00hb00 = { 1, 2 };

struct ASIB03JH00IB03 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned char m3:3;
} asib03jh00ib03 = { 1, 2 };

struct ASIB03JH00IB05 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned char m3:5;
} asib03jh00ib05 = { 1, 2 };

struct ASIB03JH00HH00 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned short m3;
} asib03jh00hh00 = { 1, 2 };

struct ASIB03JH00IH03 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned short m3:3;
} asib03jh00ih03 = { 1, 2 };

struct ASIB03JH00IH13 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned short m3:13;
} asib03jh00ih13 = { 1, 2 };

struct ASIB03JH00HW00 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned long m3;
} asib03jh00hw00 = { 1, 2 };

struct ASIB03JH00IW03 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned long m3:3;
} asib03jh00iw03 = { 1, 2 };

struct ASIB03JH00IW29 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned long m3:29;
} asib03jh00iw29 = { 1, 2 };

struct ASIB03JH00HD00 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned long long m3;
} asib03jh00hd00 = { 1, 2 };

struct ASIB03JH00ID03 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned long long m3:3;
} asib03jh00id03 = { 1, 2 };

struct ASIB03JH00ID61 {
	unsigned char m1:3;
	unsigned short   :0;
	unsigned long long m3:61;
} asib03jh00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB03JH00HS00 {
	unsigned char m1:3;
	unsigned short   :0;
	struct TAGHB00 m3;
} asib03jh00hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asib03jh00hb00.m1);
	printf("%u\n"  , asib03jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00ib03.m1);
	printf("%u\n"  , asib03jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00ib05.m1);
	printf("%u\n"  , asib03jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00hh00.m1);
	printf("%u\n"  , asib03jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00ih03.m1);
	printf("%u\n"  , asib03jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00ih13.m1);
	printf("%u\n"  , asib03jh00ih13.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00hw00.m1);
	printf("%lu\n" , asib03jh00hw00.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00iw03.m1);
	printf("%d\n" , asib03jh00iw03.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00iw29.m1);
	printf("%d\n" , asib03jh00iw29.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00hd00.m1);
	printf("%llu\n", asib03jh00hd00.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00id03.m1);
	printf("%llu\n", (unsigned long long)asib03jh00id03.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00id61.m1);
	printf("%llu\n", (unsigned long long)asib03jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asib03jh00hs00.m1);
	printf("%u\n"  , asib03jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
