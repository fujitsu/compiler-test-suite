#include <stdio.h>                                              

struct ASJH13ID61HB00 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned char m3;
} asjh13id61hb00 = { 1, 2 };

struct ASJH13ID61IB03 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned char m3:3;
} asjh13id61ib03 = { 1, 2 };

struct ASJH13ID61IB05 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned char m3:5;
} asjh13id61ib05 = { 1, 2 };

struct ASJH13ID61HH00 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned short m3;
} asjh13id61hh00 = { 1, 2 };

struct ASJH13ID61IH03 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned short m3:3;
} asjh13id61ih03 = { 1, 2 };

struct ASJH13ID61IH13 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned short m3:13;
} asjh13id61ih13 = { 1, 2 };

struct ASJH13ID61HW00 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned long m3;
} asjh13id61hw00 = { 1, 2 };

struct ASJH13ID61IW03 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned long m3:3;
} asjh13id61iw03 = { 1, 2 };

struct ASJH13ID61IW29 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned long m3:29;
} asjh13id61iw29 = { 1, 2 };

struct ASJH13ID61HD00 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned long long m3;
} asjh13id61hd00 = { 1, 2 };

struct ASJH13ID61ID03 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned long long m3:3;
} asjh13id61id03 = { 1, 2 };

struct ASJH13ID61ID61 {
	unsigned short   :13;
	unsigned long long m2:61;
	unsigned long long m3:61;
} asjh13id61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13ID61HS00 {
	unsigned short   :13;
	unsigned long long m2:61;
	struct TAGHB00 m3;
} asjh13id61hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asjh13id61hb00.m2);
	printf("%u\n"  , asjh13id61hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61ib03.m2);
	printf("%u\n"  , asjh13id61ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61ib05.m2);
	printf("%u\n"  , asjh13id61ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61hh00.m2);
	printf("%u\n"  , asjh13id61hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61ih03.m2);
	printf("%u\n"  , asjh13id61ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61ih13.m2);
	printf("%u\n"  , asjh13id61ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61hw00.m2);
	printf("%lu\n" , asjh13id61hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61iw03.m2);
	printf("%d\n" , asjh13id61iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61iw29.m2);
	printf("%d\n" , asjh13id61iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61hd00.m2);
	printf("%llu\n", asjh13id61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61id03.m2);
	printf("%llu\n", (unsigned long long)asjh13id61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61id61.m2);
	printf("%llu\n", (unsigned long long)asjh13id61id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13id61hs00.m2);
	printf("%u\n"  , asjh13id61hs00.m3.m1);
	printf("\n");

	return 0;
}
