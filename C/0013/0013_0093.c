#include <stdio.h>                                              

struct ASHW00JD61HB00 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned char m3;
} ashw00jd61hb00 = { 1, 2 };

struct ASHW00JD61IB03 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned char m3:3;
} ashw00jd61ib03 = { 1, 2 };

struct ASHW00JD61IB05 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned char m3:5;
} ashw00jd61ib05 = { 1, 2 };

struct ASHW00JD61HH00 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned short m3;
} ashw00jd61hh00 = { 1, 2 };

struct ASHW00JD61IH03 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned short m3:3;
} ashw00jd61ih03 = { 1, 2 };

struct ASHW00JD61IH13 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned short m3:13;
} ashw00jd61ih13 = { 1, 2 };

struct ASHW00JD61HW00 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned long m3;
} ashw00jd61hw00 = { 1, 2 };

struct ASHW00JD61IW03 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned long m3:3;
} ashw00jd61iw03 = { 1, 2 };

struct ASHW00JD61IW29 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned long m3:29;
} ashw00jd61iw29 = { 1, 2 };

struct ASHW00JD61HD00 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned long long m3;
} ashw00jd61hd00 = { 1, 2 };

struct ASHW00JD61ID03 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned long long m3:3;
} ashw00jd61id03 = { 1, 2 };

struct ASHW00JD61ID61 {
	unsigned long m1;
	unsigned long long   :61;
	unsigned long long m3:61;
} ashw00jd61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00JD61HS00 {
	unsigned long m1;
	unsigned long long   :61;
	struct TAGHB00 m3;
} ashw00jd61hs00 = { 1, { 2 } };

int main() {

	printf("%lu\n" , ashw00jd61hb00.m1);
	printf("%u\n"  , ashw00jd61hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61ib03.m1);
	printf("%u\n"  , ashw00jd61ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61ib05.m1);
	printf("%u\n"  , ashw00jd61ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61hh00.m1);
	printf("%u\n"  , ashw00jd61hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61ih03.m1);
	printf("%u\n"  , ashw00jd61ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61ih13.m1);
	printf("%u\n"  , ashw00jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61hw00.m1);
	printf("%lu\n" , ashw00jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61iw03.m1);
	printf("%d\n" , ashw00jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61iw29.m1);
	printf("%d\n" , ashw00jd61iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61hd00.m1);
	printf("%llu\n", ashw00jd61hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61id03.m1);
	printf("%llu\n", (unsigned long long)ashw00jd61id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61id61.m1);
	printf("%llu\n", (unsigned long long)ashw00jd61id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd61hs00.m1);
	printf("%u\n"  , ashw00jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
