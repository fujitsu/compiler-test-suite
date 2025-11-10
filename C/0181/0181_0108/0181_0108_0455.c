
	
	
	
	

#include <stdio.h>                                              

struct ASJW03JB05HB00 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned char m3;
} asjw03jb05hb00 = { 1 };

struct ASJW03JB05IB03 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned char m3:3;
} asjw03jb05ib03 = { 1 };

struct ASJW03JB05IB05 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned char m3:5;
} asjw03jb05ib05 = { 1 };

struct ASJW03JB05HH00 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned short m3;
} asjw03jb05hh00 = { 1 };

struct ASJW03JB05IH03 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned short m3:3;
} asjw03jb05ih03 = { 1 };

struct ASJW03JB05IH13 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned short m3:13;
} asjw03jb05ih13 = { 1 };

struct ASJW03JB05HW00 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned long m3;
} asjw03jb05hw00 = { 1 };

struct ASJW03JB05IW03 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned long m3:3;
} asjw03jb05iw03 = { 1 };

struct ASJW03JB05IW29 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned long m3:29;
} asjw03jb05iw29 = { 1 };

struct ASJW03JB05HD00 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned long long m3;
} asjw03jb05hd00 = { 1 };

struct ASJW03JB05ID03 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned long long m3:3;
} asjw03jb05id03 = { 1 };

struct ASJW03JB05ID61 {
	unsigned long   :3;
	unsigned char   :5;
	unsigned long long m3:61;
} asjw03jb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW03JB05HS00 {
	unsigned long   :3;
	unsigned char   :5;
	struct TAGHB00 m3;
} asjw03jb05hs00 = { { 1 } };

int lto_sub_470() {

	printf("%u\n"  , asjw03jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw03jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw03jb05hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw03jb05iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw03jb05iw29.m3);
	printf("\n");

	printf("%llu\n", asjw03jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asjw03jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
