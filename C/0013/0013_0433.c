#include <stdio.h>                                              

struct ASJH13JD61HB00 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned char m3;
} asjh13jd61hb00 = { 1 };

struct ASJH13JD61IB03 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned char m3:3;
} asjh13jd61ib03 = { 1 };

struct ASJH13JD61IB05 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned char m3:5;
} asjh13jd61ib05 = { 1 };

struct ASJH13JD61HH00 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned short m3;
} asjh13jd61hh00 = { 1 };

struct ASJH13JD61IH03 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned short m3:3;
} asjh13jd61ih03 = { 1 };

struct ASJH13JD61IH13 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned short m3:13;
} asjh13jd61ih13 = { 1 };

struct ASJH13JD61HW00 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned long m3;
} asjh13jd61hw00 = { 1 };

struct ASJH13JD61IW03 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned long m3:3;
} asjh13jd61iw03 = { 1 };

struct ASJH13JD61IW29 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned long m3:29;
} asjh13jd61iw29 = { 1 };

struct ASJH13JD61HD00 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned long long m3;
} asjh13jd61hd00 = { 1 };

struct ASJH13JD61ID03 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjh13jd61id03 = { 1 };

struct ASJH13JD61ID61 {
	unsigned short   :13;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjh13jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JD61HS00 {
	unsigned short   :13;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjh13jd61hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh13jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jd61hw00.m3);
	printf("\n");

	printf("%d\n" , asjh13jd61iw03.m3);
	printf("\n");

	printf("%d\n" , asjh13jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
