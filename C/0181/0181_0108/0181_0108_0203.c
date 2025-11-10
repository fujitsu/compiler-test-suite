
	
	
	
	

#include <stdio.h>                                              

struct ASIH13IH03HB00 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned char m3;
} asih13ih03hb00 = { 1, 2, 3 };

struct ASIH13IH03IB03 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned char m3:3;
} asih13ih03ib03 = { 1, 2, 3 };

struct ASIH13IH03IB05 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned char m3:5;
} asih13ih03ib05 = { 1, 2, 3 };

struct ASIH13IH03HH00 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned short m3;
} asih13ih03hh00 = { 1, 2, 3 };

struct ASIH13IH03IH03 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned short m3:3;
} asih13ih03ih03 = { 1, 2, 3 };

struct ASIH13IH03IH13 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned short m3:13;
} asih13ih03ih13 = { 1, 2, 3 };

struct ASIH13IH03HW00 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned long m3;
} asih13ih03hw00 = { 1, 2, 3 };

struct ASIH13IH03IW03 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned long m3:3;
} asih13ih03iw03 = { 1, 2, 3 };

struct ASIH13IH03IW29 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned long m3:29;
} asih13ih03iw29 = { 1, 2, 3 };

struct ASIH13IH03HD00 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned long long m3;
} asih13ih03hd00 = { 1, 2, 3 };

struct ASIH13IH03ID03 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned long long m3:3;
} asih13ih03id03 = { 1, 2, 3 };

struct ASIH13IH03ID61 {
	unsigned short m1:13;
	unsigned short m2:3;
	unsigned long long m3:61;
} asih13ih03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13IH03HS00 {
	unsigned short m1:13;
	unsigned short m2:3;
	struct TAGHB00 m3;
} asih13ih03hs00 = { 1, 2, { 3 } };

int lto_sub_204() {

	printf("%u\n"  , asih13ih03hb00.m1);
	printf("%u\n"  , asih13ih03hb00.m2);
	printf("%u\n"  , asih13ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03ib03.m1);
	printf("%u\n"  , asih13ih03ib03.m2);
	printf("%u\n"  , asih13ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03ib05.m1);
	printf("%u\n"  , asih13ih03ib05.m2);
	printf("%u\n"  , asih13ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03hh00.m1);
	printf("%u\n"  , asih13ih03hh00.m2);
	printf("%u\n"  , asih13ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03ih03.m1);
	printf("%u\n"  , asih13ih03ih03.m2);
	printf("%u\n"  , asih13ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03ih13.m1);
	printf("%u\n"  , asih13ih03ih13.m2);
	printf("%u\n"  , asih13ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03hw00.m1);
	printf("%u\n"  , asih13ih03hw00.m2);
	printf("%lu\n" , asih13ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03iw03.m1);
	printf("%u\n"  , asih13ih03iw03.m2);
	printf("%lu\n" , asih13ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03iw29.m1);
	printf("%u\n"  , asih13ih03iw29.m2);
	printf("%lu\n" , asih13ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03hd00.m1);
	printf("%u\n"  , asih13ih03hd00.m2);
	printf("%llu\n", asih13ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03id03.m1);
	printf("%u\n"  , asih13ih03id03.m2);
	printf("%llu\n", (unsigned long long)asih13ih03id03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03id61.m1);
	printf("%u\n"  , asih13ih03id61.m2);
	printf("%llu\n", (unsigned long long)asih13ih03id61.m3);
	printf("\n");

	printf("%u\n"  , asih13ih03hs00.m1);
	printf("%u\n"  , asih13ih03hs00.m2);
	printf("%u\n"  , asih13ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
