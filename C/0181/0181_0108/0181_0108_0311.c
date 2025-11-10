
	
	
	
	

#include <stdio.h>                                              

struct ASJB05JD03HB00 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned char m3;
} asjb05jd03hb00 = { 1 };

struct ASJB05JD03IB03 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned char m3:3;
} asjb05jd03ib03 = { 1 };

struct ASJB05JD03IB05 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned char m3:5;
} asjb05jd03ib05 = { 1 };

struct ASJB05JD03HH00 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned short m3;
} asjb05jd03hh00 = { 1 };

struct ASJB05JD03IH03 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned short m3:3;
} asjb05jd03ih03 = { 1 };

struct ASJB05JD03IH13 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned short m3:13;
} asjb05jd03ih13 = { 1 };

struct ASJB05JD03HW00 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned long m3;
} asjb05jd03hw00 = { 1 };

struct ASJB05JD03IW03 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned long m3:3;
} asjb05jd03iw03 = { 1 };

struct ASJB05JD03IW29 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned long m3:29;
} asjb05jd03iw29 = { 1 };

struct ASJB05JD03HD00 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned long long m3;
} asjb05jd03hd00 = { 1 };

struct ASJB05JD03ID03 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned long long m3:3;
} asjb05jd03id03 = { 1 };

struct ASJB05JD03ID61 {
	unsigned char   :5;
	unsigned long long   :3;
	unsigned long long m3:61;
} asjb05jd03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JD03HS00 {
	unsigned char   :5;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asjb05jd03hs00 = { { 1 } };

int lto_sub_312() {

	printf("%u\n"  , asjb05jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jd03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jd03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jd03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
