#include <stdio.h>                                              

struct ASJB05IH03HB00 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned char m3;
} asjb05ih03hb00 = { 1, 2 };

struct ASJB05IH03IB03 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned char m3:3;
} asjb05ih03ib03 = { 1, 2 };

struct ASJB05IH03IB05 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned char m3:5;
} asjb05ih03ib05 = { 1, 2 };

struct ASJB05IH03HH00 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned short m3;
} asjb05ih03hh00 = { 1, 2 };

struct ASJB05IH03IH03 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned short m3:3;
} asjb05ih03ih03 = { 1, 2 };

struct ASJB05IH03IH13 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned short m3:13;
} asjb05ih03ih13 = { 1, 2 };

struct ASJB05IH03HW00 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned long m3;
} asjb05ih03hw00 = { 1, 2 };

struct ASJB05IH03IW03 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned long m3:3;
} asjb05ih03iw03 = { 1, 2 };

struct ASJB05IH03IW29 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned long m3:29;
} asjb05ih03iw29 = { 1, 2 };

struct ASJB05IH03HD00 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned long long m3;
} asjb05ih03hd00 = { 1, 2 };

struct ASJB05IH03ID03 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned long long m3:3;
} asjb05ih03id03 = { 1, 2 };

struct ASJB05IH03ID61 {
	unsigned char   :5;
	unsigned short m2:3;
	unsigned long long m3:61;
} asjb05ih03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05IH03HS00 {
	unsigned char   :5;
	unsigned short m2:3;
	struct TAGHB00 m3;
} asjb05ih03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjb05ih03hb00.m2);
	printf("%u\n"  , asjb05ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03ib03.m2);
	printf("%u\n"  , asjb05ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03ib05.m2);
	printf("%u\n"  , asjb05ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03hh00.m2);
	printf("%u\n"  , asjb05ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03ih03.m2);
	printf("%u\n"  , asjb05ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03ih13.m2);
	printf("%u\n"  , asjb05ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03hw00.m2);
	printf("%lu\n" , asjb05ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03iw03.m2);
	printf("%d\n" , asjb05ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03iw29.m2);
	printf("%d\n" , asjb05ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03hd00.m2);
	printf("%llu\n", asjb05ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03id03.m2);
	printf("%llu\n", (unsigned long long)asjb05ih03id03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03id61.m2);
	printf("%llu\n", (unsigned long long)asjb05ih03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05ih03hs00.m2);
	printf("%u\n"  , asjb05ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
