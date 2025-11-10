
	
	
	
	

#include <stdio.h>                                              

struct ASJD00JB00HB00 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned char m3;
} asjd00jb00hb00 = { 1 };

struct ASJD00JB00IB03 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned char m3:3;
} asjd00jb00ib03 = { 1 };

struct ASJD00JB00IB05 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned char m3:5;
} asjd00jb00ib05 = { 1 };

struct ASJD00JB00HH00 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned short m3;
} asjd00jb00hh00 = { 1 };

struct ASJD00JB00IH03 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned short m3:3;
} asjd00jb00ih03 = { 1 };

struct ASJD00JB00IH13 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned short m3:13;
} asjd00jb00ih13 = { 1 };

struct ASJD00JB00HW00 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned long m3;
} asjd00jb00hw00 = { 1 };

struct ASJD00JB00IW03 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned long m3:3;
} asjd00jb00iw03 = { 1 };

struct ASJD00JB00IW29 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned long m3:29;
} asjd00jb00iw29 = { 1 };

struct ASJD00JB00HD00 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned long long m3;
} asjd00jb00hd00 = { 1 };

struct ASJD00JB00ID03 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned long long m3:3;
} asjd00jb00id03 = { 1 };

struct ASJD00JB00ID61 {
	unsigned long long   :0;
	unsigned char   :0;
	unsigned long long m3:61;
} asjd00jb00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD00JB00HS00 {
	unsigned long long   :0;
	unsigned char   :0;
	struct TAGHB00 m3;
} asjd00jb00hs00 = { { 1 } };

int lto_sub_328() {

	printf("%u\n"  , asjd00jb00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd00jb00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd00jb00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd00jb00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd00jb00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd00jb00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd00jb00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd00jb00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd00jb00iw29.m3);
	printf("\n");

	printf("%llu\n", asjd00jb00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00jb00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd00jb00id61.m3);
	printf("\n");

	printf("%u\n"  , asjd00jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
