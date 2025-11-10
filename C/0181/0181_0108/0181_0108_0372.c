
	
	
	
	

#include <stdio.h>                                              

struct ASJD61JD61HB00 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned char m3;
} asjd61jd61hb00 = { 1 };

struct ASJD61JD61IB03 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned char m3:3;
} asjd61jd61ib03 = { 1 };

struct ASJD61JD61IB05 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned char m3:5;
} asjd61jd61ib05 = { 1 };

struct ASJD61JD61HH00 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned short m3;
} asjd61jd61hh00 = { 1 };

struct ASJD61JD61IH03 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned short m3:3;
} asjd61jd61ih03 = { 1 };

struct ASJD61JD61IH13 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned short m3:13;
} asjd61jd61ih13 = { 1 };

struct ASJD61JD61HW00 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned long m3;
} asjd61jd61hw00 = { 1 };

struct ASJD61JD61IW03 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned long m3:3;
} asjd61jd61iw03 = { 1 };

struct ASJD61JD61IW29 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned long m3:29;
} asjd61jd61iw29 = { 1 };

struct ASJD61JD61HD00 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned long long m3;
} asjd61jd61hd00 = { 1 };

struct ASJD61JD61ID03 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjd61jd61id03 = { 1 };

struct ASJD61JD61ID61 {
	unsigned long long   :61;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjd61jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JD61HS00 {
	unsigned long long   :61;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjd61jd61hs00 = { { 1 } };

int lto_sub_373() {

	printf("%u\n"  , asjd61jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , asjd61jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , asjd61jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
