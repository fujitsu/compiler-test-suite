
	
	
	
	

#include <stdio.h>                                              

struct ASJB00JH00HB00 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned char m3;
} asjb00jh00hb00 = { 1 };

struct ASJB00JH00IB03 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned char m3:3;
} asjb00jh00ib03 = { 1 };

struct ASJB00JH00IB05 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned char m3:5;
} asjb00jh00ib05 = { 1 };

struct ASJB00JH00HH00 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned short m3;
} asjb00jh00hh00 = { 1 };

struct ASJB00JH00IH03 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned short m3:3;
} asjb00jh00ih03 = { 1 };

struct ASJB00JH00IH13 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned short m3:13;
} asjb00jh00ih13 = { 1 };

struct ASJB00JH00HW00 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned long m3;
} asjb00jh00hw00 = { 1 };

struct ASJB00JH00IW03 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned long m3:3;
} asjb00jh00iw03 = { 1 };

struct ASJB00JH00IW29 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned long m3:29;
} asjb00jh00iw29 = { 1 };

struct ASJB00JH00HD00 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned long long m3;
} asjb00jh00hd00 = { 1 };

struct ASJB00JH00ID03 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned long long m3:3;
} asjb00jh00id03 = { 1 };

struct ASJB00JH00ID61 {
	unsigned char   :0;
	unsigned short   :0;
	unsigned long long m3:61;
} asjb00jh00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JH00HS00 {
	unsigned char   :0;
	unsigned short   :0;
	struct TAGHB00 m3;
} asjb00jh00hs00 = { { 1 } };

int lto_sub_274() {

	printf("%u\n"  , asjb00jh00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jh00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb00jh00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb00jh00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jh00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jh00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jh00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
