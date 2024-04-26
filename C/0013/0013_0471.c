#include <stdio.h>                                              

struct ASJW03JD00HB00 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned char m3;
} asjw03jd00hb00 = { 1 };

struct ASJW03JD00IB03 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned char m3:3;
} asjw03jd00ib03 = { 1 };

struct ASJW03JD00IB05 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned char m3:5;
} asjw03jd00ib05 = { 1 };

struct ASJW03JD00HH00 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned short m3;
} asjw03jd00hh00 = { 1 };

struct ASJW03JD00IH03 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned short m3:3;
} asjw03jd00ih03 = { 1 };

struct ASJW03JD00IH13 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned short m3:13;
} asjw03jd00ih13 = { 1 };

struct ASJW03JD00HW00 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned long m3;
} asjw03jd00hw00 = { 1 };

struct ASJW03JD00IW03 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned long m3:3;
} asjw03jd00iw03 = { 1 };

struct ASJW03JD00IW29 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned long m3:29;
} asjw03jd00iw29 = { 1 };

struct ASJW03JD00HD00 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned long long m3;
} asjw03jd00hd00 = { 1 };

struct ASJW03JD00ID03 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjw03jd00id03 = { 1 };

struct ASJW03JD00ID61 {
	unsigned long   :3;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjw03jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW03JD00HS00 {
	unsigned long   :3;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjw03jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw03jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw03jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjw03jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjw03jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjw03jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
