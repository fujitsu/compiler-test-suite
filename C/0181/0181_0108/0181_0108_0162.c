
	
	
	
	

#include <stdio.h>                                              

struct ASID61ID61HB00 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned char m3;
} asid61id61hb00 = { 1, 2, 3 };

struct ASID61ID61IB03 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned char m3:3;
} asid61id61ib03 = { 1, 2, 3 };

struct ASID61ID61IB05 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned char m3:5;
} asid61id61ib05 = { 1, 2, 3 };

struct ASID61ID61HH00 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned short m3;
} asid61id61hh00 = { 1, 2, 3 };

struct ASID61ID61IH03 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned short m3:3;
} asid61id61ih03 = { 1, 2, 3 };

struct ASID61ID61IH13 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned short m3:13;
} asid61id61ih13 = { 1, 2, 3 };

struct ASID61ID61HW00 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned long m3;
} asid61id61hw00 = { 1, 2, 3 };

struct ASID61ID61IW03 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned long m3:3;
} asid61id61iw03 = { 1, 2, 3 };

struct ASID61ID61IW29 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned long m3:29;
} asid61id61iw29 = { 1, 2, 3 };

struct ASID61ID61HD00 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned long long m3;
} asid61id61hd00 = { 1, 2, 3 };

struct ASID61ID61ID03 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned long long m3:3;
} asid61id61id03 = { 1, 2, 3 };

struct ASID61ID61ID61 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	unsigned long long m3:61;
} asid61id61id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61ID61HS00 {
	unsigned long long m1:61;
	unsigned long long m2:61;
	struct TAGHB00 m3;
} asid61id61hs00 = { 1, 2, { 3 } };

int lto_sub_163() {

	printf("%llu\n", (unsigned long long)asid61id61hb00.m1);
	printf("%llu\n", (unsigned long long)asid61id61hb00.m2);
	printf("%u\n"  , asid61id61hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61ib03.m1);
	printf("%llu\n", (unsigned long long)asid61id61ib03.m2);
	printf("%u\n"  , asid61id61ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61ib05.m1);
	printf("%llu\n", (unsigned long long)asid61id61ib05.m2);
	printf("%u\n"  , asid61id61ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61hh00.m1);
	printf("%llu\n", (unsigned long long)asid61id61hh00.m2);
	printf("%u\n"  , asid61id61hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61ih03.m1);
	printf("%llu\n", (unsigned long long)asid61id61ih03.m2);
	printf("%u\n"  , asid61id61ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61ih13.m1);
	printf("%llu\n", (unsigned long long)asid61id61ih13.m2);
	printf("%u\n"  , asid61id61ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61hw00.m1);
	printf("%llu\n", (unsigned long long)asid61id61hw00.m2);
	printf("%lu\n" , asid61id61hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61iw03.m1);
	printf("%llu\n", (unsigned long long)asid61id61iw03.m2);
	printf("%lu\n" , asid61id61iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61iw29.m1);
	printf("%llu\n", (unsigned long long)asid61id61iw29.m2);
	printf("%lu\n" , asid61id61iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61hd00.m1);
	printf("%llu\n", (unsigned long long)asid61id61hd00.m2);
	printf("%llu\n", asid61id61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61id03.m1);
	printf("%llu\n", (unsigned long long)asid61id61id03.m2);
	printf("%llu\n", (unsigned long long)asid61id61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61id61.m1);
	printf("%llu\n", (unsigned long long)asid61id61id61.m2);
	printf("%llu\n", (unsigned long long)asid61id61id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id61hs00.m1);
	printf("%llu\n", (unsigned long long)asid61id61hs00.m2);
	printf("%u\n"  , asid61id61hs00.m3.m1);
	printf("\n");

	return 0;
}
