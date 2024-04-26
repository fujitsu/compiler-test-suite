#include <stdio.h>                                              

struct ASJH03JB03HB00 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned char m3;
} asjh03jb03hb00 = { 1 };

struct ASJH03JB03IB03 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned char m3:3;
} asjh03jb03ib03 = { 1 };

struct ASJH03JB03IB05 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned char m3:5;
} asjh03jb03ib05 = { 1 };

struct ASJH03JB03HH00 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned short m3;
} asjh03jb03hh00 = { 1 };

struct ASJH03JB03IH03 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned short m3:3;
} asjh03jb03ih03 = { 1 };

struct ASJH03JB03IH13 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned short m3:13;
} asjh03jb03ih13 = { 1 };

struct ASJH03JB03HW00 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned long m3;
} asjh03jb03hw00 = { 1 };

struct ASJH03JB03IW03 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned long m3:3;
} asjh03jb03iw03 = { 1 };

struct ASJH03JB03IW29 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned long m3:29;
} asjh03jb03iw29 = { 1 };

struct ASJH03JB03HD00 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned long long m3;
} asjh03jb03hd00 = { 1 };

struct ASJH03JB03ID03 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned long long m3:3;
} asjh03jb03id03 = { 1 };

struct ASJH03JB03ID61 {
	unsigned short   :3;
	unsigned char   :3;
	unsigned long long m3:61;
} asjh03jb03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03JB03HS00 {
	unsigned short   :3;
	unsigned char   :3;
	struct TAGHB00 m3;
} asjh03jb03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh03jb03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jb03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jb03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03jb03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jb03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jb03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh03jb03hw00.m3);
	printf("\n");

	printf("%d\n" , asjh03jb03iw03.m3);
	printf("\n");

	printf("%d\n" , asjh03jb03iw29.m3);
	printf("\n");

	printf("%llu\n", asjh03jb03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jb03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jb03id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03jb03hs00.m3.m1);
	printf("\n");

	return 0;
}
