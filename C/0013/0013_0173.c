#include <stdio.h>                                              

struct ASID61JD61HB00 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned char m3;
} asid61jd61hb00 = { 1, 2 };

struct ASID61JD61IB03 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned char m3:3;
} asid61jd61ib03 = { 1, 2 };

struct ASID61JD61IB05 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned char m3:5;
} asid61jd61ib05 = { 1, 2 };

struct ASID61JD61HH00 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned short m3;
} asid61jd61hh00 = { 1, 2 };

struct ASID61JD61IH03 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned short m3:3;
} asid61jd61ih03 = { 1, 2 };

struct ASID61JD61IH13 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned short m3:13;
} asid61jd61ih13 = { 1, 2 };

struct ASID61JD61HW00 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned long m3;
} asid61jd61hw00 = { 1, 2 };

struct ASID61JD61IW03 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned long m3:3;
} asid61jd61iw03 = { 1, 2 };

struct ASID61JD61IW29 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned long m3:29;
} asid61jd61iw29 = { 1, 2 };

struct ASID61JD61HD00 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned long long m3;
} asid61jd61hd00 = { 1, 2 };

struct ASID61JD61ID03 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned long long m3:3;
} asid61jd61id03 = { 1, 2 };

struct ASID61JD61ID61 {
	unsigned long long m1:61;
	unsigned long long   :61;
	unsigned long long m3:61;
} asid61jd61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JD61HS00 {
	unsigned long long m1:61;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asid61jd61hs00 = { 1, { 2 } };

int main() {

	printf("%llu\n", (unsigned long long)asid61jd61hb00.m1);
	printf("%u\n"  , asid61jd61hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61ib03.m1);
	printf("%u\n"  , asid61jd61ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61ib05.m1);
	printf("%u\n"  , asid61jd61ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61hh00.m1);
	printf("%u\n"  , asid61jd61hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61ih03.m1);
	printf("%u\n"  , asid61jd61ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61ih13.m1);
	printf("%u\n"  , asid61jd61ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61hw00.m1);
	printf("%lu\n" , asid61jd61hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61iw03.m1);
	printf("%d\n" , asid61jd61iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61iw29.m1);
	printf("%d\n" , asid61jd61iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61hd00.m1);
	printf("%llu\n", asid61jd61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61id03.m1);
	printf("%llu\n", (unsigned long long)asid61jd61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61id61.m1);
	printf("%llu\n", (unsigned long long)asid61jd61id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd61hs00.m1);
	printf("%u\n"  , asid61jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
