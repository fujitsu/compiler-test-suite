#include <stdio.h>                                              

struct ASJH00JD03HB00 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned char m3;
} asjh00jd03hb00 = { 1 };

struct ASJH00JD03IB03 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned char m3:3;
} asjh00jd03ib03 = { 1 };

struct ASJH00JD03IB05 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned char m3:5;
} asjh00jd03ib05 = { 1 };

struct ASJH00JD03HH00 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned short m3;
} asjh00jd03hh00 = { 1 };

struct ASJH00JD03IH03 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned short m3:3;
} asjh00jd03ih03 = { 1 };

struct ASJH00JD03IH13 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned short m3:13;
} asjh00jd03ih13 = { 1 };

struct ASJH00JD03HW00 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned long m3;
} asjh00jd03hw00 = { 1 };

struct ASJH00JD03IW03 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned long m3:3;
} asjh00jd03iw03 = { 1 };

struct ASJH00JD03IW29 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned long m3:29;
} asjh00jd03iw29 = { 1 };

struct ASJH00JD03HD00 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned long long m3;
} asjh00jd03hd00 = { 1 };

struct ASJH00JD03ID03 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned long long m3:3;
} asjh00jd03id03 = { 1 };

struct ASJH00JD03ID61 {
	unsigned short   :0;
	unsigned long long   :3;
	unsigned long long m3:61;
} asjh00jd03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH00JD03HS00 {
	unsigned short   :0;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asjh00jd03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh00jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh00jd03hw00.m3);
	printf("\n");

	printf("%d\n" , asjh00jd03iw03.m3);
	printf("\n");

	printf("%d\n" , asjh00jd03iw29.m3);
	printf("\n");

	printf("%llu\n", asjh00jd03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jd03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jd03id61.m3);
	printf("\n");

	printf("%u\n"  , asjh00jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
