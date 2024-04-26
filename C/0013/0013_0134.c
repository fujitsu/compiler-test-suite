#include <stdio.h>                                              

struct ASIB05JH00HB00 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned char m3;
} asib05jh00hb00 = { 1, 2 };

struct ASIB05JH00IB03 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned char m3:3;
} asib05jh00ib03 = { 1, 2 };

struct ASIB05JH00IB05 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned char m3:5;
} asib05jh00ib05 = { 1, 2 };

struct ASIB05JH00HH00 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned short m3;
} asib05jh00hh00 = { 1, 2 };

struct ASIB05JH00IH03 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned short m3:3;
} asib05jh00ih03 = { 1, 2 };

struct ASIB05JH00IH13 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned short m3:13;
} asib05jh00ih13 = { 1, 2 };

struct ASIB05JH00HW00 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned long m3;
} asib05jh00hw00 = { 1, 2 };

struct ASIB05JH00IW03 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned long m3:3;
} asib05jh00iw03 = { 1, 2 };

struct ASIB05JH00IW29 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned long m3:29;
} asib05jh00iw29 = { 1, 2 };

struct ASIB05JH00HD00 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned long long m3;
} asib05jh00hd00 = { 1, 2 };

struct ASIB05JH00ID03 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned long long m3:3;
} asib05jh00id03 = { 1, 2 };

struct ASIB05JH00ID61 {
	unsigned char m1:5;
	unsigned short   :0;
	unsigned long long m3:61;
} asib05jh00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB05JH00HS00 {
	unsigned char m1:5;
	unsigned short   :0;
	struct TAGHB00 m3;
} asib05jh00hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asib05jh00hb00.m1);
	printf("%u\n"  , asib05jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00ib03.m1);
	printf("%u\n"  , asib05jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00ib05.m1);
	printf("%u\n"  , asib05jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00hh00.m1);
	printf("%u\n"  , asib05jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00ih03.m1);
	printf("%u\n"  , asib05jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00ih13.m1);
	printf("%u\n"  , asib05jh00ih13.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00hw00.m1);
	printf("%lu\n" , asib05jh00hw00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00iw03.m1);
	printf("%d\n" , asib05jh00iw03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00iw29.m1);
	printf("%d\n" , asib05jh00iw29.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00hd00.m1);
	printf("%llu\n", asib05jh00hd00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00id03.m1);
	printf("%llu\n", (unsigned long long)asib05jh00id03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00id61.m1);
	printf("%llu\n", (unsigned long long)asib05jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asib05jh00hs00.m1);
	printf("%u\n"  , asib05jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
