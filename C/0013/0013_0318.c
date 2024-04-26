#include <stdio.h>                                              

struct ASJB05JW03HB00 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned char m3;
} asjb05jw03hb00 = { 1 };

struct ASJB05JW03IB03 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned char m3:3;
} asjb05jw03ib03 = { 1 };

struct ASJB05JW03IB05 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned char m3:5;
} asjb05jw03ib05 = { 1 };

struct ASJB05JW03HH00 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned short m3;
} asjb05jw03hh00 = { 1 };

struct ASJB05JW03IH03 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned short m3:3;
} asjb05jw03ih03 = { 1 };

struct ASJB05JW03IH13 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned short m3:13;
} asjb05jw03ih13 = { 1 };

struct ASJB05JW03HW00 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned long m3;
} asjb05jw03hw00 = { 1 };

struct ASJB05JW03IW03 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned long m3:3;
} asjb05jw03iw03 = { 1 };

struct ASJB05JW03IW29 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned long m3:29;
} asjb05jw03iw29 = { 1 };

struct ASJB05JW03HD00 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned long long m3;
} asjb05jw03hd00 = { 1 };

struct ASJB05JW03ID03 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned long long m3:3;
} asjb05jw03id03 = { 1 };

struct ASJB05JW03ID61 {
	unsigned char   :5;
	unsigned long   :3;
	unsigned long long m3:61;
} asjb05jw03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JW03HS00 {
	unsigned char   :5;
	unsigned long   :3;
	struct TAGHB00 m3;
} asjb05jw03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb05jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jw03hw00.m3);
	printf("\n");

	printf("%d\n" , asjb05jw03iw03.m3);
	printf("\n");

	printf("%d\n" , asjb05jw03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
