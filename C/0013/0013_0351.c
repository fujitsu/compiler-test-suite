#include <stdio.h>                                              

struct ASJD03JD00HB00 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned char m3;
} asjd03jd00hb00 = { 1 };

struct ASJD03JD00IB03 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned char m3:3;
} asjd03jd00ib03 = { 1 };

struct ASJD03JD00IB05 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned char m3:5;
} asjd03jd00ib05 = { 1 };

struct ASJD03JD00HH00 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned short m3;
} asjd03jd00hh00 = { 1 };

struct ASJD03JD00IH03 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned short m3:3;
} asjd03jd00ih03 = { 1 };

struct ASJD03JD00IH13 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned short m3:13;
} asjd03jd00ih13 = { 1 };

struct ASJD03JD00HW00 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned long m3;
} asjd03jd00hw00 = { 1 };

struct ASJD03JD00IW03 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned long m3:3;
} asjd03jd00iw03 = { 1 };

struct ASJD03JD00IW29 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned long m3:29;
} asjd03jd00iw29 = { 1 };

struct ASJD03JD00HD00 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned long long m3;
} asjd03jd00hd00 = { 1 };

struct ASJD03JD00ID03 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjd03jd00id03 = { 1 };

struct ASJD03JD00ID61 {
	unsigned long long   :3;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjd03jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03JD00HS00 {
	unsigned long long   :3;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjd03jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd03jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd03jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjd03jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjd03jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjd03jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
