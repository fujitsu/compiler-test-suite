
	
	
	
	

#include <stdio.h>                                              

struct ASJW03JD61HB00 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned char m3;
} asjw03jd61hb00 = { 1 };

struct ASJW03JD61IB03 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned char m3:3;
} asjw03jd61ib03 = { 1 };

struct ASJW03JD61IB05 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned char m3:5;
} asjw03jd61ib05 = { 1 };

struct ASJW03JD61HH00 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned short m3;
} asjw03jd61hh00 = { 1 };

struct ASJW03JD61IH03 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned short m3:3;
} asjw03jd61ih03 = { 1 };

struct ASJW03JD61IH13 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned short m3:13;
} asjw03jd61ih13 = { 1 };

struct ASJW03JD61HW00 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned long m3;
} asjw03jd61hw00 = { 1 };

struct ASJW03JD61IW03 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned long m3:3;
} asjw03jd61iw03 = { 1 };

struct ASJW03JD61IW29 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned long m3:29;
} asjw03jd61iw29 = { 1 };

struct ASJW03JD61HD00 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned long long m3;
} asjw03jd61hd00 = { 1 };

struct ASJW03JD61ID03 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjw03jd61id03 = { 1 };

struct ASJW03JD61ID61 {
	unsigned long   :3;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjw03jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW03JD61HS00 {
	unsigned long   :3;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjw03jd61hs00 = { { 1 } };

int lto_sub_473() {

	printf("%u\n"  , asjw03jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw03jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw03jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw03jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjw03jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
