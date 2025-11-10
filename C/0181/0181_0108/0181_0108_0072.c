                                                            
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JD61HB00 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned char m3;
} ashs00jd61hb00 = { { 1 }, 2 };

struct ASHS00JD61IB03 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned char m3:3;
} ashs00jd61ib03 = { { 1 }, 2 };

struct ASHS00JD61IB05 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned char m3:5;
} ashs00jd61ib05 = { { 1 }, 2 };

struct ASHS00JD61HH00 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned short m3;
} ashs00jd61hh00 = { { 1 }, 2 };

struct ASHS00JD61IH03 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned short m3:3;
} ashs00jd61ih03 = { { 1 }, 2 };

struct ASHS00JD61IH13 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned short m3:13;
} ashs00jd61ih13 = { { 1 }, 2 };

struct ASHS00JD61HW00 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned long m3;
} ashs00jd61hw00 = { { 1 }, 2 };

struct ASHS00JD61IW03 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned long m3:3;
} ashs00jd61iw03 = { { 1 }, 2 };

struct ASHS00JD61IW29 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned long m3:29;
} ashs00jd61iw29 = { { 1 }, 2 };

struct ASHS00JD61HD00 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned long long m3;
} ashs00jd61hd00 = { { 1 }, 2 };

struct ASHS00JD61ID03 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned long long m3:3;
} ashs00jd61id03 = { { 1 }, 2 };

struct ASHS00JD61ID61 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	unsigned long long m3:61;
} ashs00jd61id61 = { { 1 }, 2 };

struct ASHS00JD61HS00 {
	struct TAGHB00 m1;
	unsigned long long   :61;
	struct TAGHB00 m3;
} ashs00jd61hs00 = { { 1 }, { 2 } };

int lto_sub_73() {

	printf("%u\n"  , ashs00jd61hb00.m1.m1);
	printf("%u\n"  , ashs00jd61hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61ib03.m1.m1);
	printf("%u\n"  , ashs00jd61ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61ib05.m1.m1);
	printf("%u\n"  , ashs00jd61ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61hh00.m1.m1);
	printf("%u\n"  , ashs00jd61hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61ih03.m1.m1);
	printf("%u\n"  , ashs00jd61ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61ih13.m1.m1);
	printf("%u\n"  , ashs00jd61ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61hw00.m1.m1);
	printf("%lu\n" , ashs00jd61hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61iw03.m1.m1);
	printf("%lu\n" , ashs00jd61iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61iw29.m1.m1);
	printf("%lu\n" , ashs00jd61iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61hd00.m1.m1);
	printf("%llu\n", ashs00jd61hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jd61id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jd61id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd61hs00.m1.m1);
	printf("%u\n"  , ashs00jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
