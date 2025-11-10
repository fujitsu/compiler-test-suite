
	
	
	
	

#include <stdio.h>                                              

struct ASJD61IB05HB00 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned char m3;
} asjd61ib05hb00 = { 1, 2 };

struct ASJD61IB05IB03 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned char m3:3;
} asjd61ib05ib03 = { 1, 2 };

struct ASJD61IB05IB05 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned char m3:5;
} asjd61ib05ib05 = { 1, 2 };

struct ASJD61IB05HH00 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned short m3;
} asjd61ib05hh00 = { 1, 2 };

struct ASJD61IB05IH03 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned short m3:3;
} asjd61ib05ih03 = { 1, 2 };

struct ASJD61IB05IH13 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned short m3:13;
} asjd61ib05ih13 = { 1, 2 };

struct ASJD61IB05HW00 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned long m3;
} asjd61ib05hw00 = { 1, 2 };

struct ASJD61IB05IW03 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned long m3:3;
} asjd61ib05iw03 = { 1, 2 };

struct ASJD61IB05IW29 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned long m3:29;
} asjd61ib05iw29 = { 1, 2 };

struct ASJD61IB05HD00 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned long long m3;
} asjd61ib05hd00 = { 1, 2 };

struct ASJD61IB05ID03 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned long long m3:3;
} asjd61ib05id03 = { 1, 2 };

struct ASJD61IB05ID61 {
	unsigned long long   :61;
	unsigned char m2:5;
	unsigned long long m3:61;
} asjd61ib05id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61IB05HS00 {
	unsigned long long   :61;
	unsigned char m2:5;
	struct TAGHB00 m3;
} asjd61ib05hs00 = { 1, { 2 } };

int lto_sub_361() {

	printf("%u\n"  , asjd61ib05hb00.m2);
	printf("%u\n"  , asjd61ib05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05ib03.m2);
	printf("%u\n"  , asjd61ib05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05ib05.m2);
	printf("%u\n"  , asjd61ib05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05hh00.m2);
	printf("%u\n"  , asjd61ib05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05ih03.m2);
	printf("%u\n"  , asjd61ib05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05ih13.m2);
	printf("%u\n"  , asjd61ib05ih13.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05hw00.m2);
	printf("%lu\n" , asjd61ib05hw00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05iw03.m2);
	printf("%lu\n" , asjd61ib05iw03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05iw29.m2);
	printf("%lu\n" , asjd61ib05iw29.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05hd00.m2);
	printf("%llu\n", asjd61ib05hd00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05id03.m2);
	printf("%llu\n", (unsigned long long)asjd61ib05id03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05id61.m2);
	printf("%llu\n", (unsigned long long)asjd61ib05id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61ib05hs00.m2);
	printf("%u\n"  , asjd61ib05hs00.m3.m1);
	printf("\n");

	return 0;
}
