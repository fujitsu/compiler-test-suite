
	
	
	
	

#include <stdio.h>                                              

struct ASID61JW29HB00 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned char m3;
} asid61jw29hb00 = { 1, 2 };

struct ASID61JW29IB03 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned char m3:3;
} asid61jw29ib03 = { 1, 2 };

struct ASID61JW29IB05 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned char m3:5;
} asid61jw29ib05 = { 1, 2 };

struct ASID61JW29HH00 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned short m3;
} asid61jw29hh00 = { 1, 2 };

struct ASID61JW29IH03 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned short m3:3;
} asid61jw29ih03 = { 1, 2 };

struct ASID61JW29IH13 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned short m3:13;
} asid61jw29ih13 = { 1, 2 };

struct ASID61JW29HW00 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned long m3;
} asid61jw29hw00 = { 1, 2 };

struct ASID61JW29IW03 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned long m3:3;
} asid61jw29iw03 = { 1, 2 };

struct ASID61JW29IW29 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned long m3:29;
} asid61jw29iw29 = { 1, 2 };

struct ASID61JW29HD00 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned long long m3;
} asid61jw29hd00 = { 1, 2 };

struct ASID61JW29ID03 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned long long m3:3;
} asid61jw29id03 = { 1, 2 };

struct ASID61JW29ID61 {
	unsigned long long m1:61;
	unsigned long   :29;
	unsigned long long m3:61;
} asid61jw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JW29HS00 {
	unsigned long long m1:61;
	unsigned long   :29;
	struct TAGHB00 m3;
} asid61jw29hs00 = { 1, { 2 } };

int lto_sub_179() {

	printf("%llu\n", (unsigned long long)asid61jw29hb00.m1);
	printf("%u\n"  , asid61jw29hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29ib03.m1);
	printf("%u\n"  , asid61jw29ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29ib05.m1);
	printf("%u\n"  , asid61jw29ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29hh00.m1);
	printf("%u\n"  , asid61jw29hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29ih03.m1);
	printf("%u\n"  , asid61jw29ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29ih13.m1);
	printf("%u\n"  , asid61jw29ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29hw00.m1);
	printf("%lu\n" , asid61jw29hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29iw03.m1);
	printf("%lu\n" , asid61jw29iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29iw29.m1);
	printf("%lu\n" , asid61jw29iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29hd00.m1);
	printf("%llu\n", asid61jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29id03.m1);
	printf("%llu\n", (unsigned long long)asid61jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29id61.m1);
	printf("%llu\n", (unsigned long long)asid61jw29id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jw29hs00.m1);
	printf("%u\n"  , asid61jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
