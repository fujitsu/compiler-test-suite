#include <stdio.h>                                              

struct ASHH00JD03HB00 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned char m3;
} ashh00jd03hb00 = { 1, 2 };

struct ASHH00JD03IB03 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned char m3:3;
} ashh00jd03ib03 = { 1, 2 };

struct ASHH00JD03IB05 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned char m3:5;
} ashh00jd03ib05 = { 1, 2 };

struct ASHH00JD03HH00 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned short m3;
} ashh00jd03hh00 = { 1, 2 };

struct ASHH00JD03IH03 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned short m3:3;
} ashh00jd03ih03 = { 1, 2 };

struct ASHH00JD03IH13 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned short m3:13;
} ashh00jd03ih13 = { 1, 2 };

struct ASHH00JD03HW00 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned long m3;
} ashh00jd03hw00 = { 1, 2 };

struct ASHH00JD03IW03 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned long m3:3;
} ashh00jd03iw03 = { 1, 2 };

struct ASHH00JD03IW29 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned long m3:29;
} ashh00jd03iw29 = { 1, 2 };

struct ASHH00JD03HD00 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned long long m3;
} ashh00jd03hd00 = { 1, 2 };

struct ASHH00JD03ID03 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned long long m3:3;
} ashh00jd03id03 = { 1, 2 };

struct ASHH00JD03ID61 {
	unsigned short m1;
	unsigned long long   :3;
	unsigned long long m3:61;
} ashh00jd03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASHH00JD03HS00 {
	unsigned short m1;
	unsigned long long   :3;
	struct TAGHB00 m3;
} ashh00jd03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , ashh00jd03hb00.m1);
	printf("%u\n"  , ashh00jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03ib03.m1);
	printf("%u\n"  , ashh00jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03ib05.m1);
	printf("%u\n"  , ashh00jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03hh00.m1);
	printf("%u\n"  , ashh00jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03ih03.m1);
	printf("%u\n"  , ashh00jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03ih13.m1);
	printf("%u\n"  , ashh00jd03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03hw00.m1);
	printf("%lu\n" , ashh00jd03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03iw03.m1);
	printf("%d\n" , ashh00jd03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03iw29.m1);
	printf("%d\n" , ashh00jd03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03hd00.m1);
	printf("%llu\n", ashh00jd03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03id03.m1);
	printf("%llu\n", (unsigned long long)ashh00jd03id03.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03id61.m1);
	printf("%llu\n", (unsigned long long)ashh00jd03id61.m3);
	printf("\n");

	printf("%u\n"  , ashh00jd03hs00.m1);
	printf("%u\n"  , ashh00jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
