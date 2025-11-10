
	
	
	
	

#include <stdio.h>                                              

struct ASID61IH13HB00 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned char m3;
} asid61ih13hb00 = { 1, 2, 3 };

struct ASID61IH13IB03 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned char m3:3;
} asid61ih13ib03 = { 1, 2, 3 };

struct ASID61IH13IB05 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned char m3:5;
} asid61ih13ib05 = { 1, 2, 3 };

struct ASID61IH13HH00 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned short m3;
} asid61ih13hh00 = { 1, 2, 3 };

struct ASID61IH13IH03 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned short m3:3;
} asid61ih13ih03 = { 1, 2, 3 };

struct ASID61IH13IH13 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned short m3:13;
} asid61ih13ih13 = { 1, 2, 3 };

struct ASID61IH13HW00 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned long m3;
} asid61ih13hw00 = { 1, 2, 3 };

struct ASID61IH13IW03 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned long m3:3;
} asid61ih13iw03 = { 1, 2, 3 };

struct ASID61IH13IW29 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned long m3:29;
} asid61ih13iw29 = { 1, 2, 3 };

struct ASID61IH13HD00 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned long long m3;
} asid61ih13hd00 = { 1, 2, 3 };

struct ASID61IH13ID03 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned long long m3:3;
} asid61ih13id03 = { 1, 2, 3 };

struct ASID61IH13ID61 {
	unsigned long long m1:61;
	unsigned short m2:13;
	unsigned long long m3:61;
} asid61ih13id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61IH13HS00 {
	unsigned long long m1:61;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asid61ih13hs00 = { 1, 2, { 3 } };

int lto_sub_165() {

	printf("%llu\n", (unsigned long long)asid61ih13hb00.m1);
	printf("%u\n"  , asid61ih13hb00.m2);
	printf("%u\n"  , asid61ih13hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13ib03.m1);
	printf("%u\n"  , asid61ih13ib03.m2);
	printf("%u\n"  , asid61ih13ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13ib05.m1);
	printf("%u\n"  , asid61ih13ib05.m2);
	printf("%u\n"  , asid61ih13ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13hh00.m1);
	printf("%u\n"  , asid61ih13hh00.m2);
	printf("%u\n"  , asid61ih13hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13ih03.m1);
	printf("%u\n"  , asid61ih13ih03.m2);
	printf("%u\n"  , asid61ih13ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13ih13.m1);
	printf("%u\n"  , asid61ih13ih13.m2);
	printf("%u\n"  , asid61ih13ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13hw00.m1);
	printf("%u\n"  , asid61ih13hw00.m2);
	printf("%lu\n" , asid61ih13hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13iw03.m1);
	printf("%u\n"  , asid61ih13iw03.m2);
	printf("%lu\n" , asid61ih13iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13iw29.m1);
	printf("%u\n"  , asid61ih13iw29.m2);
	printf("%lu\n" , asid61ih13iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13hd00.m1);
	printf("%u\n"  , asid61ih13hd00.m2);
	printf("%llu\n", asid61ih13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13id03.m1);
	printf("%u\n"  , asid61ih13id03.m2);
	printf("%llu\n", (unsigned long long)asid61ih13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13id61.m1);
	printf("%u\n"  , asid61ih13id61.m2);
	printf("%llu\n", (unsigned long long)asid61ih13id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61ih13hs00.m1);
	printf("%u\n"  , asid61ih13hs00.m2);
	printf("%u\n"  , asid61ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
