#include <stdio.h>                                              

struct ASJD03JH03HB00 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned char m3;
} asjd03jh03hb00 = { 1 };

struct ASJD03JH03IB03 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned char m3:3;
} asjd03jh03ib03 = { 1 };

struct ASJD03JH03IB05 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned char m3:5;
} asjd03jh03ib05 = { 1 };

struct ASJD03JH03HH00 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned short m3;
} asjd03jh03hh00 = { 1 };

struct ASJD03JH03IH03 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned short m3:3;
} asjd03jh03ih03 = { 1 };

struct ASJD03JH03IH13 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned short m3:13;
} asjd03jh03ih13 = { 1 };

struct ASJD03JH03HW00 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned long m3;
} asjd03jh03hw00 = { 1 };

struct ASJD03JH03IW03 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned long m3:3;
} asjd03jh03iw03 = { 1 };

struct ASJD03JH03IW29 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned long m3:29;
} asjd03jh03iw29 = { 1 };

struct ASJD03JH03HD00 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned long long m3;
} asjd03jh03hd00 = { 1 };

struct ASJD03JH03ID03 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned long long m3:3;
} asjd03jh03id03 = { 1 };

struct ASJD03JH03ID61 {
	unsigned long long   :3;
	unsigned short   :3;
	unsigned long long m3:61;
} asjd03jh03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03JH03HS00 {
	unsigned long long   :3;
	unsigned short   :3;
	struct TAGHB00 m3;
} asjd03jh03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd03jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd03jh03hw00.m3);
	printf("\n");

	printf("%d\n" , asjd03jh03iw03.m3);
	printf("\n");

	printf("%d\n" , asjd03jh03iw29.m3);
	printf("\n");

	printf("%llu\n", asjd03jh03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jh03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd03jh03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
