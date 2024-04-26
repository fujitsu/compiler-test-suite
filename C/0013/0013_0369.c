#include <stdio.h>                                              

struct ASJD61JB03HB00 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned char m3;
} asjd61jb03hb00 = { 1 };

struct ASJD61JB03IB03 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned char m3:3;
} asjd61jb03ib03 = { 1 };

struct ASJD61JB03IB05 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned char m3:5;
} asjd61jb03ib05 = { 1 };

struct ASJD61JB03HH00 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned short m3;
} asjd61jb03hh00 = { 1 };

struct ASJD61JB03IH03 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned short m3:3;
} asjd61jb03ih03 = { 1 };

struct ASJD61JB03IH13 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned short m3:13;
} asjd61jb03ih13 = { 1 };

struct ASJD61JB03HW00 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned long m3;
} asjd61jb03hw00 = { 1 };

struct ASJD61JB03IW03 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned long m3:3;
} asjd61jb03iw03 = { 1 };

struct ASJD61JB03IW29 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned long m3:29;
} asjd61jb03iw29 = { 1 };

struct ASJD61JB03HD00 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned long long m3;
} asjd61jb03hd00 = { 1 };

struct ASJD61JB03ID03 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned long long m3:3;
} asjd61jb03id03 = { 1 };

struct ASJD61JB03ID61 {
	unsigned long long   :61;
	unsigned char   :3;
	unsigned long long m3:61;
} asjd61jb03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD61JB03HS00 {
	unsigned long long   :61;
	unsigned char   :3;
	struct TAGHB00 m3;
} asjd61jb03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjd61jb03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjd61jb03hw00.m3);
	printf("\n");

	printf("%d\n" , asjd61jb03iw03.m3);
	printf("\n");

	printf("%d\n" , asjd61jb03iw29.m3);
	printf("\n");

	printf("%llu\n", asjd61jb03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jb03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjd61jb03id61.m3);
	printf("\n");

	printf("%u\n"  , asjd61jb03hs00.m3.m1);
	printf("\n");

	return 0;
}
