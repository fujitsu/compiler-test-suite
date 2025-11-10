
	
	
	
	

#include <stdio.h>                                              

struct ASJD61IW29HB00 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned char m3;
} asjd61iw29hb00 = { 1, 2 };

struct ASJD61IW29IB03 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned char m3:3;
} asjd61iw29ib03 = { 1, 2 };

struct ASJD61IW29IB05 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned char m3:5;
} asjd61iw29ib05 = { 1, 2 };

struct ASJD61IW29HH00 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned short m3;
} asjd61iw29hh00 = { 1, 2 };

struct ASJD61IW29IH03 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned short m3:3;
} asjd61iw29ih03 = { 1, 2 };

struct ASJD61IW29IH13 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned short m3:13;
} asjd61iw29ih13 = { 1, 2 };

struct ASJD61IW29HW00 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned long m3;
} asjd61iw29hw00 = { 1, 2 };

struct ASJD61IW29IW03 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned long m3:3;
} asjd61iw29iw03 = { 1, 2 };

struct ASJD61IW29IW29 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned long m3:29;
} asjd61iw29iw29 = { 1, 2 };

struct ASJD61IW29HD00 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned long long m3;
} asjd61iw29hd00 = { 1, 2 };

struct ASJD61IW29ID03 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned long long m3:3;
} asjd61iw29id03 = { 1, 2 };

struct ASJD61IW29ID61 {
	unsigned long long   :61;
	unsigned long m2:29;
	unsigned long long m3:61;
} asjd61iw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61IW29HS00 {
	unsigned long long   :61;
	unsigned long m2:29;
	struct TAGHB00 m3;
} asjd61iw29hs00 = { 1, { 2 } };

int lto_sub_367() {

	printf("%lu\n" , asjd61iw29hb00.m2);
	printf("%u\n"  , asjd61iw29hb00.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29ib03.m2);
	printf("%u\n"  , asjd61iw29ib03.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29ib05.m2);
	printf("%u\n"  , asjd61iw29ib05.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29hh00.m2);
	printf("%u\n"  , asjd61iw29hh00.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29ih03.m2);
	printf("%u\n"  , asjd61iw29ih03.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29ih13.m2);
	printf("%u\n"  , asjd61iw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29hw00.m2);
	printf("%lu\n" , asjd61iw29hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29iw03.m2);
	printf("%lu\n" , asjd61iw29iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29iw29.m2);
	printf("%lu\n" , asjd61iw29iw29.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29hd00.m2);
	printf("%llu\n", asjd61iw29hd00.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29id03.m2);
	printf("%llu\n", (unsigned long long)asjd61iw29id03.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29id61.m2);
	printf("%llu\n", (unsigned long long)asjd61iw29id61.m3);
	printf("\n");

	printf("%lu\n" , asjd61iw29hs00.m2);
	printf("%u\n"  , asjd61iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
