#include <stdio.h>                                              

struct ASID03JD61HB00 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned char m3;
} asid03jd61hb00 = { 1, 2 };

struct ASID03JD61IB03 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned char m3:3;
} asid03jd61ib03 = { 1, 2 };

struct ASID03JD61IB05 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned char m3:5;
} asid03jd61ib05 = { 1, 2 };

struct ASID03JD61HH00 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned short m3;
} asid03jd61hh00 = { 1, 2 };

struct ASID03JD61IH03 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned short m3:3;
} asid03jd61ih03 = { 1, 2 };

struct ASID03JD61IH13 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned short m3:13;
} asid03jd61ih13 = { 1, 2 };

struct ASID03JD61HW00 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned long m3;
} asid03jd61hw00 = { 1, 2 };

struct ASID03JD61IW03 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned long m3:3;
} asid03jd61iw03 = { 1, 2 };

struct ASID03JD61IW29 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned long m3:29;
} asid03jd61iw29 = { 1, 2 };

struct ASID03JD61HD00 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned long long m3;
} asid03jd61hd00 = { 1, 2 };

struct ASID03JD61ID03 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned long long m3:3;
} asid03jd61id03 = { 1, 2 };

struct ASID03JD61ID61 {
	unsigned long long m1:3;
	unsigned long long   :61;
	unsigned long long m3:61;
} asid03jd61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID03JD61HS00 {
	unsigned long long m1:3;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asid03jd61hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asid03jd61hb00.m1);
	printf("%u\n"  , asid03jd61hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61ib03.m1);
	printf("%u\n"  , asid03jd61ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61ib05.m1);
	printf("%u\n"  , asid03jd61ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61hh00.m1);
	printf("%u\n"  , asid03jd61hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61ih03.m1);
	printf("%u\n"  , asid03jd61ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61ih13.m1);
	printf("%u\n"  , asid03jd61ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61hw00.m1);
	printf("%lu\n" , asid03jd61hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61iw03.m1);
	printf("%d\n" , asid03jd61iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61iw29.m1);
	printf("%d\n" , asid03jd61iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61hd00.m1);
	printf("%llu\n", asid03jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61id03.m1);
	printf("%llu\n", (unsigned long long)asid03jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61id61.m1);
	printf("%llu\n", (unsigned long long)asid03jd61id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03jd61hs00.m1);
	printf("%u\n"  , asid03jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
