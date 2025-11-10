
	
	
	
	

#include <stdio.h>                                              

struct ASJD61IH03HB00 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned char m3;
} asjd61ih03hb00 = { 1, 2 };

struct ASJD61IH03IB03 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned char m3:3;
} asjd61ih03ib03 = { 1, 2 };

struct ASJD61IH03IB05 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned char m3:5;
} asjd61ih03ib05 = { 1, 2 };

struct ASJD61IH03HH00 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned short m3;
} asjd61ih03hh00 = { 1, 2 };

struct ASJD61IH03IH03 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned short m3:3;
} asjd61ih03ih03 = { 1, 2 };

struct ASJD61IH03IH13 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned short m3:13;
} asjd61ih03ih13 = { 1, 2 };

struct ASJD61IH03HW00 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned long m3;
} asjd61ih03hw00 = { 1, 2 };

struct ASJD61IH03IW03 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned long m3:3;
} asjd61ih03iw03 = { 1, 2 };

struct ASJD61IH03IW29 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned long m3:29;
} asjd61ih03iw29 = { 1, 2 };

struct ASJD61IH03HD00 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned long long m3;
} asjd61ih03hd00 = { 1, 2 };

struct ASJD61IH03ID03 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned long long m3:3;
} asjd61ih03id03 = { 1, 2 };

struct ASJD61IH03ID61 {
	unsigned long long   :61;
	unsigned short m2:3;
	unsigned long long m3:61;
} asjd61ih03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61IH03HS00 {
	unsigned long long   :61;
	unsigned short m2:3;
	struct TAGHB00 m3;
} asjd61ih03hs00 = { 1, { 2 } };

int lto_sub_364() {

	printf("%u\n"  , asjd61ih03hb00.m2);
	printf("%u\n"  , asjd61ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03ib03.m2);
	printf("%u\n"  , asjd61ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03ib05.m2);
	printf("%u\n"  , asjd61ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03hh00.m2);
	printf("%u\n"  , asjd61ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03ih03.m2);
	printf("%u\n"  , asjd61ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03ih13.m2);
	printf("%u\n"  , asjd61ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03hw00.m2);
	printf("%lu\n" , asjd61ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03iw03.m2);
	printf("%lu\n" , asjd61ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03iw29.m2);
	printf("%lu\n" , asjd61ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03hd00.m2);
	printf("%llu\n", asjd61ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03id03.m2);
	printf("%llu\n", (unsigned long long)asjd61ih03id03.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03id61.m2);
	printf("%llu\n", (unsigned long long)asjd61ih03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61ih03hs00.m2);
	printf("%u\n"  , asjd61ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
