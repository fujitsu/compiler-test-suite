
	
	
	
	

#include <stdio.h>                                              

struct ASJB00JW29HB00 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned char m3;
} asjb00jw29hb00 = { 1 };

struct ASJB00JW29IB03 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned char m3:3;
} asjb00jw29ib03 = { 1 };

struct ASJB00JW29IB05 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned char m3:5;
} asjb00jw29ib05 = { 1 };

struct ASJB00JW29HH00 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned short m3;
} asjb00jw29hh00 = { 1 };

struct ASJB00JW29IH03 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned short m3:3;
} asjb00jw29ih03 = { 1 };

struct ASJB00JW29IH13 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned short m3:13;
} asjb00jw29ih13 = { 1 };

struct ASJB00JW29HW00 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned long m3;
} asjb00jw29hw00 = { 1 };

struct ASJB00JW29IW03 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned long m3:3;
} asjb00jw29iw03 = { 1 };

struct ASJB00JW29IW29 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned long m3:29;
} asjb00jw29iw29 = { 1 };

struct ASJB00JW29HD00 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned long long m3;
} asjb00jw29hd00 = { 1 };

struct ASJB00JW29ID03 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned long long m3:3;
} asjb00jw29id03 = { 1 };

struct ASJB00JW29ID61 {
	unsigned char   :0;
	unsigned long   :29;
	unsigned long long m3:61;
} asjb00jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JW29HS00 {
	unsigned char   :0;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjb00jw29hs00 = { { 1 } };

int lto_sub_279() {

	printf("%u\n"  , asjb00jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw29hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw29iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb00jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
