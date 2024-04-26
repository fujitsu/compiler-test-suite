#include <stdio.h>                                              

struct ASJB05JD00HB00 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned char m3;
} asjb05jd00hb00 = { 1 };

struct ASJB05JD00IB03 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned char m3:3;
} asjb05jd00ib03 = { 1 };

struct ASJB05JD00IB05 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned char m3:5;
} asjb05jd00ib05 = { 1 };

struct ASJB05JD00HH00 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned short m3;
} asjb05jd00hh00 = { 1 };

struct ASJB05JD00IH03 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned short m3:3;
} asjb05jd00ih03 = { 1 };

struct ASJB05JD00IH13 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned short m3:13;
} asjb05jd00ih13 = { 1 };

struct ASJB05JD00HW00 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned long m3;
} asjb05jd00hw00 = { 1 };

struct ASJB05JD00IW03 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned long m3:3;
} asjb05jd00iw03 = { 1 };

struct ASJB05JD00IW29 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned long m3:29;
} asjb05jd00iw29 = { 1 };

struct ASJB05JD00HD00 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned long long m3;
} asjb05jd00hd00 = { 1 };

struct ASJB05JD00ID03 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjb05jd00id03 = { 1 };

struct ASJB05JD00ID61 {
	unsigned char   :5;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjb05jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JD00HS00 {
	unsigned char   :5;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjb05jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb05jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjb05jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjb05jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
