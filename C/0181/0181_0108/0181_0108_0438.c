
	
	
	
	

#include <stdio.h>                                              

struct ASJW00JD61HB00 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned char m3;
} asjw00jd61hb00 = { 1 };

struct ASJW00JD61IB03 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned char m3:3;
} asjw00jd61ib03 = { 1 };

struct ASJW00JD61IB05 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned char m3:5;
} asjw00jd61ib05 = { 1 };

struct ASJW00JD61HH00 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned short m3;
} asjw00jd61hh00 = { 1 };

struct ASJW00JD61IH03 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned short m3:3;
} asjw00jd61ih03 = { 1 };

struct ASJW00JD61IH13 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned short m3:13;
} asjw00jd61ih13 = { 1 };

struct ASJW00JD61HW00 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned long m3;
} asjw00jd61hw00 = { 1 };

struct ASJW00JD61IW03 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned long m3:3;
} asjw00jd61iw03 = { 1 };

struct ASJW00JD61IW29 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned long m3:29;
} asjw00jd61iw29 = { 1 };

struct ASJW00JD61HD00 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned long long m3;
} asjw00jd61hd00 = { 1 };

struct ASJW00JD61ID03 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjw00jd61id03 = { 1 };

struct ASJW00JD61ID61 {
	unsigned long   :0;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjw00jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW00JD61HS00 {
	unsigned long   :0;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjw00jd61hs00 = { { 1 } };

int lto_sub_453() {

	printf("%u\n"  , asjw00jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw00jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw00jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw00jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw00jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw00jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw00jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjw00jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw00jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjw00jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
