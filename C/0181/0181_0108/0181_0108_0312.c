
	
	
	
	

#include <stdio.h>                                              

struct ASJB05JD61HB00 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned char m3;
} asjb05jd61hb00 = { 1 };

struct ASJB05JD61IB03 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned char m3:3;
} asjb05jd61ib03 = { 1 };

struct ASJB05JD61IB05 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned char m3:5;
} asjb05jd61ib05 = { 1 };

struct ASJB05JD61HH00 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned short m3;
} asjb05jd61hh00 = { 1 };

struct ASJB05JD61IH03 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned short m3:3;
} asjb05jd61ih03 = { 1 };

struct ASJB05JD61IH13 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned short m3:13;
} asjb05jd61ih13 = { 1 };

struct ASJB05JD61HW00 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned long m3;
} asjb05jd61hw00 = { 1 };

struct ASJB05JD61IW03 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned long m3:3;
} asjb05jd61iw03 = { 1 };

struct ASJB05JD61IW29 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned long m3:29;
} asjb05jd61iw29 = { 1 };

struct ASJB05JD61HD00 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned long long m3;
} asjb05jd61hd00 = { 1 };

struct ASJB05JD61ID03 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjb05jd61id03 = { 1 };

struct ASJB05JD61ID61 {
	unsigned char   :5;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjb05jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JD61HS00 {
	unsigned char   :5;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjb05jd61hs00 = { { 1 } };

int lto_sub_313() {

	printf("%u\n"  , asjb05jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb05jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
