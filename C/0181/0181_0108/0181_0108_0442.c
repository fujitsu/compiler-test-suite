
	
	
	
	

#include <stdio.h>                                              

struct ASJW00JW00HB00 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned char m3;
} asjw00jw00hb00 = { 1 };

struct ASJW00JW00IB03 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned char m3:3;
} asjw00jw00ib03 = { 1 };

struct ASJW00JW00IB05 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned char m3:5;
} asjw00jw00ib05 = { 1 };

struct ASJW00JW00HH00 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned short m3;
} asjw00jw00hh00 = { 1 };

struct ASJW00JW00IH03 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned short m3:3;
} asjw00jw00ih03 = { 1 };

struct ASJW00JW00IH13 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned short m3:13;
} asjw00jw00ih13 = { 1 };

struct ASJW00JW00HW00 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3;
} asjw00jw00hw00 = { 1 };

struct ASJW00JW00IW03 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3:3;
} asjw00jw00iw03 = { 1 };

struct ASJW00JW00IW29 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long m3:29;
} asjw00jw00iw29 = { 1 };

struct ASJW00JW00HD00 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long long m3;
} asjw00jw00hd00 = { 1 };

struct ASJW00JW00ID03 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long long m3:3;
} asjw00jw00id03 = { 1 };

struct ASJW00JW00ID61 {
	unsigned long   :0;
	unsigned long   :0;
	unsigned long long m3:61;
} asjw00jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW00JW00HS00 {
	unsigned long   :0;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjw00jw00hs00 = { { 1 } };

int lto_sub_457() {

	printf("%u\n"  , asjw00jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw00jw00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw00jw00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw00jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw00jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
