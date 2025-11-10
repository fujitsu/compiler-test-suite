
	
	
	
	

#include <stdio.h>                                              

struct ASID61ID03HB00 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned char m3;
} asid61id03hb00 = { 1, 2, 3 };

struct ASID61ID03IB03 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned char m3:3;
} asid61id03ib03 = { 1, 2, 3 };

struct ASID61ID03IB05 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned char m3:5;
} asid61id03ib05 = { 1, 2, 3 };

struct ASID61ID03HH00 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned short m3;
} asid61id03hh00 = { 1, 2, 3 };

struct ASID61ID03IH03 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned short m3:3;
} asid61id03ih03 = { 1, 2, 3 };

struct ASID61ID03IH13 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned short m3:13;
} asid61id03ih13 = { 1, 2, 3 };

struct ASID61ID03HW00 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned long m3;
} asid61id03hw00 = { 1, 2, 3 };

struct ASID61ID03IW03 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned long m3:3;
} asid61id03iw03 = { 1, 2, 3 };

struct ASID61ID03IW29 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned long m3:29;
} asid61id03iw29 = { 1, 2, 3 };

struct ASID61ID03HD00 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned long long m3;
} asid61id03hd00 = { 1, 2, 3 };

struct ASID61ID03ID03 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned long long m3:3;
} asid61id03id03 = { 1, 2, 3 };

struct ASID61ID03ID61 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	unsigned long long m3:61;
} asid61id03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61ID03HS00 {
	unsigned long long m1:61;
	unsigned long long m2:3;
	struct TAGHB00 m3;
} asid61id03hs00 = { 1, 2, { 3 } };

int lto_sub_162() {

	printf("%llu\n", (unsigned long long)asid61id03hb00.m1);
	printf("%llu\n", (unsigned long long)asid61id03hb00.m2);
	printf("%u\n"  , asid61id03hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03ib03.m1);
	printf("%llu\n", (unsigned long long)asid61id03ib03.m2);
	printf("%u\n"  , asid61id03ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03ib05.m1);
	printf("%llu\n", (unsigned long long)asid61id03ib05.m2);
	printf("%u\n"  , asid61id03ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03hh00.m1);
	printf("%llu\n", (unsigned long long)asid61id03hh00.m2);
	printf("%u\n"  , asid61id03hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03ih03.m1);
	printf("%llu\n", (unsigned long long)asid61id03ih03.m2);
	printf("%u\n"  , asid61id03ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03ih13.m1);
	printf("%llu\n", (unsigned long long)asid61id03ih13.m2);
	printf("%u\n"  , asid61id03ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03hw00.m1);
	printf("%llu\n", (unsigned long long)asid61id03hw00.m2);
	printf("%lu\n" , asid61id03hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03iw03.m1);
	printf("%llu\n", (unsigned long long)asid61id03iw03.m2);
	printf("%lu\n" , asid61id03iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03iw29.m1);
	printf("%llu\n", (unsigned long long)asid61id03iw29.m2);
	printf("%lu\n" , asid61id03iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03hd00.m1);
	printf("%llu\n", (unsigned long long)asid61id03hd00.m2);
	printf("%llu\n", asid61id03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03id03.m1);
	printf("%llu\n", (unsigned long long)asid61id03id03.m2);
	printf("%llu\n", (unsigned long long)asid61id03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03id61.m1);
	printf("%llu\n", (unsigned long long)asid61id03id61.m2);
	printf("%llu\n", (unsigned long long)asid61id03id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61id03hs00.m1);
	printf("%llu\n", (unsigned long long)asid61id03hs00.m2);
	printf("%u\n"  , asid61id03hs00.m3.m1);
	printf("\n");

	return 0;
}
