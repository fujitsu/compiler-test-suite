
	
	
	
	

#include <stdio.h>                                              

struct ASJW29JB05HB00 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned char m3;
} asjw29jb05hb00 = { 1 };

struct ASJW29JB05IB03 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned char m3:3;
} asjw29jb05ib03 = { 1 };

struct ASJW29JB05IB05 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned char m3:5;
} asjw29jb05ib05 = { 1 };

struct ASJW29JB05HH00 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned short m3;
} asjw29jb05hh00 = { 1 };

struct ASJW29JB05IH03 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned short m3:3;
} asjw29jb05ih03 = { 1 };

struct ASJW29JB05IH13 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned short m3:13;
} asjw29jb05ih13 = { 1 };

struct ASJW29JB05HW00 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned long m3;
} asjw29jb05hw00 = { 1 };

struct ASJW29JB05IW03 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned long m3:3;
} asjw29jb05iw03 = { 1 };

struct ASJW29JB05IW29 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned long m3:29;
} asjw29jb05iw29 = { 1 };

struct ASJW29JB05HD00 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned long long m3;
} asjw29jb05hd00 = { 1 };

struct ASJW29JB05ID03 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned long long m3:3;
} asjw29jb05id03 = { 1 };

struct ASJW29JB05ID61 {
	unsigned long   :29;
	unsigned char   :5;
	unsigned long long m3:61;
} asjw29jb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JB05HS00 {
	unsigned long   :29;
	unsigned char   :5;
	struct TAGHB00 m3;
} asjw29jb05hs00 = { { 1 } };

int lto_sub_490() {

	printf("%u\n"  , asjw29jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb05hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb05iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw29jb05iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
