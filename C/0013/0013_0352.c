#include <stdio.h>                                              

struct ASJD03JD03HB00 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned char m3;
} asjd03jd03hb00 = { 1 };

struct ASJD03JD03IB03 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned char m3:3;
} asjd03jd03ib03 = { 1 };

struct ASJD03JD03IB05 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned char m3:5;
} asjd03jd03ib05 = { 1 };

struct ASJD03JD03HH00 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned short m3;
} asjd03jd03hh00 = { 1 };

struct ASJD03JD03IH03 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned short m3:3;
} asjd03jd03ih03 = { 1 };

struct ASJD03JD03IH13 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned short m3:13;
} asjd03jd03ih13 = { 1 };

struct ASJD03JD03HW00 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned long m3;
} asjd03jd03hw00 = { 1 };

struct ASJD03JD03IW03 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned long m3:3;
} asjd03jd03iw03 = { 1 };

struct ASJD03JD03IW29 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned long m3:29;
} asjd03jd03iw29 = { 1 };

struct ASJD03JD03HD00 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned long long m3;
} asjd03jd03hd00 = { 1 };

struct ASJD03JD03ID03 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned long long m3:3;
} asjd03jd03id03 = { 1 };

struct ASJD03JD03ID61 {
	unsigned long long   :3;
	unsigned long long   :3;
	unsigned long long m3:61;
} asjd03jd03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03JD03HS00 {
	unsigned long long   :3;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asjd03jd03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd03jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd03jd03hw00.m3);
	printf("\n");

	printf("%d\n" , asjd03jd03iw03.m3);
	printf("\n");

	printf("%d\n" , asjd03jd03iw29.m3);
	printf("\n");

	printf("%llu\n", asjd03jd03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jd03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jd03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
