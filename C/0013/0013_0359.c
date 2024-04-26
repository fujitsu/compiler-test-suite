#include <stdio.h>                                              

struct ASJD03JW29HB00 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned char m3;
} asjd03jw29hb00 = { 1 };

struct ASJD03JW29IB03 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned char m3:3;
} asjd03jw29ib03 = { 1 };

struct ASJD03JW29IB05 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned char m3:5;
} asjd03jw29ib05 = { 1 };

struct ASJD03JW29HH00 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned short m3;
} asjd03jw29hh00 = { 1 };

struct ASJD03JW29IH03 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned short m3:3;
} asjd03jw29ih03 = { 1 };

struct ASJD03JW29IH13 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned short m3:13;
} asjd03jw29ih13 = { 1 };

struct ASJD03JW29HW00 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned long m3;
} asjd03jw29hw00 = { 1 };

struct ASJD03JW29IW03 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned long m3:3;
} asjd03jw29iw03 = { 1 };

struct ASJD03JW29IW29 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned long m3:29;
} asjd03jw29iw29 = { 1 };

struct ASJD03JW29HD00 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned long long m3;
} asjd03jw29hd00 = { 1 };

struct ASJD03JW29ID03 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned long long m3:3;
} asjd03jw29id03 = { 1 };

struct ASJD03JW29ID61 {
	unsigned long long   :3;
	unsigned long   :29;
	unsigned long long m3:61;
} asjd03jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03JW29HS00 {
	unsigned long long   :3;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjd03jw29hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd03jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd03jw29hw00.m3);
	printf("\n");

	printf("%d\n" , asjd03jw29iw03.m3);
	printf("\n");

	printf("%d\n" , asjd03jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjd03jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
