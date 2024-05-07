#include <stdio.h>                                              

struct ASHW00JD03HB00 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned char m3;
} ashw00jd03hb00 = { 1, 2 };

struct ASHW00JD03IB03 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned char m3:3;
} ashw00jd03ib03 = { 1, 2 };

struct ASHW00JD03IB05 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned char m3:5;
} ashw00jd03ib05 = { 1, 2 };

struct ASHW00JD03HH00 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned short m3;
} ashw00jd03hh00 = { 1, 2 };

struct ASHW00JD03IH03 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned short m3:3;
} ashw00jd03ih03 = { 1, 2 };

struct ASHW00JD03IH13 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned short m3:13;
} ashw00jd03ih13 = { 1, 2 };

struct ASHW00JD03HW00 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned long m3;
} ashw00jd03hw00 = { 1, 2 };

struct ASHW00JD03IW03 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned long m3:3;
} ashw00jd03iw03 = { 1, 2 };

struct ASHW00JD03IW29 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned long m3:29;
} ashw00jd03iw29 = { 1, 2 };

struct ASHW00JD03HD00 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned long long m3;
} ashw00jd03hd00 = { 1, 2 };

struct ASHW00JD03ID03 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned long long m3:3;
} ashw00jd03id03 = { 1, 2 };

struct ASHW00JD03ID61 {
	unsigned long m1;
	unsigned long long   :3;
	unsigned long long m3:61;
} ashw00jd03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHW00JD03HS00 {
	unsigned long m1;
	unsigned long long   :3;
	struct TAGHB00 m3;
} ashw00jd03hs00 = { 1, { 2 } };

int main() {

	printf("%lu\n" , ashw00jd03hb00.m1);
	printf("%u\n"  , ashw00jd03hb00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03ib03.m1);
	printf("%u\n"  , ashw00jd03ib03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03ib05.m1);
	printf("%u\n"  , ashw00jd03ib05.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03hh00.m1);
	printf("%u\n"  , ashw00jd03hh00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03ih03.m1);
	printf("%u\n"  , ashw00jd03ih03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03ih13.m1);
	printf("%u\n"  , ashw00jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03hw00.m1);
	printf("%lu\n" , ashw00jd03hw00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03iw03.m1);
	printf("%d\n" , ashw00jd03iw03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03iw29.m1);
	printf("%d\n" , ashw00jd03iw29.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03hd00.m1);
	printf("%llu\n", ashw00jd03hd00.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03id03.m1);
	printf("%llu\n", (unsigned long long)ashw00jd03id03.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03id61.m1);
	printf("%llu\n", (unsigned long long)ashw00jd03id61.m3);
	printf("\n");

	printf("%lu\n" , ashw00jd03hs00.m1);
	printf("%u\n"  , ashw00jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
