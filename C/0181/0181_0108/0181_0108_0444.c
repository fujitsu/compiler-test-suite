
	
	
	
	

#include <stdio.h>                                              

struct ASJW00JW29HB00 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned char m3;
} asjw00jw29hb00 = { 1 };

struct ASJW00JW29IB03 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned char m3:3;
} asjw00jw29ib03 = { 1 };

struct ASJW00JW29IB05 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned char m3:5;
} asjw00jw29ib05 = { 1 };

struct ASJW00JW29HH00 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned short m3;
} asjw00jw29hh00 = { 1 };

struct ASJW00JW29IH03 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned short m3:3;
} asjw00jw29ih03 = { 1 };

struct ASJW00JW29IH13 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned short m3:13;
} asjw00jw29ih13 = { 1 };

struct ASJW00JW29HW00 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3;
} asjw00jw29hw00 = { 1 };

struct ASJW00JW29IW03 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3:3;
} asjw00jw29iw03 = { 1 };

struct ASJW00JW29IW29 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long m3:29;
} asjw00jw29iw29 = { 1 };

struct ASJW00JW29HD00 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long long m3;
} asjw00jw29hd00 = { 1 };

struct ASJW00JW29ID03 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long long m3:3;
} asjw00jw29id03 = { 1 };

struct ASJW00JW29ID61 {
	unsigned long   :0;
	unsigned long   :29;
	unsigned long long m3:61;
} asjw00jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW00JW29HS00 {
	unsigned long   :0;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjw00jw29hs00 = { { 1 } };

int lto_sub_459() {

	printf("%u\n"  , asjw00jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw00jw29hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw00jw29iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw00jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjw00jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjw00jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
