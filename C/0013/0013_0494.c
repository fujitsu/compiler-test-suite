#include <stdio.h>                                              

struct ASJW29JH00HB00 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned char m3;
} asjw29jh00hb00 = { 1 };

struct ASJW29JH00IB03 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned char m3:3;
} asjw29jh00ib03 = { 1 };

struct ASJW29JH00IB05 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned char m3:5;
} asjw29jh00ib05 = { 1 };

struct ASJW29JH00HH00 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned short m3;
} asjw29jh00hh00 = { 1 };

struct ASJW29JH00IH03 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned short m3:3;
} asjw29jh00ih03 = { 1 };

struct ASJW29JH00IH13 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned short m3:13;
} asjw29jh00ih13 = { 1 };

struct ASJW29JH00HW00 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned long m3;
} asjw29jh00hw00 = { 1 };

struct ASJW29JH00IW03 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned long m3:3;
} asjw29jh00iw03 = { 1 };

struct ASJW29JH00IW29 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned long m3:29;
} asjw29jh00iw29 = { 1 };

struct ASJW29JH00HD00 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned long long m3;
} asjw29jh00hd00 = { 1 };

struct ASJW29JH00ID03 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned long long m3:3;
} asjw29jh00id03 = { 1 };

struct ASJW29JH00ID61 {
	unsigned long   :29;
	unsigned short   :0;
	unsigned long long m3:61;
} asjw29jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JH00HS00 {
	unsigned long   :29;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjw29jh00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw29jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jh00hw00.m3);
	printf("\n");

	printf("%d\n" , asjw29jh00iw03.m3);
	printf("\n");

	printf("%d\n" , asjw29jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
