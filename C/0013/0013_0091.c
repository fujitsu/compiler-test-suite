#include <stdio.h>                                              

struct ASHW00JD00HB00 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned char m3;
} ashw00jd00hb00 = { 1, 2 };

struct ASHW00JD00IB03 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned char m3:3;
} ashw00jd00ib03 = { 1, 2 };

struct ASHW00JD00IB05 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned char m3:5;
} ashw00jd00ib05 = { 1, 2 };

struct ASHW00JD00HH00 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned short m3;
} ashw00jd00hh00 = { 1, 2 };

struct ASHW00JD00IH03 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned short m3:3;
} ashw00jd00ih03 = { 1, 2 };

struct ASHW00JD00IH13 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned short m3:13;
} ashw00jd00ih13 = { 1, 2 };

struct ASHW00JD00HW00 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned long m3;
} ashw00jd00hw00 = { 1, 2 };

struct ASHW00JD00IW03 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned long m3:3;
} ashw00jd00iw03 = { 1, 2 };

struct ASHW00JD00IW29 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned long m3:29;
} ashw00jd00iw29 = { 1, 2 };

struct ASHW00JD00HD00 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned long long m3;
} ashw00jd00hd00 = { 1, 2 };

struct ASHW00JD00ID03 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned long long m3:3;
} ashw00jd00id03 = { 1, 2 };

struct ASHW00JD00ID61 {
	unsigned long m1;
	unsigned long long   :0;
	unsigned long long m3:61;
} ashw00jd00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00JD00HS00 {
	unsigned long m1;
	unsigned long long   :0;
	struct TAGHB00 m3;
} ashw00jd00hs00 = { 1, { 2 } };

int main() {

	printf("%lu\n" , ashw00jd00hb00.m1);
	printf("%u\n"  , ashw00jd00hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00ib03.m1);
	printf("%u\n"  , ashw00jd00ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00ib05.m1);
	printf("%u\n"  , ashw00jd00ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00hh00.m1);
	printf("%u\n"  , ashw00jd00hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00ih03.m1);
	printf("%u\n"  , ashw00jd00ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00ih13.m1);
	printf("%u\n"  , ashw00jd00ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00hw00.m1);
	printf("%lu\n" , ashw00jd00hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00iw03.m1);
	printf("%d\n" , ashw00jd00iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00iw29.m1);
	printf("%d\n" , ashw00jd00iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00hd00.m1);
	printf("%llu\n", ashw00jd00hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00id03.m1);
	printf("%llu\n", (unsigned long long)ashw00jd00id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00id61.m1);
	printf("%llu\n", (unsigned long long)ashw00jd00id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd00hs00.m1);
	printf("%u\n"  , ashw00jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
