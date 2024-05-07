#include <stdio.h>                                              

struct ASJB00JD03HB00 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned char m3;
} asjb00jd03hb00 = { 1 };

struct ASJB00JD03IB03 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned char m3:3;
} asjb00jd03ib03 = { 1 };

struct ASJB00JD03IB05 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned char m3:5;
} asjb00jd03ib05 = { 1 };

struct ASJB00JD03HH00 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned short m3;
} asjb00jd03hh00 = { 1 };

struct ASJB00JD03IH03 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned short m3:3;
} asjb00jd03ih03 = { 1 };

struct ASJB00JD03IH13 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned short m3:13;
} asjb00jd03ih13 = { 1 };

struct ASJB00JD03HW00 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned long m3;
} asjb00jd03hw00 = { 1 };

struct ASJB00JD03IW03 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned long m3:3;
} asjb00jd03iw03 = { 1 };

struct ASJB00JD03IW29 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned long m3:29;
} asjb00jd03iw29 = { 1 };

struct ASJB00JD03HD00 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned long long m3;
} asjb00jd03hd00 = { 1 };

struct ASJB00JD03ID03 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned long long m3:3;
} asjb00jd03id03 = { 1 };

struct ASJB00JD03ID61 {
	unsigned char   :0;
	unsigned long long   :3;
	unsigned long long m3:61;
} asjb00jd03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00JD03HS00 {
	unsigned char   :0;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asjb00jd03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjb00jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb00jd03hw00.m3);
	printf("\n");

	printf("%d\n" , asjb00jd03iw03.m3);
	printf("\n");

	printf("%d\n" , asjb00jd03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb00jd03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jd03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb00jd03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
