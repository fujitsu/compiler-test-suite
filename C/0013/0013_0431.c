#include <stdio.h>                                              

struct ASJH13JD00HB00 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned char m3;
} asjh13jd00hb00 = { 1 };

struct ASJH13JD00IB03 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned char m3:3;
} asjh13jd00ib03 = { 1 };

struct ASJH13JD00IB05 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned char m3:5;
} asjh13jd00ib05 = { 1 };

struct ASJH13JD00HH00 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned short m3;
} asjh13jd00hh00 = { 1 };

struct ASJH13JD00IH03 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned short m3:3;
} asjh13jd00ih03 = { 1 };

struct ASJH13JD00IH13 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned short m3:13;
} asjh13jd00ih13 = { 1 };

struct ASJH13JD00HW00 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned long m3;
} asjh13jd00hw00 = { 1 };

struct ASJH13JD00IW03 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned long m3:3;
} asjh13jd00iw03 = { 1 };

struct ASJH13JD00IW29 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned long m3:29;
} asjh13jd00iw29 = { 1 };

struct ASJH13JD00HD00 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned long long m3;
} asjh13jd00hd00 = { 1 };

struct ASJH13JD00ID03 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjh13jd00id03 = { 1 };

struct ASJH13JD00ID61 {
	unsigned short   :13;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjh13jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JD00HS00 {
	unsigned short   :13;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjh13jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh13jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjh13jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjh13jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
