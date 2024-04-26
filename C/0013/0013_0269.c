#include <stdio.h>                                              

struct ASJB00JB03HB00 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned char m3;
} asjb00jb03hb00 = { 1 };

struct ASJB00JB03IB03 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned char m3:3;
} asjb00jb03ib03 = { 1 };

struct ASJB00JB03IB05 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned char m3:5;
} asjb00jb03ib05 = { 1 };

struct ASJB00JB03HH00 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned short m3;
} asjb00jb03hh00 = { 1 };

struct ASJB00JB03IH03 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned short m3:3;
} asjb00jb03ih03 = { 1 };

struct ASJB00JB03IH13 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned short m3:13;
} asjb00jb03ih13 = { 1 };

struct ASJB00JB03HW00 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned long m3;
} asjb00jb03hw00 = { 1 };

struct ASJB00JB03IW03 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned long m3:3;
} asjb00jb03iw03 = { 1 };

struct ASJB00JB03IW29 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned long m3:29;
} asjb00jb03iw29 = { 1 };

struct ASJB00JB03HD00 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned long long m3;
} asjb00jb03hd00 = { 1 };

struct ASJB00JB03ID03 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned long long m3:3;
} asjb00jb03id03 = { 1 };

struct ASJB00JB03ID61 {
	unsigned char   :0;
	unsigned char   :3;
	unsigned long long m3:61;
} asjb00jb03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JB03HS00 {
	unsigned char   :0;
	unsigned char   :3;
	struct TAGHB00 m3;
} asjb00jb03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb00jb03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jb03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jb03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jb03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jb03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jb03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jb03hw00.m3);
	printf("\n");

	printf("%d\n" , asjb00jb03iw03.m3);
	printf("\n");

	printf("%d\n" , asjb00jb03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jb03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jb03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jb03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jb03hs00.m3.m1);
	printf("\n");

	return 0;
}
