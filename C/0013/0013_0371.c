#include <stdio.h>                                              

struct ASJD61JD00HB00 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned char m3;
} asjd61jd00hb00 = { 1 };

struct ASJD61JD00IB03 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned char m3:3;
} asjd61jd00ib03 = { 1 };

struct ASJD61JD00IB05 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned char m3:5;
} asjd61jd00ib05 = { 1 };

struct ASJD61JD00HH00 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned short m3;
} asjd61jd00hh00 = { 1 };

struct ASJD61JD00IH03 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned short m3:3;
} asjd61jd00ih03 = { 1 };

struct ASJD61JD00IH13 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned short m3:13;
} asjd61jd00ih13 = { 1 };

struct ASJD61JD00HW00 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned long m3;
} asjd61jd00hw00 = { 1 };

struct ASJD61JD00IW03 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned long m3:3;
} asjd61jd00iw03 = { 1 };

struct ASJD61JD00IW29 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned long m3:29;
} asjd61jd00iw29 = { 1 };

struct ASJD61JD00HD00 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned long long m3;
} asjd61jd00hd00 = { 1 };

struct ASJD61JD00ID03 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned long long m3:3;
} asjd61jd00id03 = { 1 };

struct ASJD61JD00ID61 {
	unsigned long long   :61;
	unsigned long long   :0;
	unsigned long long m3:61;
} asjd61jd00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JD00HS00 {
	unsigned long long   :61;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asjd61jd00hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd61jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jd00hw00.m3);
	printf("\n");

	printf("%d\n" , asjd61jd00iw03.m3);
	printf("\n");

	printf("%d\n" , asjd61jd00iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
