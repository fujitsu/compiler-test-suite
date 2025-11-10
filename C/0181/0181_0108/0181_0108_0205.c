
	
	
	
	

#include <stdio.h>                                              

struct ASIH13IW03HB00 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned char m3;
} asih13iw03hb00 = { 1, 2, 3 };

struct ASIH13IW03IB03 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned char m3:3;
} asih13iw03ib03 = { 1, 2, 3 };

struct ASIH13IW03IB05 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned char m3:5;
} asih13iw03ib05 = { 1, 2, 3 };

struct ASIH13IW03HH00 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned short m3;
} asih13iw03hh00 = { 1, 2, 3 };

struct ASIH13IW03IH03 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned short m3:3;
} asih13iw03ih03 = { 1, 2, 3 };

struct ASIH13IW03IH13 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned short m3:13;
} asih13iw03ih13 = { 1, 2, 3 };

struct ASIH13IW03HW00 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned long m3;
} asih13iw03hw00 = { 1, 2, 3 };

struct ASIH13IW03IW03 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned long m3:3;
} asih13iw03iw03 = { 1, 2, 3 };

struct ASIH13IW03IW29 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned long m3:29;
} asih13iw03iw29 = { 1, 2, 3 };

struct ASIH13IW03HD00 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned long long m3;
} asih13iw03hd00 = { 1, 2, 3 };

struct ASIH13IW03ID03 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned long long m3:3;
} asih13iw03id03 = { 1, 2, 3 };

struct ASIH13IW03ID61 {
	unsigned short m1:13;
	unsigned long m2:3;
	unsigned long long m3:61;
} asih13iw03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13IW03HS00 {
	unsigned short m1:13;
	unsigned long m2:3;
	struct TAGHB00 m3;
} asih13iw03hs00 = { 1, 2, { 3 } };

int lto_sub_206() {

	printf("%u\n"  , asih13iw03hb00.m1);
	printf("%lu\n" , asih13iw03hb00.m2);
	printf("%u\n"  , asih13iw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03ib03.m1);
	printf("%lu\n" , asih13iw03ib03.m2);
	printf("%u\n"  , asih13iw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03ib05.m1);
	printf("%lu\n" , asih13iw03ib05.m2);
	printf("%u\n"  , asih13iw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03hh00.m1);
	printf("%lu\n" , asih13iw03hh00.m2);
	printf("%u\n"  , asih13iw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03ih03.m1);
	printf("%lu\n" , asih13iw03ih03.m2);
	printf("%u\n"  , asih13iw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03ih13.m1);
	printf("%lu\n" , asih13iw03ih13.m2);
	printf("%u\n"  , asih13iw03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03hw00.m1);
	printf("%lu\n" , asih13iw03hw00.m2);
	printf("%lu\n" , asih13iw03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03iw03.m1);
	printf("%lu\n" , asih13iw03iw03.m2);
	printf("%lu\n" , asih13iw03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03iw29.m1);
	printf("%lu\n" , asih13iw03iw29.m2);
	printf("%lu\n" , asih13iw03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03hd00.m1);
	printf("%lu\n" , asih13iw03hd00.m2);
	printf("%llu\n", asih13iw03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03id03.m1);
	printf("%lu\n" , asih13iw03id03.m2);
	printf("%llu\n", (unsigned long long)asih13iw03id03.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03id61.m1);
	printf("%lu\n" , asih13iw03id61.m2);
	printf("%llu\n", (unsigned long long)asih13iw03id61.m3);
	printf("\n");

	printf("%u\n"  , asih13iw03hs00.m1);
	printf("%lu\n" , asih13iw03hs00.m2);
	printf("%u\n"  , asih13iw03hs00.m3.m1);
	printf("\n");

	return 0;
}
