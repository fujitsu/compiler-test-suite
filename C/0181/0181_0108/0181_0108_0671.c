
	
	
	
	

#include <stdio.h>                                              

struct ASJB05JW29HB00 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned char m3;
} asjb05jw29hb00 = { 1 };

struct ASJB05JW29IB03 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned char m3:3;
} asjb05jw29ib03 = { 1 };

struct ASJB05JW29IB05 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned char m3:5;
} asjb05jw29ib05 = { 1 };

struct ASJB05JW29HH00 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned short m3;
} asjb05jw29hh00 = { 1 };

struct ASJB05JW29IH03 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned short m3:3;
} asjb05jw29ih03 = { 1 };

struct ASJB05JW29IH13 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned short m3:13;
} asjb05jw29ih13 = { 1 };

struct ASJB05JW29HW00 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned long m3;
} asjb05jw29hw00 = { 1 };

struct ASJB05JW29IW03 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned long m3:3;
} asjb05jw29iw03 = { 1 };

struct ASJB05JW29IW29 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned long m3:29;
} asjb05jw29iw29 = { 1 };

struct ASJB05JW29HD00 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned long long m3;
} asjb05jw29hd00 = { 1 };

struct ASJB05JW29ID03 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned long long m3:3;
} asjb05jw29id03 = { 1 };

struct ASJB05JW29ID61 {
	unsigned char   :5;
	unsigned long   :29;
	unsigned long long m3:61;
} asjb05jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JW29HS00 {
	unsigned char   :5;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjb05jw29hs00 = { { 1 } };

int lto_sub_319() {

	printf("%u\n"  , asjb05jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jw29hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb05jw29iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb05jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
