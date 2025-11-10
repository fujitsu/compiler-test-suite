
	
	
	
	

#include <stdio.h>                                              

struct ASJH00JW00HB00 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned char m3;
} asjh00jw00hb00 = { 1 };

struct ASJH00JW00IB03 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned char m3:3;
} asjh00jw00ib03 = { 1 };

struct ASJH00JW00IB05 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned char m3:5;
} asjh00jw00ib05 = { 1 };

struct ASJH00JW00HH00 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned short m3;
} asjh00jw00hh00 = { 1 };

struct ASJH00JW00IH03 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned short m3:3;
} asjh00jw00ih03 = { 1 };

struct ASJH00JW00IH13 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned short m3:13;
} asjh00jw00ih13 = { 1 };

struct ASJH00JW00HW00 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned long m3;
} asjh00jw00hw00 = { 1 };

struct ASJH00JW00IW03 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned long m3:3;
} asjh00jw00iw03 = { 1 };

struct ASJH00JW00IW29 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned long m3:29;
} asjh00jw00iw29 = { 1 };

struct ASJH00JW00HD00 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned long long m3;
} asjh00jw00hd00 = { 1 };

struct ASJH00JW00ID03 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned long long m3:3;
} asjh00jw00id03 = { 1 };

struct ASJH00JW00ID61 {
	unsigned short   :0;
	unsigned long   :0;
	unsigned long long m3:61;
} asjh00jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH00JW00HS00 {
	unsigned short   :0;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjh00jw00hs00 = { { 1 } };

int lto_sub_397() {

	printf("%u\n"  , asjh00jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh00jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh00jw00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjh00jw00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjh00jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh00jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh00jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
