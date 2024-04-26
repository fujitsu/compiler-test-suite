#include <stdio.h>                                              

struct ASJW29JD61HB00 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned char m3;
} asjw29jd61hb00 = { 1 };

struct ASJW29JD61IB03 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned char m3:3;
} asjw29jd61ib03 = { 1 };

struct ASJW29JD61IB05 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned char m3:5;
} asjw29jd61ib05 = { 1 };

struct ASJW29JD61HH00 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned short m3;
} asjw29jd61hh00 = { 1 };

struct ASJW29JD61IH03 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned short m3:3;
} asjw29jd61ih03 = { 1 };

struct ASJW29JD61IH13 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned short m3:13;
} asjw29jd61ih13 = { 1 };

struct ASJW29JD61HW00 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned long m3;
} asjw29jd61hw00 = { 1 };

struct ASJW29JD61IW03 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned long m3:3;
} asjw29jd61iw03 = { 1 };

struct ASJW29JD61IW29 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned long m3:29;
} asjw29jd61iw29 = { 1 };

struct ASJW29JD61HD00 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned long long m3;
} asjw29jd61hd00 = { 1 };

struct ASJW29JD61ID03 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjw29jd61id03 = { 1 };

struct ASJW29JD61ID61 {
	unsigned long   :29;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjw29jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JD61HS00 {
	unsigned long   :29;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjw29jd61hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw29jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jd61hw00.m3);
	printf("\n");

	printf("%d\n" , asjw29jd61iw03.m3);
	printf("\n");

	printf("%d\n" , asjw29jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
