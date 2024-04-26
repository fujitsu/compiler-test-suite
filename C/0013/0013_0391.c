#include <stdio.h>                                              

struct ASJH00JD00HB00 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned char m3;
} asjh00jd00hb00 = { 1 };

struct ASJH00JD00IB03 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned char m3:3;
} asjh00jd00ib03 = { 1 };

struct ASJH00JD00IB05 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned char m3:5;
} asjh00jd00ib05 = { 1 };

struct ASJH00JD00HH00 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned short m3;
} asjh00jd00hh00 = { 1 };

struct ASJH00JD00IH03 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned short m3:3;
} asjh00jd00ih03 = { 1 };

struct ASJH00JD00IH13 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned short m3:13;
} asjh00jd00ih13 = { 1 };

struct ASJH00JD00HW00 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned long m3;
} asjh00jd00hw00 = { 1 };

struct ASJH00JD00IW03 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned long m3:3;
} asjh00jd00iw03 = { 1 };

struct ASJH00JD00IW29 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned long m3:29;
} asjh00jd00iw29 = { 1 };

struct ASJH00JD00HD00 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned long long m3;
} asjh00jd00hd00 = { 1 };

struct ASJH00JD00ID03 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjh00jd00id03 = { 1 };

struct ASJH00JD00ID61 {
	unsigned short   :0;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjh00jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH00JD00HS00 {
	unsigned short   :0;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjh00jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh00jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh00jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjh00jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjh00jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh00jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
