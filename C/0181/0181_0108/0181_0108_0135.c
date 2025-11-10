
	
	
	
	

#include <stdio.h>                                              

struct ASIB05JH13HB00 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned char m3;
} asib05jh13hb00 = { 1, 2 };

struct ASIB05JH13IB03 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned char m3:3;
} asib05jh13ib03 = { 1, 2 };

struct ASIB05JH13IB05 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned char m3:5;
} asib05jh13ib05 = { 1, 2 };

struct ASIB05JH13HH00 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned short m3;
} asib05jh13hh00 = { 1, 2 };

struct ASIB05JH13IH03 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned short m3:3;
} asib05jh13ih03 = { 1, 2 };

struct ASIB05JH13IH13 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned short m3:13;
} asib05jh13ih13 = { 1, 2 };

struct ASIB05JH13HW00 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned long m3;
} asib05jh13hw00 = { 1, 2 };

struct ASIB05JH13IW03 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned long m3:3;
} asib05jh13iw03 = { 1, 2 };

struct ASIB05JH13IW29 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned long m3:29;
} asib05jh13iw29 = { 1, 2 };

struct ASIB05JH13HD00 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned long long m3;
} asib05jh13hd00 = { 1, 2 };

struct ASIB05JH13ID03 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned long long m3:3;
} asib05jh13id03 = { 1, 2 };

struct ASIB05JH13ID61 {
	unsigned char m1:5;
	unsigned short   :13;
	unsigned long long m3:61;
} asib05jh13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB05JH13HS00 {
	unsigned char m1:5;
	unsigned short   :13;
	struct TAGHB00 m3;
} asib05jh13hs00 = { 1, { 2 } };

int lto_sub_136() {

	printf("%u\n"  , asib05jh13hb00.m1);
	printf("%u\n"  , asib05jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13ib03.m1);
	printf("%u\n"  , asib05jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13ib05.m1);
	printf("%u\n"  , asib05jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13hh00.m1);
	printf("%u\n"  , asib05jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13ih03.m1);
	printf("%u\n"  , asib05jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13ih13.m1);
	printf("%u\n"  , asib05jh13ih13.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13hw00.m1);
	printf("%lu\n" , asib05jh13hw00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13iw03.m1);
	printf("%lu\n" , asib05jh13iw03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13iw29.m1);
	printf("%lu\n" , asib05jh13iw29.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13hd00.m1);
	printf("%llu\n", asib05jh13hd00.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13id03.m1);
	printf("%llu\n", (unsigned long long)asib05jh13id03.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13id61.m1);
	printf("%llu\n", (unsigned long long)asib05jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asib05jh13hs00.m1);
	printf("%u\n"  , asib05jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
