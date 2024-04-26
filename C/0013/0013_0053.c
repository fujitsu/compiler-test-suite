#include <stdio.h>                                              

struct ASHH00JD61HB00 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned char m3;
} ashh00jd61hb00 = { 1, 2 };

struct ASHH00JD61IB03 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned char m3:3;
} ashh00jd61ib03 = { 1, 2 };

struct ASHH00JD61IB05 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned char m3:5;
} ashh00jd61ib05 = { 1, 2 };

struct ASHH00JD61HH00 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned short m3;
} ashh00jd61hh00 = { 1, 2 };

struct ASHH00JD61IH03 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned short m3:3;
} ashh00jd61ih03 = { 1, 2 };

struct ASHH00JD61IH13 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned short m3:13;
} ashh00jd61ih13 = { 1, 2 };

struct ASHH00JD61HW00 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned long m3;
} ashh00jd61hw00 = { 1, 2 };

struct ASHH00JD61IW03 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned long m3:3;
} ashh00jd61iw03 = { 1, 2 };

struct ASHH00JD61IW29 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned long m3:29;
} ashh00jd61iw29 = { 1, 2 };

struct ASHH00JD61HD00 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned long long m3;
} ashh00jd61hd00 = { 1, 2 };

struct ASHH00JD61ID03 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned long long m3:3;
} ashh00jd61id03 = { 1, 2 };

struct ASHH00JD61ID61 {
	unsigned short m1;
	unsigned long long   :61;
	unsigned long long m3:61;
} ashh00jd61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00JD61HS00 {
	unsigned short m1;
	unsigned long long   :61;
	struct TAGHB00 m3;
} ashh00jd61hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , ashh00jd61hb00.m1);
	printf("%u\n"  , ashh00jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61ib03.m1);
	printf("%u\n"  , ashh00jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61ib05.m1);
	printf("%u\n"  , ashh00jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61hh00.m1);
	printf("%u\n"  , ashh00jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61ih03.m1);
	printf("%u\n"  , ashh00jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61ih13.m1);
	printf("%u\n"  , ashh00jd61ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61hw00.m1);
	printf("%lu\n" , ashh00jd61hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61iw03.m1);
	printf("%d\n" , ashh00jd61iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61iw29.m1);
	printf("%d\n" , ashh00jd61iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61hd00.m1);
	printf("%llu\n", ashh00jd61hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61id03.m1);
	printf("%llu\n", (unsigned long long)ashh00jd61id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61id61.m1);
	printf("%llu\n", (unsigned long long)ashh00jd61id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd61hs00.m1);
	printf("%u\n"  , ashh00jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
