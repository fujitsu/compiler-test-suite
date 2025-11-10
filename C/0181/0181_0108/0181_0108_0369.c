
	
	
	
	

#include <stdio.h>                                              

struct ASJD61JB05HB00 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned char m3;
} asjd61jb05hb00 = { 1 };

struct ASJD61JB05IB03 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned char m3:3;
} asjd61jb05ib03 = { 1 };

struct ASJD61JB05IB05 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned char m3:5;
} asjd61jb05ib05 = { 1 };

struct ASJD61JB05HH00 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned short m3;
} asjd61jb05hh00 = { 1 };

struct ASJD61JB05IH03 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned short m3:3;
} asjd61jb05ih03 = { 1 };

struct ASJD61JB05IH13 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned short m3:13;
} asjd61jb05ih13 = { 1 };

struct ASJD61JB05HW00 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned long m3;
} asjd61jb05hw00 = { 1 };

struct ASJD61JB05IW03 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned long m3:3;
} asjd61jb05iw03 = { 1 };

struct ASJD61JB05IW29 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned long m3:29;
} asjd61jb05iw29 = { 1 };

struct ASJD61JB05HD00 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned long long m3;
} asjd61jb05hd00 = { 1 };

struct ASJD61JB05ID03 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned long long m3:3;
} asjd61jb05id03 = { 1 };

struct ASJD61JB05ID61 {
	unsigned long long   :61;
	unsigned char   :5;
	unsigned long long m3:61;
} asjd61jb05id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JB05HS00 {
	unsigned long long   :61;
	unsigned char   :5;
	struct TAGHB00 m3;
} asjd61jb05hs00 = { { 1 } };

int lto_sub_370() {

	printf("%u\n"  , asjd61jb05hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb05ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb05ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb05hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb05ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb05ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jb05hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd61jb05iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd61jb05iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jb05hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jb05id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jb05id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb05hs00.m3.m1);
	printf("\n");

	return 0;
}
