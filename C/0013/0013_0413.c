#include <stdio.h>                                              

struct ASJH03JD61HB00 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned char m3;
} asjh03jd61hb00 = { 1 };

struct ASJH03JD61IB03 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned char m3:3;
} asjh03jd61ib03 = { 1 };

struct ASJH03JD61IB05 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned char m3:5;
} asjh03jd61ib05 = { 1 };

struct ASJH03JD61HH00 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned short m3;
} asjh03jd61hh00 = { 1 };

struct ASJH03JD61IH03 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned short m3:3;
} asjh03jd61ih03 = { 1 };

struct ASJH03JD61IH13 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned short m3:13;
} asjh03jd61ih13 = { 1 };

struct ASJH03JD61HW00 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned long m3;
} asjh03jd61hw00 = { 1 };

struct ASJH03JD61IW03 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned long m3:3;
} asjh03jd61iw03 = { 1 };

struct ASJH03JD61IW29 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned long m3:29;
} asjh03jd61iw29 = { 1 };

struct ASJH03JD61HD00 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned long long m3;
} asjh03jd61hd00 = { 1 };

struct ASJH03JD61ID03 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned long long m3:3;
} asjh03jd61id03 = { 1 };

struct ASJH03JD61ID61 {
	unsigned short   :3;
	unsigned long long   :61;
	unsigned long long m3:61;
} asjh03jd61id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03JD61HS00 {
	unsigned short   :3;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asjh03jd61hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh03jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh03jd61hw00.m3);
	printf("\n");

	printf("%d\n" , asjh03jd61iw03.m3);
	printf("\n");

	printf("%d\n" , asjh03jd61iw29.m3);
	printf("\n");

	printf("%llu\n", asjh03jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jd61id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
