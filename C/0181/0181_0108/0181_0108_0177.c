
	
	
	
	

#include <stdio.h>                                              

struct ASID61JW03HB00 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned char m3;
} asid61jw03hb00 = { 1, 2 };

struct ASID61JW03IB03 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned char m3:3;
} asid61jw03ib03 = { 1, 2 };

struct ASID61JW03IB05 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned char m3:5;
} asid61jw03ib05 = { 1, 2 };

struct ASID61JW03HH00 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned short m3;
} asid61jw03hh00 = { 1, 2 };

struct ASID61JW03IH03 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned short m3:3;
} asid61jw03ih03 = { 1, 2 };

struct ASID61JW03IH13 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned short m3:13;
} asid61jw03ih13 = { 1, 2 };

struct ASID61JW03HW00 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned long m3;
} asid61jw03hw00 = { 1, 2 };

struct ASID61JW03IW03 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned long m3:3;
} asid61jw03iw03 = { 1, 2 };

struct ASID61JW03IW29 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned long m3:29;
} asid61jw03iw29 = { 1, 2 };

struct ASID61JW03HD00 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned long long m3;
} asid61jw03hd00 = { 1, 2 };

struct ASID61JW03ID03 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned long long m3:3;
} asid61jw03id03 = { 1, 2 };

struct ASID61JW03ID61 {
	unsigned long long m1:61;
	unsigned long   :3;
	unsigned long long m3:61;
} asid61jw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JW03HS00 {
	unsigned long long m1:61;
	unsigned long   :3;
	struct TAGHB00 m3;
} asid61jw03hs00 = { 1, { 2 } };

int lto_sub_178() {

	printf("%llu\n", (unsigned long long)asid61jw03hb00.m1);
	printf("%u\n"  , asid61jw03hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03ib03.m1);
	printf("%u\n"  , asid61jw03ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03ib05.m1);
	printf("%u\n"  , asid61jw03ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03hh00.m1);
	printf("%u\n"  , asid61jw03hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03ih03.m1);
	printf("%u\n"  , asid61jw03ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03ih13.m1);
	printf("%u\n"  , asid61jw03ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03hw00.m1);
	printf("%lu\n" , asid61jw03hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03iw03.m1);
	printf("%lu\n" , asid61jw03iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03iw29.m1);
	printf("%lu\n" , asid61jw03iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03hd00.m1);
	printf("%llu\n", asid61jw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03id03.m1);
	printf("%llu\n", (unsigned long long)asid61jw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03id61.m1);
	printf("%llu\n", (unsigned long long)asid61jw03id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw03hs00.m1);
	printf("%u\n"  , asid61jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
