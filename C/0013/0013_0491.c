#include <stdio.h>                                              

struct ASJW29JD00HB00 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned char m3;
} asjw29jd00hb00 = { 1 };

struct ASJW29JD00IB03 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned char m3:3;
} asjw29jd00ib03 = { 1 };

struct ASJW29JD00IB05 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned char m3:5;
} asjw29jd00ib05 = { 1 };

struct ASJW29JD00HH00 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned short m3;
} asjw29jd00hh00 = { 1 };

struct ASJW29JD00IH03 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned short m3:3;
} asjw29jd00ih03 = { 1 };

struct ASJW29JD00IH13 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned short m3:13;
} asjw29jd00ih13 = { 1 };

struct ASJW29JD00HW00 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned long m3;
} asjw29jd00hw00 = { 1 };

struct ASJW29JD00IW03 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned long m3:3;
} asjw29jd00iw03 = { 1 };

struct ASJW29JD00IW29 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned long m3:29;
} asjw29jd00iw29 = { 1 };

struct ASJW29JD00HD00 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned long long m3;
} asjw29jd00hd00 = { 1 };

struct ASJW29JD00ID03 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjw29jd00id03 = { 1 };

struct ASJW29JD00ID61 {
	unsigned long   :29;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjw29jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JD00HS00 {
	unsigned long   :29;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjw29jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw29jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjw29jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjw29jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
