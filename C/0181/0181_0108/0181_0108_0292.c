
	
	
	
	

#include <stdio.h>                                              

struct ASJB03JD61HB00 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned char m3;
} asjb03jd61hb00 = { 1 };

struct ASJB03JD61IB03 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned char m3:3;
} asjb03jd61ib03 = { 1 };

struct ASJB03JD61IB05 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned char m3:5;
} asjb03jd61ib05 = { 1 };

struct ASJB03JD61HH00 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned short m3;
} asjb03jd61hh00 = { 1 };

struct ASJB03JD61IH03 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned short m3:3;
} asjb03jd61ih03 = { 1 };

struct ASJB03JD61IH13 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned short m3:13;
} asjb03jd61ih13 = { 1 };

struct ASJB03JD61HW00 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned long m3;
} asjb03jd61hw00 = { 1 };

struct ASJB03JD61IW03 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned long m3:3;
} asjb03jd61iw03 = { 1 };

struct ASJB03JD61IW29 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned long m3:29;
} asjb03jd61iw29 = { 1 };

struct ASJB03JD61HD00 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned long long m3;
} asjb03jd61hd00 = { 1 };

struct ASJB03JD61ID03 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjb03jd61id03 = { 1 };

struct ASJB03JD61ID61 {
	unsigned char   :3;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjb03jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB03JD61HS00 {
	unsigned char   :3;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjb03jd61hs00 = { { 1 } };

int lto_sub_293() {

	printf("%u\n"  , asjb03jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb03jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb03jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb03jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjb03jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb03jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjb03jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
